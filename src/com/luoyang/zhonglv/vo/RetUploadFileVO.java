package com.luoyang.zhonglv.vo;

/**
 * 图片上传VO
 * Descriptions
 *
 * @version 2015-3-25
 * @author YuancaiHu
 * @since JDK1.7
 *
 */
public class RetUploadFileVO extends RetResultVO {
	private String uploadImagePath;//图片上传成功后的路径

	public String getUploadImagePath() {
		return uploadImagePath;
	}

	public void setUploadImagePath( String uploadImagePath ) {
		this.uploadImagePath = uploadImagePath;
	}
	
	public String getCode() {
		return super.getCode();
	}
	
	public String getErrMsg() {
		return super.getErrMsg();
	}
}
