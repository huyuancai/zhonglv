package com.luoyang.zhonglv.action;

import java.util.List;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.IRouteTypeService;
import com.luoyang.zhonglv.vo.RouteTypeVO;

public class RouteTypeAction extends BaseAction {

	private static final long serialVersionUID = 5842212839397173462L;
	private IRouteTypeService routeTypeService;
	private List<RouteTypeVO> routeTypeVOs;

	public String ajaxGetAllRouteType() {
		try {
			routeTypeVOs = routeTypeService.getAllRouteType();
		}
		catch ( Exception e ) {
			e.printStackTrace();
		}
		return RET_JSON;
	}

	public List<RouteTypeVO> getRouteTypeVOs() {
		return routeTypeVOs;
	}

	public void setRouteTypeVOs( List<RouteTypeVO> routeTypeVOs ) {
		this.routeTypeVOs = routeTypeVOs;
	}

	public void setRouteTypeService( IRouteTypeService routeTypeService ) {
		this.routeTypeService = routeTypeService;
	}

}
