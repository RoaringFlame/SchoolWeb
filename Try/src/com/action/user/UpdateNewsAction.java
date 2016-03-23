package com.action.user;

//import java.sql.Timestamp;
//import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dao.NewsDao;
import com.dao.NewsDetailDao;
import com.entity.News;
import com.entity.NewsDetail;
import com.entity.User;
import com.opensymphony.xwork2.ActionSupport;
/**
 *Description:
 *<br/>Copyright(C),2016-2017,Heng.Chen
 *<br/>GitHub:https://github.com/RoaringFlame
 *<br/>Date:2016年3月23日
 * @author Heng.Chen chenheng120@126.com
 * @version 1.0
 */
public class UpdateNewsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();

	private Integer newsId;
	private int pageNumber;
	private String column;
	private String newsTitle;
	private String content;

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

	public String getColumn() {
		return column;
	}

	public void setColumn(String column) {
		this.column = column;
	}

	public String getNewsTitle() {
		return newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String execute() {
		User user = (User) session.getAttribute("user");
		if (user != null) {
			News news = new News();
			NewsDao nDao = new NewsDao();
			if ((news = nDao.getNewsById(newsId)) != null) {
				// 时间应该不用更新，否则相当于顶置
				/*
				 * Date date = new Date(); Timestamp timestamp = new
				 * Timestamp(date.getTime()); news.setUploadDate(timestamp);
				 */
				news.setLastOperation("更新");
				news.setOperator(user.getUserName());
				news.setNewsTitle(newsTitle);
				this.column = news.getNewsColumn().toString();
				if (nDao.updateNews(news)) {
					NewsDetailDao ndDao = new NewsDetailDao();
					NewsDetail newsdetail = ndDao.getNewsDetialById(newsId);
					newsdetail.setNewsContents(content);
					if (ndDao.updateNewsDetail(newsdetail)) {
						return SUCCESS;
					}
				}
			}
		}
		return ERROR;
	}
}