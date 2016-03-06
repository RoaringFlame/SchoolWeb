package com.entity;

/**
 * NewsDetail entity. @author MyEclipse Persistence Tools
 */

public class NewsDetail implements java.io.Serializable {

	// Fields

	private Integer newsId;
	private Integer newsColumn;
	private String newsContents;

	// Constructors

	/** default constructor */
	public NewsDetail() {
	}

	/** minimal constructor */
	public NewsDetail(Integer newsColumn) {
		this.newsColumn = newsColumn;
	}

	/** full constructor */
	public NewsDetail(Integer newsColumn, String newsContents) {
		this.newsColumn = newsColumn;
		this.newsContents = newsContents;
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

	public String getNewsContents() {
		return this.newsContents;
	}

	public void setNewsContents(String newsContents) {
		this.newsContents = newsContents;
	}

}