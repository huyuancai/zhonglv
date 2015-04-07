package com.luoyang.zhonglv.action.admin.route;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.lang3.StringUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.IDestinationCityService;
import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;
import com.luoyang.zhonglv.vo.DestinationCityVO;
import com.luoyang.zhonglv.vo.RetResultVO;

/**
 * 目的地城市管理
 * 
 * @author hu
 * 
 */
public class DestinationCityAction extends BaseAction {

	private static final long serialVersionUID = -1397598478201935868L;

	private IDestinationCityService destinationCityService;
	private List<DestinationCityVO> destinationCityVOs;
	private RetResultVO resultVO = new RetResultVO();
	private String desCityName;
	private Long desCityId;

	@Override
	public String execute() throws Exception {
		if ( super.isLogin() ) {
			try {
				destinationCityVOs = destinationCityService.getAllDestinationCity();
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

	public String ajaxAddDestinationCity() {
		if ( super.isLogin() ) {
			if ( StringUtils.isEmpty( desCityName ) ) {
				resultVO.setCode( RET_CODE.E91402.getCode() );
				resultVO.setErrMsg( RET_CODE.E91402.getErrMsg() );
				return RET_JSON;
			}
			try {
				if ( destinationCityService.addDestinationCity( desCityName ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91403.getCode() );
			resultVO.setErrMsg( RET_CODE.E91403.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateDestinationCity() {
		if ( super.isLogin() ) {
			if ( null == desCityId ) {
				resultVO.setCode( RET_CODE.E91401.getCode() );
				resultVO.setErrMsg( RET_CODE.E91401.getErrMsg() );
				return RET_JSON;
			}
			if ( StringUtils.isEmpty( desCityName ) ) {
				resultVO.setCode( RET_CODE.E91402.getCode() );
				resultVO.setErrMsg( RET_CODE.E91402.getErrMsg() );
				return RET_JSON;
			}
			try {
				Map<String, Object> desCityMap = new HashMap<String, Object>();
				desCityMap.put( "desCityId", desCityId );
				desCityMap.put( "desCityName", desCityName );
				if ( destinationCityService.updateDestinationCity( desCityMap ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91405.getCode() );
			resultVO.setErrMsg( RET_CODE.E91405.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteDestinationCity() {
		if ( super.isLogin() ) {
			if ( null == desCityId ) {
				resultVO.setCode( RET_CODE.E91401.getCode() );
				resultVO.setErrMsg( RET_CODE.E91401.getErrMsg() );
				return RET_JSON;
			}
			try {
				destinationCityService.deleteDestinationCity( desCityId );
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

	// --------------------------getter/setter-----------------------//
	public void setDestinationCityService( IDestinationCityService destinationCityService ) {
		this.destinationCityService = destinationCityService;
	}

	public List<DestinationCityVO> getDestinationCityVOs() {
		return destinationCityVOs;
	}

	public void setDestinationCityVOs( List<DestinationCityVO> destinationCityVOs ) {
		this.destinationCityVOs = destinationCityVOs;
	}

	public String getDesCityName() {
		return desCityName;
	}

	public void setDesCityName( String desCityName ) {
		this.desCityName = desCityName;
	}

	public RetResultVO getResultVO() {
		return resultVO;
	}

	public void setResultVO( RetResultVO resultVO ) {
		this.resultVO = resultVO;
	}

	public Long getDesCityId() {
		return desCityId;
	}

	public void setDesCityId( Long desCityId ) {
		this.desCityId = desCityId;
	}

}
