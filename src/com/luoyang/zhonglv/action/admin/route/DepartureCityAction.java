package com.luoyang.zhonglv.action.admin.route;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.lang3.StringUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.IDepartureCityService;
import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;
import com.luoyang.zhonglv.vo.DepartureCityVO;
import com.luoyang.zhonglv.vo.RetResultVO;

/**
 * 出发城市管理
 * 
 * @author hu
 * 
 */
public class DepartureCityAction extends BaseAction {

	private static final long serialVersionUID = -1397598478201935868L;

	private IDepartureCityService departureCityService;
	private List<DepartureCityVO> departureCityVOs;
	private RetResultVO resultVO = new RetResultVO();
	private String depCityName;
	private Long depCityId;

	@Override
	public String execute() throws Exception {
		if ( super.isLogin() ) {
			try {
				departureCityVOs = departureCityService.getAllDepartureCity();
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

	public String ajaxAddDepartureCity() {
		if ( super.isLogin() ) {
			if ( StringUtils.isEmpty( depCityName ) ) {
				resultVO.setCode( RET_CODE.E91502.getCode() );
				resultVO.setErrMsg( RET_CODE.E91502.getErrMsg() );
				return RET_JSON;
			}
			try {
				if ( departureCityService.addDepartureCity( depCityName ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91503.getCode() );
			resultVO.setErrMsg( RET_CODE.E91503.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateDepartureCity() {
		if ( super.isLogin() ) {
			if ( null == depCityId ) {
				resultVO.setCode( RET_CODE.E91501.getCode() );
				resultVO.setErrMsg( RET_CODE.E91501.getErrMsg() );
				return RET_JSON;
			}
			if ( StringUtils.isEmpty( depCityName ) ) {
				resultVO.setCode( RET_CODE.E91502.getCode() );
				resultVO.setErrMsg( RET_CODE.E91502.getErrMsg() );
				return RET_JSON;
			}
			try {
				Map<String, Object> desCityMap = new HashMap<String, Object>();
				desCityMap.put( "depCityId", depCityId );
				desCityMap.put( "depCityName", depCityName );
				if ( departureCityService.updateDepartureCity( desCityMap ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91505.getCode() );
			resultVO.setErrMsg( RET_CODE.E91505.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteDepartureCity() {
		if ( super.isLogin() ) {
			if ( null == depCityId ) {
				resultVO.setCode( RET_CODE.E91501.getCode() );
				resultVO.setErrMsg( RET_CODE.E91501.getErrMsg() );
				return RET_JSON;
			}
			try {
				departureCityService.deleteDepartureCity( depCityId );
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91504.getCode() );
			resultVO.setErrMsg( RET_CODE.E91504.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	// --------------------------getter/setter-----------------------//
	public void setDepartureCityService( IDepartureCityService departureCityService ) {
		this.departureCityService = departureCityService;
	}

	public RetResultVO getResultVO() {
		return resultVO;
	}

	public void setResultVO( RetResultVO resultVO ) {
		this.resultVO = resultVO;
	}

	public List<DepartureCityVO> getDepartureCityVOs() {
		return departureCityVOs;
	}

	public void setDepartureCityVOs( List<DepartureCityVO> departureCityVOs ) {
		this.departureCityVOs = departureCityVOs;
	}

	public String getDepCityName() {
		return depCityName;
	}

	public void setDepCityName( String depCityName ) {
		this.depCityName = depCityName;
	}

	public Long getDepCityId() {
		return depCityId;
	}

	public void setDepCityId( Long depCityId ) {
		this.depCityId = depCityId;
	}

}
