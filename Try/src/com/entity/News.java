package com.entity;

import java.sql.Timestamp;

/**
 * News entity. @author MyEclipse Persistence Tools
 */

public class News implements java.io.Serializable {

	// Fields
	private static final long serialVersionUID = 1L;
	
	private Integer newsId;
	private Integer newsColumn;
	private String newsTitle;
	private String newsUploader;
	private String lastOperation;
	private Timestamp uploadDate;
	private Integer readCount;

	// Constructors

	/** default constructor */
	public News() {
	}

	/** minimal constructor */
	public News(Integer newsColumn, String newsTitle, String newsUploader) {
		this.newsColumn = newsColumn;
		this.newsTitle = newsTitle;
		this.newsUploader = newsUploader;
	}

	/** full constructor */
	public News(Integer newsColumn, String newsTitle, String newsUploader,
			String lastOperation, Timestamp uploadDate, Integer readCount) {
		this.newsColumn = newsColumn;
		this.newsTitle = newsTitle;
		this.newsUploader = newsUploader;
		this.lastOperation = lastOperation;
		this.uploadDate = uploadDate;
		this.readCount = readCount;
	}

	// Property accessors

	public Integer getNewsId() {
		return this.newsId;
	}

	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}

	public Integer getNewsColumn() {
		return this.newsColumn;
	}

	public void setNewsColumn(Integer newsColumn) {
		this.newsColumn = newsColumn;
	}

	public String getNewsTitle() {
		return this.newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public String getNewsUploader() {
		return this.newsUploader;
	}

	public void setNewsUploader(String newsUploader) {
		this.newsUploader = newsUploader;
	}

	public String getLastOperation() {
		return this.lastOperation;
	}

	public void setLastOperation(String lastOperation) {
		this.lastOperation = lastOperation;
	}

	public Timestamp getUploadDate() {
		return this.uploadDate;
	}

	public void setUploadDate(Timestamp uploadDate) {
		this.uploadDate = uploadDate;
	}

	public Integer getReadCount() {
		return this.readCount;
	}

	public void setReadCount(Integer readCount) {
		this.readCount = readCount;
	}

}