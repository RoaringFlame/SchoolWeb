package com.entity;

/**
 * Counter entity. @author MyEclipse Persistence Tools
 */

public class Counter implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer countId;
	private Integer todayCount;
	private Integer yesterdayCount;
	private Integer allCount;
	private Integer clickCount;
	private Integer dayCount;

	// Constructors

	/** default constructor */
	public Counter() {
	}

	/** full constructor */
	public Counter(Integer todayCount, Integer yesterdayCount,
			Integer allCount, Integer clickCount, Integer dayCount) {
		this.todayCount = todayCount;
		this.yesterdayCount = yesterdayCount;
		this.allCount = allCount;
		this.clickCount = clickCount;
		this.dayCount = dayCount;
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

	public Integer getClickCount() {
		return this.clickCount;
	}

	public void setClickCount(Integer clickCount) {
		this.clickCount = clickCount;
	}

	public Integer getDayCount() {
		return this.dayCount;
	}

	public void setDayCount(Integer dayCount) {
		this.dayCount = dayCount;
	}

}