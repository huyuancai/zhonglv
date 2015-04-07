package com.luoyang.zhonglv.action.admin.route;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.IDepartureCityService;
import com.luoyang.zhonglv.service.IDestinationCityService;
import com.luoyang.zhonglv.service.IRouteService;
import com.luoyang.zhonglv.service.IRouteTypeService;
import com.luoyang.zhonglv.service.ITopicsService;
import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;
import com.luoyang.zhonglv.vo.DepartureCityVO;
import com.luoyang.zhonglv.vo.DestinationCityVO;
import com.luoyang.zhonglv.vo.PageVO;
import com.luoyang.zhonglv.vo.RetResultVO;
import com.luoyang.zhonglv.vo.RouteTypeVO;
import com.luoyang.zhonglv.vo.RouteVO;
import com.luoyang.zhonglv.vo.TopicsVO;

public class RouteManagerAction extends BaseAction {
	private static final long serialVersionUID = -59670775852858577L;
	private static final String RET_ROUTE_EDIT = "routeEdit";
	private static final String RET_ROUTE_ADD = "routeAdd";

	private IRouteService routeService;
	private IRouteTypeService routeTypeService;
	private IDepartureCityService departureCityService;
	private IDestinationCityService destinationCityService;
	private ITopicsService topicsService;
	private RetResultVO resultVO = new RetResultVO();
	private RouteVO routeVO;
	private List<RouteVO> routeVOs;
	private PageVO pageVO;
	private List<RouteTypeVO> routeTypeVOs;
	private List<DepartureCityVO> departureCityVOs;
	private List<DestinationCityVO> destinationCityVOs;
	private List<TopicsVO> topicsVOs;
	private Long routeId;
	private String routeIds;

	public String execute() throws Exception {
		if ( super.isLogin() ) {
			try {
				Map<String, Object> paramMap = new HashMap<String, Object>();
				paramMap.put( "index", ( pageVO.getCurrentPage() - 1 ) * pageVO.getPageSize() );
				paramMap.put( "pageSize", pageVO.getPageSize() );
				paramMap.put( "routeName", routeVO.getRouteName() );
				if ( null != routeVO.isRouteRecommend() ) {
					paramMap.put( "routeRecommend", routeVO.isRouteRecommend() ? 1 : 0 );
				}
				routeVOs = routeService.getRouteByPageForManager( paramMap );
				pageVO.setTotalSize( routeService.getRouteCount( paramMap ) );
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
				routeVOs = null;
			}
			return SUCCESS;
		}
		else {
			return LOGIN;
		}
	}

