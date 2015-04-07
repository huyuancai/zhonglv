package com.luoyang.zhonglv.vo;

/**
 * 签证国家VO
 * Descriptions
 *
 * @version 2015-3-25
 * @author YuancaiHu
 * @since JDK1.7
 *
 */
public class VisaCountryVO {

	private long countryId;

	private String countryName;

	// ------------------------getter/setter------------------------//
	public long getCountryId() {
		return countryId;
	}

	public void setCountryId( long countryId ) {
		this.countryId = countryId;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName( String countryName ) {
		this.countryName = countryName;
	}

}
