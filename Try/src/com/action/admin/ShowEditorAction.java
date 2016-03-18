package com.action.admin;

import com.opensymphony.xwork2.ActionSupport;

public class ShowEditorAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private String column;

	public String getColumn() {
		return column;
	}

	public void setColumn(String column) {
		this.column = column;
	}

	public String execute() {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
}