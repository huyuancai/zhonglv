package com.luoyang.zhonglv.dto;

public class RouteImageDTO {
	private long imageId; // 图片ID
	private long routeId; // 线路ID
	private String imagePath;// 图片路径
	private String imageAlias;// 图片别名

	public long getImageId() {
		return imageId;
	}

	public void setImageId( long imageId ) {
		this.imageId = imageId;
	}

	public long getRouteId() {
		return routeId;
	}

	public void setRouteId( long routeId ) {
		this.routeId = routeId;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath( String imagePath ) {
		this.imagePath = imagePath;
	}

	public String getImageAlias() {
		return imageAlias;
	}

	public void setImageAlias( String imageAlias ) {
		this.imageAlias = imageAlias;
	}

}
