package com.action.user;

import com.opensymphony.xwork2.ActionSupport;

public class ShowInEditorAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String column;
	private String content;
	
	public String getColumn() {
		return column;
	}

	public void setColumn(String column) {
		this.column = column;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String execute() {
		// TODO Auto-generated method stub
		return SUCCESS;
	}
}