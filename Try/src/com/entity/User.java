package com.entity;

import java.sql.Timestamp;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields
	private static final long serialVersionUID = 1L;
	
	private Integer userId;
	private String userName;
	private String realName;
	private String userPassword;
	private Timestamp loginDate;
	private Integer loginCount;
	private Boolean permissionSign;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String userName, String realName, String userPassword,
			Integer loginCount, Boolean permissionSign) {
		this.userName = userName;
		this.realName = realName;
		this.userPassword = userPassword;
		this.loginCount = loginCount;
		this.permissionSign = permissionSign;
	}

	/** full constructor */
	public User(String userName, String realName, String userPassword,
			Timestamp loginDate, Integer loginCount, Boolean permissionSign) {
		this.userName = userName;
		this.realName = realName;
		this.userPassword = userPassword;
		this.loginDate = loginDate;
		this.loginCount = loginCount;
		this.permissionSign = permissionSign;
	}

	// Property accessors

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getRealName() {
		return this.realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public Timestamp getLoginDate() {
		return this.loginDate;
	}

	public void setLoginDate(Timestamp loginDate) {
		this.loginDate = loginDate;
	}

	public Integer getLoginCount() {
		return this.loginCount;
	}

	public void setLoginCount(Integer loginCount) {
		this.loginCount = loginCount;
	}

	public Boolean getPermissionSign() {
		return this.permissionSign;
	}

	public void setPermissionSign(Boolean permissionSign) {
		this.permissionSign = permissionSign;
	}

}