package com.luoyang.zhonglv.action.admin.login;

import java.io.File;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.struts2.ServletActionContext;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.IUserService;
import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;
import com.luoyang.zhonglv.util.IdentifyUtil;
import com.luoyang.zhonglv.vo.RetResultVO;
import com.luoyang.zhonglv.vo.UserVO;

public class LoginAction extends BaseAction {

	private static final long serialVersionUID = 8004004715230048388L;
	private static final int CAPTCHA_WIDTH = 80;
	private static final int CAPTCHA_HEIGHT = 30;
	private static final String CAPTCHA_REAL_PATH = "/captcha";
	private IUserService userService;
	private UserVO userVO;
	private String verificationCode;
	private RetResultVO resultVO = new RetResultVO();

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}

	public String ajaxLogin() {
		if ( StringUtils.isEmpty( userVO.getUserName() ) ) {
			resultVO.setErrMsg( RET_CODE.E91001.getErrMsg() );
			resultVO.setCode( RET_CODE.E91001.getCode() );
			return RET_JSON;
		}
		if ( StringUtils.isEmpty( userVO.getUserPassword() ) ) {
			resultVO.setErrMsg( RET_CODE.E91002.getErrMsg() );
			resultVO.setCode( RET_CODE.E91002.getCode() );
			return RET_JSON;
		}
		if ( StringUtils.isEmpty( userVO.getVerifyCode() ) ) {
			resultVO.setErrMsg( RET_CODE.E91005.getErrMsg() );
			resultVO.setCode( RET_CODE.E91005.getCode() );
			return RET_JSON;
		}
		
		if ( !userVO.getVerifyCode().equalsIgnoreCase( verificationCode ) ) {
			resultVO.setErrMsg( RET_CODE.E91006.getErrMsg() );
			resultVO.setCode( RET_CODE.E91006.getCode() );
			return RET_JSON;
		}
		try {
			userVO = userService.getUserByUserNameAndPass( userVO.getUserName(), userVO.getUserPassword() );
		}
		catch ( Exception e ) {
			logger.error( ExceptionUtils.getFullStackTrace( e ) );
		}
		if ( null == userVO ) {
			resultVO.setErrMsg( RET_CODE.E91003.getErrMsg() );
			resultVO.setCode( RET_CODE.E91003.getCode() );
			return RET_JSON;
		}
		resultVO.setCode( RET_CODE.S90000.getCode() );
		super.getSession().put( "userVO", userVO );
		return RET_JSON;
	}

	public String ajaxLogout() {
		super.getSession().put( "userVO", null );
		super.getSession().clear();
		resultVO.setCode( RET_CODE.S90000.getCode() );
		return RET_JSON;
	}

	public String ajaxGetCaptcha() {
		try {
			IdentifyUtil identifyUtil = new IdentifyUtil( CAPTCHA_WIDTH, CAPTCHA_HEIGHT );
			String path = ServletActionContext.getServletContext().getRealPath( CAPTCHA_REAL_PATH );
			verificationCode = identifyUtil.getRandomString( 4 );
			String imagePath = path + File.separator + identifyUtil.createImage( path, verificationCode );
			String imageBase64Str = "data:image/jpeg;base64," + identifyUtil.GetImageStr( imagePath );
			identifyUtil.delIdentify( imagePath );
			resultVO.setCode( RET_CODE.S90000.getCode() );
			resultVO.setCaptcha( imageBase64Str );
			return RET_JSON;
		}
		catch ( Exception e ) {
			logger.error( ExceptionUtils.getFullStackTrace( e ) );
		}
		resultVO.setCode( RET_CODE.E91004.getCode() );
		resultVO.setErrMsg( RET_CODE.E91004.getErrMsg() );
		return RET_JSON;
	}

	// -----------------------getter/setter--------------------//

	public void setUserService( IUserService userService ) {
		this.userService = userService;
	}

	public UserVO getUserVO() {
		return userVO;
	}

	public void setUserVO( UserVO userVO ) {
		this.userVO = userVO;
	}

	public RetResultVO getResultVO() {
		return resultVO;
	}

	public String getVerificationCode() {
		return verificationCode;
	}

	public void setVerificationCode( String verificationCode ) {
		this.verificationCode = verificationCode;
	}

}
