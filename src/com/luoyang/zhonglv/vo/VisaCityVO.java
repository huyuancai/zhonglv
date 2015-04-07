package com.luoyang.zhonglv.vo;

/**
 * 签发城市VO
 * Descriptions
 *
 * @version 2015-3-25
 * @author YuancaiHu
 * @since JDK1.7
 *
 */
public class VisaCityVO {

	private long cityId;

	private String cityName;

	// ------------------------getter/setter------------------------//
	public long getCityId() {
		return cityId;
	}

	public void setCityId( long cityId ) {
		this.cityId = cityId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName( String cityName ) {
		this.cityName = cityName;
	}

}
