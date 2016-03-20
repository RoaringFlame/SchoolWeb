package com.action.user;

import java.io.File;

import org.apache.struts2.ServletActionContext;

import com.dao.NewsDao;
import com.dao.NewsDetailDao;
import com.entity.News;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteNewsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String newsId;
	private String column;
	private int pageNumber;

	public String getNewsId() {
		return newsId;
	}

	public void setNewsId(String newsId) {
		this.newsId = newsId;
	}

	public String getColumn() {
		return column;
	}

	public void setColumn(String column) {
		this.column = column;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	// 这种方法很危险，可能第一个执行成功，第二个不成功形成脏数据
	// 可以在Dao操作中形成事务管理，以便回滚操作
	public String execute() {
		Integer nId = Integer.parseInt(newsId);
		NewsDao nDao = new NewsDao();
		NewsDetailDao ndDao = new NewsDetailDao();

		// 删除文件
		News news = nDao.getNewsById(nId);
		String relativePath = "/editor/attached";
		String absolutePath = ServletActionContext.getServletContext()
				.getRealPath(relativePath) + "/" + news.getFileName();
		File file = new File(absolutePath);
		if (file.exists()) {
			file.delete();
		}

		// 删除数据
		if (nDao.deleteNewsById(nId) && ndDao.deleteNewsDetailById(nId)) {
			return SUCCESS;
		}
		return ERROR;
	}
}