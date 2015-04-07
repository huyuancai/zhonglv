package com.luoyang.zhonglv.action.admin.visa;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.lang3.StringUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.IVisaCityService;
import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;
import com.luoyang.zhonglv.vo.RetResultVO;
import com.luoyang.zhonglv.vo.VisaCityVO;

public class VisaCityManagerAction extends BaseAction {

	private static final long serialVersionUID = -3152567540570535477L;
	private IVisaCityService visaCityService;
	private List<VisaCityVO> visaCityVOs;
	private RetResultVO resultVO = new RetResultVO();
	private String cityName;
	private Long cityId;

	@Override
	public String execute() throws Exception {
		if ( super.isLogin() ) {
			try {
				visaCityVOs = visaCityService.getAllVisaCity();
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			return SUCCESS;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxAddVsiaCity() {
		if ( super.isLogin() ) {
			if ( StringUtils.isEmpty( cityName ) ) {
				resultVO.setCode( RET_CODE.E91902.getCode() );
				resultVO.setErrMsg( RET_CODE.E91902.getErrMsg() );
				return RET_JSON;
			}
			try {
				if ( visaCityService.addVisaCity( cityName ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91903.getCode() );
			resultVO.setErrMsg( RET_CODE.E91903.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateVisaCity() {
		if ( super.isLogin() ) {
			if ( null == cityId ) {
				resultVO.setCode( RET_CODE.E91801.getCode() );
				resultVO.setErrMsg( RET_CODE.E91801.getErrMsg() );
				return RET_JSON;
			}
			if ( StringUtils.isEmpty( cityName ) ) {
				resultVO.setCode( RET_CODE.E91802.getCode() );
				resultVO.setErrMsg( RET_CODE.E91802.getErrMsg() );
				return RET_JSON;
			}
			try {
				Map<String, Object> visaCityMap = new HashMap<String, Object>();
				visaCityMap.put( "cityId", cityId );
				visaCityMap.put( "cityName", cityName );
				if ( visaCityService.updateVisaCity( visaCityMap ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91805.getCode() );
			resultVO.setErrMsg( RET_CODE.E91805.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteVisaCity() {
		if ( super.isLogin() ) {
			if ( null == cityId ) {
				resultVO.setCode( RET_CODE.E91401.getCode() );
				resultVO.setErrMsg( RET_CODE.E91401.getErrMsg() );
				return RET_JSON;
			}
			try {
				visaCityService.deleteVisaCity( cityId );
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91404.getCode() );
			resultVO.setErrMsg( RET_CODE.E91404.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	// ----------------------getter/setter---------------------//
	public List<VisaCityVO> getVisaCityVOs() {
		return visaCityVOs;
	}

	public void setVisaCityVOs( List<VisaCityVO> visaCityVOs ) {
		this.visaCityVOs = visaCityVOs;
	}

	public void setVisaCityService( IVisaCityService visaCityService ) {
		this.visaCityService = visaCityService;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName( String CityName ) {
		this.cityName = CityName;
	}

	public RetResultVO getResultVO() {
		return resultVO;
	}

	public void setResultVO( RetResultVO resultVO ) {
		this.resultVO = resultVO;
	}

	public Long getCityId() {
		return cityId;
	}

	public void setCityId( Long CityId ) {
		this.cityId = CityId;
	}

}
