package com.action.user;

import com.opensymphony.xwork2.ActionSupport;

public class UpdateNewsAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	private String newsId;
	private String title;
	private String uploader;
	private String content;

	
	public String getNewsId() {
		return newsId;
	}

	public void setNewsId(String newsId) {
		this.newsId = newsId;
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
		//请求上传，日期，操作改变
		return SUCCESS;
	}
}