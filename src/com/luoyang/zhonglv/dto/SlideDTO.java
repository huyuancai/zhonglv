package com.luoyang.zhonglv.dto;

public class SlideDTO {
	private Long slideId;
	private String slideHref;
	private String slideImgPath;
	private String slideName;

	public Long getSlideId() {
		return slideId;
	}

	public void setSlideId( Long slideId ) {
		this.slideId = slideId;
	}

	public String getSlideHref() {
		return slideHref;
	}

	public void setSlideHref( String slideHref ) {
		this.slideHref = slideHref;
	}

	public String getSlideImgPath() {
		return slideImgPath;
	}

	public void setSlideImgPath( String slideImgPath ) {
		this.slideImgPath = slideImgPath;
	}

	public String getSlideName() {
		return slideName;
	}

	public void setSlideName( String slideName ) {
		this.slideName = slideName;
	}

}
