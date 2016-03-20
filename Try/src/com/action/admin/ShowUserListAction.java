package com.action.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dao.UserDao;
import com.entity.User;
import com.opensymphony.xwork2.ActionSupport;

public class ShowUserListAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();

	public String execute() {
		UserDao uDao = new UserDao();
		List<User> userlist = uDao.getUerList();
		session.setAttribute("userlist", userlist);
		Integer usercount = userlist.size();
		session.setAttribute("usercount", usercount);
		return SUCCESS;
	}
}