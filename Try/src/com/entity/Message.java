package com.entity;

import java.sql.Timestamp;

/**
 * Message entity. @author MyEclipse Persistence Tools
 */

public class Message implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer messId;
	private String messTitle;
	private String visName;
	private String visTel;
	private String visEmail;
	private String messContent;
	private Timestamp messDate;

	// Constructors

	/** default constructor */
	public Message() {
	}

	/** minimal constructor */
	public Message(String messTitle, String visName, String messContent) {
		this.messTitle = messTitle;
		this.visName = visName;
		this.messContent = messContent;
	}

	/** full constructor */
	public Message(String messTitle, String visName, String visTel,
			String visEmail, String messContent, Timestamp messDate) {
		this.messTitle = messTitle;
		this.visName = visName;
		this.visTel = visTel;
		this.visEmail = visEmail;
		this.messContent = messContent;
		this.messDate = messDate;
	}

	// Property accessors

	public Integer getMessId() {
		return this.messId;
	}

	public void setMessId(Integer messId) {
		this.messId = messId;
	}

	public String getMessTitle() {
		return this.messTitle;
	}

	public void setMessTitle(String messTitle) {
		this.messTitle = messTitle;
	}

	public String getVisName() {
		return this.visName;
	}

	public void setVisName(String visName) {
		this.visName = visName;
	}

	public String getVisTel() {
		return this.visTel;
	}

	public void setVisTel(String visTel) {
		this.visTel = visTel;
	}

	public String getVisEmail() {
		return this.visEmail;
	}

	public void setVisEmail(String visEmail) {
		this.visEmail = visEmail;
	}

	public String getMessContent() {
		return this.messContent;
	}

	public void setMessContent(String messContent) {
		this.messContent = messContent;
	}

	public Timestamp getMessDate() {
		return this.messDate;
	}

	public void setMessDate(Timestamp messDate) {
		this.messDate = messDate;
	}

}