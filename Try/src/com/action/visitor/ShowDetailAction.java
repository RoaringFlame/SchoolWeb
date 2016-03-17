package com.action.visitor;

import com.dao.NewsDetailDao;
import com.entity.NewsDetail;
import com.opensymphony.xwork2.ActionSupport;

public class ShowDetailAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String newsId;
	private NewsDetail newsDetail;

	public String getNewsId() {
		return newsId;
	}

	public void setNewsId(String newsId) {
		this.newsId = newsId;
	}

	public NewsDetail getNewsDetail() {
		return newsDetail;
	}

	public void setNewsDetail(NewsDetail newsDetail) {
		this.newsDetail = newsDetail;
	}

	public String execute() {
		NewsDetailDao nDao = new NewsDetailDao();
		if ((newsDetail = nDao.getNewsDetialById(Integer.parseInt(newsId))) != null) {
			//请求阅读，点击量自增
			return SUCCESS;
		}
		return ERROR;
	}
}