	public String editRouteById() {
		if ( super.isLogin() ) {
			try {
				routeVO = routeService.getRouteById( routeVO.getRouteId() );
				routeTypeVOs = routeTypeService.getAllRouteType();
				departureCityVOs = departureCityService.getAllDepartureCity();
				destinationCityVOs = destinationCityService.getAllDestinationCity();
				topicsVOs = topicsService.getAllTopics();
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			return RET_ROUTE_EDIT;
		}
		else {
			return LOGIN;
		}
	}

	public String initAddRoute() {
		if ( super.isLogin() ) {
			try {
				routeTypeVOs = routeTypeService.getAllRouteType();
				departureCityVOs = departureCityService.getAllDepartureCity();
				destinationCityVOs = destinationCityService.getAllDestinationCity();
				topicsVOs = topicsService.getAllTopics();
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			return RET_ROUTE_ADD;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxAddRoute() {
		if ( super.isLogin() ) {
			if ( null == routeVO || StringUtils.isEmpty( routeVO.getRouteName() ) ) {
				resultVO.setCode( RET_CODE.E91101.getCode() );
				resultVO.setErrMsg( RET_CODE.E91101.getErrMsg() );
				return RET_JSON;
			}
			try {
				if ( routeService.addRoute( routeVO ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( DataAccessException e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91102.getCode() );
			resultVO.setErrMsg( RET_CODE.E91102.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateRoute() {
		if ( super.isLogin() ) {
			if ( null == routeVO || null == routeVO.getRouteId() ) {
				resultVO.setCode( RET_CODE.E91103.getCode() );
				resultVO.setErrMsg( RET_CODE.E91103.getErrMsg() );
				return RET_JSON;
			}
			try {
				if ( routeService.updateRoute( routeVO ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91104.getCode() );
			resultVO.setErrMsg( RET_CODE.E91104.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteRoute() {
		if ( super.isLogin() ) {
			if ( null == routeId ) {
				resultVO.setCode( RET_CODE.E91103.getCode() );
				resultVO.setErrMsg( RET_CODE.E91103.getErrMsg() );
				return RET_JSON;
			}
			try {
				routeService.deleteRoute( routeId );
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91105.getCode() );
			resultVO.setErrMsg( RET_CODE.E91105.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateRouteRecommend() {
		if ( super.isLogin() ) {
			if ( null == routeIds ) {
				resultVO.setCode( RET_CODE.E91103.getCode() );
				resultVO.setErrMsg( RET_CODE.E91103.getErrMsg() );
				return RET_JSON;
			}
			try {
				String[] strIds = routeIds.split( "\\|" );
				List<Long> ids = new ArrayList<Long>();
				for ( int i = 0; i < strIds.length; i++ ) {
					ids.add( Long.parseLong( strIds[i] ) );
				}
				if ( routeService.updateRouteRecommend( ids ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91106.getCode() );
			resultVO.setErrMsg( RET_CODE.E91106.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateCancelRouteRecommend() {
		if ( super.isLogin() ) {
			if ( null == routeIds ) {
				resultVO.setCode( RET_CODE.E91103.getCode() );
				resultVO.setErrMsg( RET_CODE.E91103.getErrMsg() );
				return RET_JSON;
			}
			try {
				String[] strIds = routeIds.split( "\\|" );
				List<Long> ids = new ArrayList<Long>();
				for ( int i = 0; i < strIds.length; i++ ) {
					ids.add( Long.parseLong( strIds[i] ) );
				}
				if ( routeService.updateCancelRouteRecommend( ids ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91107.getCode() );
			resultVO.setErrMsg( RET_CODE.E91107.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteRouteByIds() {
		if ( super.isLogin() ) {
			if ( null == routeIds ) {
				resultVO.setCode( RET_CODE.E91103.getCode() );
				resultVO.setErrMsg( RET_CODE.E91103.getErrMsg() );
				return RET_JSON;
			}
			try {
				String[] strIds = routeIds.split( "\\|" );
				List<Long> ids = new ArrayList<Long>();
				for ( int i = 0; i < strIds.length; i++ ) {
					ids.add( Long.parseLong( strIds[i] ) );
				}
				routeService.deleteRouteByIds( ids );
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91105.getCode() );
			resultVO.setErrMsg( RET_CODE.E91105.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	// ---------------------getter/setter-------------------//

	public void setRouteVO( RouteVO routeVO ) {
		this.routeVO = routeVO;
	}

	public RouteVO getRouteVO() {
		return routeVO;
	}

	public void setRouteService( IRouteService routeService ) {
		this.routeService = routeService;
	}

	public void setRouteTypeService( IRouteTypeService routeTypeService ) {
		this.routeTypeService = routeTypeService;
	}

	public void setDepartureCityService( IDepartureCityService departureCityService ) {
		this.departureCityService = departureCityService;
	}

	public void setDestinationCityService( IDestinationCityService destinationCityService ) {
		this.destinationCityService = destinationCityService;
	}

	public RetResultVO getResultVO() {
		return resultVO;
	}

	public void setRouteVOs( List<RouteVO> routeVOs ) {
		this.routeVOs = routeVOs;
	}

	public List<RouteVO> getRouteVOs() {
		return routeVOs;
	}

	public List<RouteTypeVO> getRouteTypeVOs() {
		return routeTypeVOs;
	}

	public void setRouteTypeVOs( List<RouteTypeVO> routeTypeVOs ) {
		this.routeTypeVOs = routeTypeVOs;
	}

	public PageVO getPageVO() {
		return pageVO;
	}

	public void setPageVO( PageVO pageVO ) {
		this.pageVO = pageVO;
	}

	public List<DepartureCityVO> getDepartureCityVOs() {
		return departureCityVOs;
	}

	public void setDepartureCityVOs( List<DepartureCityVO> departureCityVOs ) {
		this.departureCityVOs = departureCityVOs;
	}

	public List<DestinationCityVO> getDestinationCityVOs() {
		return destinationCityVOs;
	}

	public void setDestinationCityVOs( List<DestinationCityVO> destinationCityVOs ) {
		this.destinationCityVOs = destinationCityVOs;
	}

	public Long getRouteId() {
		return routeId;
	}

	public void setRouteId( Long routeId ) {
		this.routeId = routeId;
	}

	public String getRouteIds() {
		return routeIds;
	}

	public void setRouteIds( String routeIds ) {
		this.routeIds = routeIds;
	}

	public void setTopicsService( ITopicsService topicsService ) {
		this.topicsService = topicsService;
	}

	public List<TopicsVO> getTopicsVOs() {
		return topicsVOs;
	}

	public void setTopicsVOs( List<TopicsVO> topicsVOs ) {
		this.topicsVOs = topicsVOs;
	}

}
