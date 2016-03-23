package com.action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dao.NewsDao;
import com.opensymphony.xwork2.ActionSupport;
/**
 *Description:
 *<br/>Copyright(C),2016-2017,Heng.Chen
 *<br/>GitHub:https://github.com/RoaringFlame
 *<br/>Date:2016年3月23日
 * @author Heng.Chen chenheng120@126.com
 * @version 1.0
 */
public class PageAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private static final int V_MAX_NUMBER = 10;
	private static final int I_MAX_NUMBER = 9;
	private static final int U_MAX_NUMBER = 7;
	private NewsDao nDao = new NewsDao();

	private String column;
	private String searchStr;
	private int pageNumber;
	private int totalPage;
	private int maxNumber;

	public String getColumn() {
		return column;
	}

	public void setColumn(String column) {
		this.column = column;
	}

	public String getSearchStr() {
		return searchStr;
	}

	public void setSearchStr(String searchStr) {
		this.searchStr = searchStr;
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

	public String imageNews() {
		int Amount = nDao.getNewsAmount(Integer.parseInt(column));
		this.countPage(Amount, I_MAX_NUMBER);
		this.setMaxNumber(I_MAX_NUMBER);
		return "ipallnews";
	}

	public String searchNews() {
		// 放入action中不停转码，出现各种问题，无法解决，索性放入session中
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		if (searchStr == null) {
			if ((session.getAttribute("searchStr")) != null) {
				searchStr = (String) session.getAttribute("searchStr");
			}
		}
		if (!searchStr.equals("")) {
			session.setAttribute("searchStr", searchStr);
			// 统计查询量用于分页
			int Amount = nDao.getSearchAmount(searchStr);
			this.countPage(Amount, U_MAX_NUMBER);
			this.setMaxNumber(U_MAX_NUMBER);
			return "spallnews";
		}
		return INPUT;
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
