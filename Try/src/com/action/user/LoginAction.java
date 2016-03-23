package com.action.user;

import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.dao.UserDao;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
/**
 *Description:
 *<br/>Copyright(C),2016-2017,Heng.Chen
 *<br/>GitHub:https://github.com/RoaringFlame
 *<br/>Date:2016年3月23日
 * @author Heng.Chen chenheng120@126.com
 * @version 1.0
 */
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

	public String getIncode() {
		return incode;
	}

	public void setIncode(String incode) {
		this.incode = incode;
	}

	public String execute() {		
		if(username.equals("")){
			addActionError("请输入用户名！");
			return INPUT;
		}
		if(password.equals("")){
			addActionError("请输入密码！");
			return INPUT;
		}
		if(incode.equals("")){
			addActionError("请输入验证码！");
			return INPUT;
		}
		String ver2 = (String) session.getAttribute("rand");
		if (!incode.equals(ver2)) {
			addActionError("验证码错误！");
			return INPUT;
		}
		User use = new User();
		use.setUserName(username);
		use.setUserPassword(password);
		UserDao userDao = new UserDao();
		User user = userDao.UserLogin(use);
		if (user != null) {
			Timestamp time = user.getLoginDate();
			session.setAttribute("lastLogin", time);
			Date date = new Date();
			Timestamp timestamp = new Timestamp(date.getTime());
			user.setLoginDate(timestamp);
			int count = user.getLoginCount();
			user.setLoginCount(++count);
			UserDao uDao = new UserDao();
			uDao.updateUser(user);
			user.setUserPassword(null);
			session.setAttribute("user", user);
			session.removeAttribute("rand");
			return SUCCESS;
		} else {
			addActionError("用户名或密码错误！");
			return INPUT;
		}
	}

	public String quit() {
		if (ActionContext.getContext().getSession() != null)
			ActionContext.getContext().getSession().clear();
		return "quit";
	}
}