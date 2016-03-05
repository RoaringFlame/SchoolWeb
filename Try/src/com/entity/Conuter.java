package com.entity;

/**
 * Conuter entity. @author MyEclipse Persistence Tools
 */

public class Conuter implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer countId;
	private Integer todayCount;
	private Integer yesterdayCount;
	private Integer allCount;
	private Integer cilckCount;

	// Constructors

	/** default constructor */
	public Conuter() {
	}

	/** full constructor */
	public Conuter(Integer todayCount, Integer yesterdayCount,
			Integer allCount, Integer cilckCount) {
		this.todayCount = todayCount;
		this.yesterdayCount = yesterdayCount;
		this.allCount = allCount;
		this.cilckCount = cilckCount;
	}

	// Property accessors

	public Integer getCountId() {
		return this.countId;
	}

	public void setCountId(Integer countId) {
		this.countId = countId;
	}

	public Integer getTodayCount() {
		return this.todayCount;
	}

	public void setTodayCount(Integer todayCount) {
		this.todayCount = todayCount;
	}

	public Integer getYesterdayCount() {
		return this.yesterdayCount;
	}

	public void setYesterdayCount(Integer yesterdayCount) {
		this.yesterdayCount = yesterdayCount;
	}

	public Integer getAllCount() {
		return this.allCount;
	}

	public void setAllCount(Integer allCount) {
		this.allCount = allCount;
	}

	public Integer getCilckCount() {
		return this.cilckCount;
	}

	public void setCilckCount(Integer cilckCount) {
		this.cilckCount = cilckCount;
	}

}