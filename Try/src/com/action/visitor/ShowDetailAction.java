package com.action.visitor;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.NewsDao;
import com.dao.NewsDetailDao;
import com.entity.News;
import com.entity.NewsDetail;
import com.opensymphony.xwork2.ActionSupport;

import core.web.ContextCounter;

public class ShowDetailAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	HttpServletRequest request = ServletActionContext.getRequest();
	NewsDao nDao = new NewsDao();
	NewsDetailDao ndDao = new NewsDetailDao();

	private Integer newsId;
	private News news;
	private String content;

	public Integer getNewsId() {
		return newsId;
	}

	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String execute() {
		NewsDetail newsDetail = new NewsDetail();
		if ((news = nDao.getNewsById(newsId)) != null) {
			if ((newsDetail = ndDao.getNewsDetialById(newsId)) != null) {
				content = newsDetail.getNewsContents();
				request.setAttribute("content", content);
				//文章阅读量+1
				int i = news.getReadCount();
				news.setReadCount(++i);
				nDao.updateNews(news);
				//网站点击量问量+1
				ContextCounter cc = new ContextCounter();
				cc.clickCount();
				return SUCCESS;
			}
		}
		return ERROR;
	}

	public String userScan() {
		NewsDetail newsDetail = new NewsDetail();
		if ((news = nDao.getNewsById(newsId)) != null) {
			if ((newsDetail = ndDao.getNewsDetialById(newsId)) != null) {
				content = newsDetail.getNewsContents();
				return SUCCESS;
			}
		}
		return ERROR;
	}
}