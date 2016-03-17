package com.action.user;

import com.dao.NewsDao;
import com.opensymphony.xwork2.ActionSupport;

public class PageAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private static final int V_MAX_NUMBER = 12;
	private static final int U_MAX_NUMBER = 7;
	private NewsDao nDao = new NewsDao();

	private String column;
	private int pageNumber;
	private int totalPage;
	private int maxNumber;

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

	public String execute() {
		int Amount = nDao.getNewsAmount(Integer.parseInt(column));
		this.countPage(Amount, V_MAX_NUMBER);
		this.setMaxNumber(V_MAX_NUMBER);
		return "vpallnews";
	}

	public String userAllNews() {
		int Amount = nDao.getNewsAmount(Integer.parseInt(column));
		this.countPage(Amount, U_MAX_NUMBER);
		this.setMaxNumber(U_MAX_NUMBER);
		return "upallnews";
	}

	private void countPage(int Amount, int Maxnum) {
		this.totalPage = Amount % Maxnum == 0 ? (Amount / Maxnum) : (Amount
				/ Maxnum + 1);
		if (this.pageNumber == 0) {
			this.pageNumber = 1;
		}
		if (this.pageNumber < 1) {
			this.pageNumber = 1;
		}
		if (this.pageNumber > this.totalPage) {
			this.pageNumber = this.totalPage;
		}
	}
}
