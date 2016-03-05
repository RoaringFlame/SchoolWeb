package com.entity;

import java.util.Date;

/**
 * News entity. @author MyEclipse Persistence Tools
 */

public class News implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer newsId;
	private String newsTitle;
	private Integer newsColumn;
	private Integer lastOperation;
	private String newsUploader;
	private Date uploadDate;
	private Integer readCount;
	private String newsLocation;

	// Constructors

	/** default constructor */
	public News() {
	}

	/** minimal constructor */
	public News(String newsTitle, Integer newsColumn) {
		this.newsTitle = newsTitle;
		this.newsColumn = newsColumn;
	}

	/** full constructor */
	public News(String newsTitle, Integer newsColumn, Integer lastOperation,
			String newsUploader, Date uploadDate, Integer readCount,
			String newsLocation) {
		this.newsTitle = newsTitle;
		this.newsColumn = newsColumn;
		this.lastOperation = lastOperation;
		this.newsUploader = newsUploader;
		this.uploadDate = uploadDate;
		this.readCount = readCount;
		this.newsLocation = newsLocation;
	}

	// Property accessors

	public Integer getNewsId() {
		return this.newsId;
	}

	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}

	public String getNewsTitle() {
		return this.newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public Integer getNewsColumn() {
		return this.newsColumn;
	}

	public void setNewsColumn(Integer newsColumn) {
		this.newsColumn = newsColumn;
	}

	public Integer getLastOperation() {
		return this.lastOperation;
	}

	public void setLastOperation(Integer lastOperation) {
		this.lastOperation = lastOperation;
	}

	public String getNewsUploader() {
		return this.newsUploader;
	}

	public void setNewsUploader(String newsUploader) {
		this.newsUploader = newsUploader;
	}

	public Date getUploadDate() {
		return this.uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public Integer getReadCount() {
		return this.readCount;
	}

	public void setReadCount(Integer readCount) {
		this.readCount = readCount;
	}

	public String getNewsLocation() {
		return this.newsLocation;
	}

	public void setNewsLocation(String newsLocation) {
		this.newsLocation = newsLocation;
	}

}