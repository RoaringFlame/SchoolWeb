package com.action.admin;

import com.dao.UserDao;
import com.opensymphony.xwork2.ActionSupport;
/**
 *Description:
 *<br/>Copyright(C),2016-2017,Heng.Chen
 *<br/>GitHub:https://github.com/RoaringFlame
 *<br/>Date:2016年3月23日
 * @author Heng.Chen chenheng120@126.com
 * @version 1.0
 */
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