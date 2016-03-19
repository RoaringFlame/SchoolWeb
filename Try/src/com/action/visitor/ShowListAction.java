package com.action.visitor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dao.NewsDao;
import com.entity.News;
import com.opensymphony.xwork2.ActionSupport;

public class ShowListAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String column;
	private int pageNumber;
	private int totalPage;
	private int maxNumber;
	private List<News> newsList;

	private NewsDao nd = new NewsDao();

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

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getMaxNumber() {
		return maxNumber;
	}

	public void setMaxNumber(int maxNumber) {
		this.maxNumber = maxNumber;
	}

	public List<News> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}

	public String execute() {
		int column = Integer.parseInt(this.column);
		newsList = nd.getColumnList(column, pageNumber, maxNumber);
		return SUCCESS;
	}

	public String searchList() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		if ((session.getAttribute("searchStr")) != null) {
			String str = (String) session.getAttribute("searchStr");
			newsList = nd.getSearchList(str, pageNumber, maxNumber);
			return SUCCESS;
		}
		return ERROR;
	}
}