package com.action.user;

import com.dao.UserDao;
import com.entity.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ChangePasswordAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String fpassword;
	private String npassword;
	private String rpassword;

	public String getFpassword() {
		return fpassword;
	}

	public void setFpassword(String fpassword) {
		this.fpassword = fpassword;
	}

	public String getNpassword() {
		return npassword;
	}

	public void setNpassword(String npassword) {
		this.npassword = npassword;
	}

	public String getRpassword() {
		return rpassword;
	}

	public void setRpassword(String rpassword) {
		this.rpassword = rpassword;
	}

	public String execute() {
		if (fpassword.equals("")) {
			addActionError("请输入原密码！");
			return INPUT;
		}
		if (npassword.equals("")) {
			addActionError("请输入新密码！");
			return INPUT;
		}

		if (rpassword.equals(npassword)) {
			User user = (User) ActionContext.getContext().getSession()
					.get("user");
			UserDao userDao = new UserDao();
			User use = userDao.findUserById(user);
			if (use != null) {
				if (use.getUserPassword().equals(fpassword)) {
					use.setUserPassword(npassword);
					if (userDao.updateUser(use)) {
						return SUCCESS;
					}
				} else {
					addActionError("密码错误！");
					return INPUT;
				}
			}
		}
		addActionError("两次密码不一致！");
		return INPUT;
	}
}