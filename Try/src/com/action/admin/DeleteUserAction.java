package com.action.admin;

import com.dao.UserDao;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteUserAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String userId;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String execute() {
		UserDao uDao = new UserDao();
		if (uDao.deleteUser(Integer.parseInt(userId))) {
			return SUCCESS;
		}
		return ERROR;
	}
}