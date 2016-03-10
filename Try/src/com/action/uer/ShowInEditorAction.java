package com.action.uer;

import com.opensymphony.xwork2.ActionSupport;

public class ShowInEditorAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String column;
	private String view;
	private String content;
	
	public String getColumn() {
		return column;
	}

	public void setColumn(String column) {
		this.column = column;
	}

	public String getView() {
		return view;
	}

	public void setView(String view) {
		this.view = view;
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