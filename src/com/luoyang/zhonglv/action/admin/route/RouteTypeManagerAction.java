package com.luoyang.zhonglv.action.admin.route;

import java.util.List;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.lang3.StringUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.IRouteTypeService;
import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;
import com.luoyang.zhonglv.vo.RetResultVO;
import com.luoyang.zhonglv.vo.RouteTypeVO;

public class RouteTypeManagerAction extends BaseAction {
	private static final long serialVersionUID = 8095437385369065830L;
	private IRouteTypeService routeTypeService;
	private List<RouteTypeVO> routeTypeVOs;
	private String routeTypeName;
	private Long routeTypeId;
	private RetResultVO resultVO = new RetResultVO();

	public String execute() {
		if ( super.isLogin() ) {
			try {
				routeTypeVOs = routeTypeService.getAllRouteType();
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

	public String ajaxAddRouteType() {
		if ( super.isLogin() ) {
			if ( StringUtils.isEmpty( routeTypeName ) ) {
				resultVO.setCode( RET_CODE.E91302.getCode() );
				resultVO.setErrMsg( RET_CODE.E91302.getErrMsg() );
				return RET_JSON;
			}
			if ( routeTypeService.addRouteType( routeTypeName ) ) {
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			resultVO.setCode( RET_CODE.E91303.getCode() );
			resultVO.setErrMsg( RET_CODE.E91303.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateRouteType() {
		if ( super.isLogin() ) {
			if ( null == routeTypeId ) {
				resultVO.setCode( RET_CODE.E91301.getCode() );
				resultVO.setErrMsg( RET_CODE.E91301.getErrMsg() );
				return RET_JSON;
			}
			if ( StringUtils.isEmpty( routeTypeName ) ) {
				resultVO.setCode( RET_CODE.E91302.getCode() );
				resultVO.setErrMsg( RET_CODE.E91302.getErrMsg() );
				return RET_JSON;
			}
			if ( routeTypeService.updateRouteType( routeTypeId, routeTypeName ) ) {
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			resultVO.setCode( RET_CODE.E91305.getCode() );
			resultVO.setErrMsg( RET_CODE.E91305.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteRouteType() {
		if ( super.isLogin() ) {
			if ( null == routeTypeId ) {
				resultVO.setCode( RET_CODE.E91301.getCode() );
				resultVO.setErrMsg( RET_CODE.E91301.getErrMsg() );
				return RET_JSON;
			}
			try {
				routeTypeService.deleteRouteType( routeTypeId );
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91304.getCode() );
			resultVO.setErrMsg( RET_CODE.E91304.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	// -----------------------getter/setter-----------------------//

	public void setRouteTypeService( IRouteTypeService routeTypeService ) {
		this.routeTypeService = routeTypeService;
	}

	public List<RouteTypeVO> getRouteTypeVOs() {
		return routeTypeVOs;
	}

	public void setRouteTypeVOs( List<RouteTypeVO> routeTypeVOs ) {
		this.routeTypeVOs = routeTypeVOs;
	}

	public String getRouteTypeName() {
		return routeTypeName;
	}

	public void setRouteTypeName( String routeTypeName ) {
		this.routeTypeName = routeTypeName;
	}

	public RetResultVO getResultVO() {
		return resultVO;
	}

	public void setResultVO( RetResultVO resultVO ) {
		this.resultVO = resultVO;
	}

	public Long getRouteTypeId() {
		return routeTypeId;
	}

	public void setRouteTypeId( Long routeTypeId ) {
		this.routeTypeId = routeTypeId;
	}

}
