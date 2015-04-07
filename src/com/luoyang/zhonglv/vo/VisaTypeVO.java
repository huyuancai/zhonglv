package com.luoyang.zhonglv.vo;

/**
 * 签证类型VO
 * Descriptions
 *
 * @version 2015-3-25
 * @author YuancaiHu
 * @since JDK1.7
 *
 */
public class VisaTypeVO {

	private long typeId;

	private String typeName;

	// ------------------------getter/setter------------------------//
	public long getTypeId() {
		return typeId;
	}

	public void setTypeId( long typeId ) {
		this.typeId = typeId;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName( String typeName ) {
		this.typeName = typeName;
	}

}
