package com.action.user;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.NewsDao;
import com.dao.NewsDetailDao;
import com.entity.News;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Description: <br/>
 * Copyright(C),2016-2017,Heng.Chen <br/>
 * GitHub:https://github.com/RoaringFlame <br/>
 * Date:2016年3月23日
 * 
 * @author Heng.Chen chenheng120@126.com
 * @version 1.0
 */
public class DeleteNewsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private static final Integer filecolumn = 15;

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
		News news = nDao.getNewsById(nId);

		// 如果新闻存在才继续
		if (news != null) {

			// 如果是下载专区文件进入删除上传文件逻辑
			if (news.getNewsColumn() == filecolumn) {
				// 删除服务器文件
				String relativePath = "/upload";
				deleteUpfile(news, relativePath);
				// 删除数据库数据
				if (nDao.deleteNewsById(nId))
					return SUCCESS;
				return ERROR;
			}

			//否则为其他栏目文件
			// 如有对应文件则删除文件
			if (news.getFileName() != null) {
				String relativePath = "/editor/attached";
				deleteUpfile(news, relativePath);
			}

			// 删除数据
			NewsDetailDao ndDao = new NewsDetailDao();
			if (nDao.deleteNewsById(nId) && ndDao.deleteNewsDetailById(nId)) {

				// 刷新application中对应的list
				HttpServletRequest request = ServletActionContext.getRequest();
				ServletContext application = request.getServletContext();
				String listname = "list" + column;
				Integer column = Integer.parseInt(this.column);
				List<News> newslist = nDao.getColumnList(column, 1, 7);
				application.setAttribute(listname, newslist);

				return SUCCESS;
			}

		}
		return ERROR;
	}

	// 删除数据库已上传文件
	private void deleteUpfile(News news, String relativePath) {
		String absolutePath = ServletActionContext.getServletContext()
				.getRealPath(relativePath) + "/" + news.getFileName();
		File file = new File(absolutePath);
		if (file.exists()) {
			file.delete();
		}
	}

}