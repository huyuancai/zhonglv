package com.luoyang.zhonglv.dto;

import java.sql.Timestamp;

public class TourismNewsDTO {

	private Long newsId;

	private String newsName;

	private String newsContent;

	private Long newsCounts;

	private Timestamp newsCreateTime;

	// ------------------------getter/setter------------------------//
	public Long getNewsId() {
		return newsId;
	}

	public void setNewsId( Long newsId ) {
		this.newsId = newsId;
	}

	public String getNewsName() {
		return newsName;
	}

	public void setNewsName( String newsName ) {
		this.newsName = newsName;
	}

	public String getNewsContent() {
		return newsContent;
	}

	public void setNewsContent( String newsContent ) {
		this.newsContent = newsContent;
	}

	public Long getNewsCounts() {
		return newsCounts;
	}

	public void setNewsCounts( Long newsCounts ) {
		this.newsCounts = newsCounts;
	}

	public Timestamp getNewsCreateTime() {
		return newsCreateTime;
	}

	public void setNewsCreateTime( Timestamp newsCreateTime ) {
		this.newsCreateTime = newsCreateTime;
	}

}
