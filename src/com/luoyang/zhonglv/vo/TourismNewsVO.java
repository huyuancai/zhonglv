package com.luoyang.zhonglv.vo;

/**
 * 旅游资讯VO
 * Descriptions
 *
 * @version 2015-3-25
 * @author YuancaiHu
 * @since JDK1.7
 *
 */
public class TourismNewsVO {

	private Long newsId;

	private String newsName;

	private String newsContent;

	private Long newsCounts;

	private String newsCreateTime;

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

	public void setNewsCreateTime( String newsCreateTime ) {
		this.newsCreateTime = newsCreateTime;
	}

	public String getNewsCreateTime() {
		return newsCreateTime;
	}
}
