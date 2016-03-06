package com.action.admin;

import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String column;
	private String title;
	private String uploader;
	private String content;

	public String getColumn() {
		return column;
	}

	public void setColumn(String column) {
		this.column = column;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUploader() {
		return uploader;
	}

	public void setUploader(String uploader) {
		this.uploader = uploader;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String execute() {
		System.out.println(column+"+"+title+"+"+uploader+"\n"+content);
		return ERROR;
	}
}