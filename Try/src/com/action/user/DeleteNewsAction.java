package com.action.user;

import com.dao.NewsDao;
import com.dao.NewsDetailDao;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteNewsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String newsId;

	public String getNewsId() {
		return newsId;
	}

	public void setNewsId(String newsId) {
		this.newsId = newsId;
	}

	//这种方法很危险，可能第一个执行成功，第二个不成功形成脏数据
	//可以在Dao操作中形成事务管理，以便回滚操作
	public String execute() {
		Integer nId = Integer.parseInt(newsId);
		NewsDao nDao = new NewsDao();
		NewsDetailDao ndDao = new NewsDetailDao();
		if (nDao.deleteNewsById(nId) && ndDao.deleteNewsDetailById(nId)) {
			return SUCCESS;
		}
		return ERROR;
	}
}