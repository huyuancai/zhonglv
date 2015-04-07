package com.luoyang.zhonglv.action.admin.visa;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.lang3.StringUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.IVisaCountryService;
import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;
import com.luoyang.zhonglv.vo.RetResultVO;
import com.luoyang.zhonglv.vo.VisaCountryVO;

public class VisaCountryManagerAction extends BaseAction {

	private static final long serialVersionUID = -3152567540570535477L;
	private IVisaCountryService visaCountryService;
	private List<VisaCountryVO> visaCountryVOs;
	private RetResultVO resultVO = new RetResultVO();
	private String countryName;
	private Long countryId;

	@Override
	public String execute() throws Exception {
		if ( super.isLogin() ) {
			try {
				visaCountryVOs = visaCountryService.getAllVisaCountry();
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

	public String ajaxAddVsiaCountry() {
		if ( super.isLogin() ) {
			if ( StringUtils.isEmpty( countryName ) ) {
				resultVO.setCode( RET_CODE.E91802.getCode() );
				resultVO.setErrMsg( RET_CODE.E91802.getErrMsg() );
				return RET_JSON;
			}
			try {
				if ( visaCountryService.addVisaCountry( countryName ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91803.getCode() );
			resultVO.setErrMsg( RET_CODE.E91803.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateVisaCountry() {
		if ( super.isLogin() ) {
			if ( null == countryId ) {
				resultVO.setCode( RET_CODE.E91801.getCode() );
				resultVO.setErrMsg( RET_CODE.E91801.getErrMsg() );
				return RET_JSON;
			}
			if ( StringUtils.isEmpty( countryName ) ) {
				resultVO.setCode( RET_CODE.E91802.getCode() );
				resultVO.setErrMsg( RET_CODE.E91802.getErrMsg() );
				return RET_JSON;
			}
			try {
				Map<String, Object> visaCountryMap = new HashMap<String, Object>();
				visaCountryMap.put( "countryId", countryId );
				visaCountryMap.put( "countryName", countryName );
				if ( visaCountryService.updateVisaCountry( visaCountryMap ) ) {
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

	public String ajaxDeleteVisaCountry() {
		if ( super.isLogin() ) {
			if ( null == countryId ) {
				resultVO.setCode( RET_CODE.E91401.getCode() );
				resultVO.setErrMsg( RET_CODE.E91401.getErrMsg() );
				return RET_JSON;
			}
			try {
				visaCountryService.deleteVisaCountry( countryId );
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
	public List<VisaCountryVO> getVisaCountryVOs() {
		return visaCountryVOs;
	}

	public void setVisaCountryVOs( List<VisaCountryVO> visaCountryVOs ) {
		this.visaCountryVOs = visaCountryVOs;
	}

	public void setVisaCountryService( IVisaCountryService visaCountryService ) {
		this.visaCountryService = visaCountryService;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName( String countryName ) {
		this.countryName = countryName;
	}

	public RetResultVO getResultVO() {
		return resultVO;
	}

	public void setResultVO( RetResultVO resultVO ) {
		this.resultVO = resultVO;
	}

	public Long getCountryId() {
		return countryId;
	}

	public void setCountryId( Long countryId ) {
		this.countryId = countryId;
	}

}
