package com.action.visitor;

import java.util.List;

import com.dao.NewsDao;
import com.entity.News;
import com.opensymphony.xwork2.ActionSupport;

public class ShowListAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String column;
	private int pageNumber;
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
		newsList = nd.getColumnList(Integer.parseInt(column), pageNumber,
				maxNumber);
		return SUCCESS;
	}
}