package com.action.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dao.NewsDao;
import com.entity.News;
import com.opensymphony.xwork2.ActionSupport;
/**
 *Description:
 *<br/>Copyright(C),2016-2017,Heng.Chen
 *<br/>GitHub:https://github.com/RoaringFlame
 *<br/>Date:2016年3月23日
 * @author Heng.Chen chenheng120@126.com
 * @version 1.0
 */
public class RecentNewsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private static final int U_MAX_NUMBER = 7;
	
	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();

	private List<News> newsList;

	public List<News> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}

	public String execute() {
		if (session.getAttribute("user") != null) {
			NewsDao nDao = new NewsDao();
			newsList=nDao.getRecentNews(U_MAX_NUMBER);
			return SUCCESS;
		}
		return ERROR;
	}
}