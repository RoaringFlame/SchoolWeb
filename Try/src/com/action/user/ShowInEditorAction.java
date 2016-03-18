package com.action.user;

import com.dao.NewsDao;
import com.dao.NewsDetailDao;
import com.entity.News;
import com.entity.NewsDetail;
import com.opensymphony.xwork2.ActionSupport;

public class ShowInEditorAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private NewsDao nDao = new NewsDao();
	private NewsDetailDao ndDao = new NewsDetailDao();

	private Integer newsId;
	private int pageNumber;
	private NewsDetail newsDetail;
	private News news;

	public Integer getNewsId() {
		return newsId;
	}

	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public NewsDetail getNewsDetail() {
		return newsDetail;
	}

	public void setNewsDetail(NewsDetail newsDetail) {
		this.newsDetail = newsDetail;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public String execute() {
		if((this.news=nDao.getNewsById(newsId)) != null){
			if((this.newsDetail=ndDao.getNewsDetialById(newsId))!=null){
				return SUCCESS;
			}
		}
		return ERROR;
	}
}