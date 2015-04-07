package com.luoyang.zhonglv.vo;

import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;

/**
 * 返回结果VO
 * Descriptions
 *
 * @version 2015-3-25
 * @author YuancaiHu
 * @since JDK1.7
 *
 */
public class RetResultVO {
	private String code;
	private String errMsg;
	private String captcha;

	public RetResultVO() {
		code = RET_CODE.S90000.getCode();
	}
	
	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}
	
	public String getCaptcha() {
		return captcha;
	}

	public void setCaptcha( String captcha ) {
		this.captcha = captcha;
	}
}
