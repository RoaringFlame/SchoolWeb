package com.action.admin;

import java.util.List;

import com.dao.UserDao;
import com.entity.User;
import com.opensymphony.xwork2.ActionSupport;

public class ShowUserListAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private List<User> userlist;
	private Integer usercount;

	public List<User> getUserlist() {
		return userlist;
	}

	public void setUserlist(List<User> userlist) {
		this.userlist = userlist;
	}

	public Integer getUsercount() {
		return usercount;
	}

	public void setUsercount(Integer usercount) {
		this.usercount = usercount;
	}

	public String execute() {
		UserDao uDao = new UserDao();
		userlist = uDao.getUerList();
		usercount = userlist.size();
		return SUCCESS;
	}
}