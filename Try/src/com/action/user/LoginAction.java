package com.action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dao.UserDao;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String username;
	private String password;
	private String incode;

	HttpServletRequest request = ServletActionContext.getRequest();
	HttpSession session = request.getSession();

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	// 考虑是否需要验证码传入
	public String getIncode() {
		return incode;
	}

	public void setIncode(String incode) {
		this.incode = incode;
	}

	public String execute() {
		// 前台用ajax加入验证码验证
		User use = new User();
		use.setUserName(username);
		use.setUserPassword(password);
		UserDao userDao = new UserDao();
		User user = userDao.UserLogin(use);
		if (user != null) {
			// 更新登录时间、登录次数(可放入查询中)
			// 显示application中访问记录、用户记录
			user.setUserPassword(null);
			session.setAttribute("user", user);
			return SUCCESS;
		} else
			return INPUT;
	}

	public String quit() {
		if (ActionContext.getContext().getSession() != null)
			ActionContext.getContext().getSession().clear();		
		return "quit";
	}
}