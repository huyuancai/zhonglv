package com.luoyang.zhonglv.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.IDepartureCityService;
import com.luoyang.zhonglv.service.IDestinationCityService;
import com.luoyang.zhonglv.service.IRouteService;
import com.luoyang.zhonglv.service.IRouteTypeService;
import com.luoyang.zhonglv.service.ITopicsService;
import com.luoyang.zhonglv.vo.DestinationCityVO;
import com.luoyang.zhonglv.vo.PageVO;
import com.luoyang.zhonglv.vo.RouteVO;
import com.luoyang.zhonglv.vo.TopicsVO;

public class RouteAction extends BaseAction {
	private static final long serialVersionUID = -6321408597312317360L;
	private static final String ROUTE_DETAIL = "routeDetail";
	private static final long PAGE_SIZE = 20;
	private IRouteService routeService;
	private IRouteTypeService routeTypeService;
	private IDepartureCityService departureCityService;
	private IDestinationCityService destinationCityService;
	private ITopicsService topicsService;
	private PageVO pageVO;
	private List<RouteVO> routeVOs;
	private List<TopicsVO> topicsVOs;
	private List<DestinationCityVO> destinationCityVOs;
	private String routeTypeName;
	private RouteVO routeVO;
	private Long routeId;
	private Long routeTypeId;
	private Long topicsId;
	private Long days;
	private Long desCityId;

	@Override
	public String execute() throws Exception {
		if ( null != routeTypeId ) {
			try {
				pageVO.setPageSize( PAGE_SIZE );
				Map<String, Object> pageMap = new HashMap<String, Object>();
				pageMap.put( "currentPage", ( pageVO.getCurrentPage() - 1 ) * pageVO.getPageSize() );
				pageMap.put( "pageSize", pageVO.getPageSize() );
				pageMap.put( "routeTypeId", routeTypeId );
				pageMap.put( "topicsId", topicsId );
				pageMap.put( "days", days );
				pageMap.put( "desCityId", desCityId );
				routeVOs = routeService.getRouteByPageAndTypeForList( pageMap );
				pageVO.setTotalSize( routeService.getRouteCount( pageMap ) );
				routeTypeName = routeTypeService.getRouteTypeNameById( routeTypeId );
				topicsVOs = topicsService.getAllTopics();
				destinationCityVOs = destinationCityService.getAllDestinationCity();
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
		}
		return SUCCESS;
	}

	public String getRouteById() {
		if ( null != routeId ) {
			try {
				routeVO = routeService.getRouteById( routeId );
				String routeDepartureCityName = departureCityService.getDepartureCityNameById( routeVO
						.getRouteDepartureCity() );
				routeVO.setRouteDepartureCityName( routeDepartureCityName );
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
		}
		return ROUTE_DETAIL;
	}

	// --------------------------------getter/setter-----------------------//
	public void setRouteService( IRouteService routeService ) {
		this.routeService = routeService;
	}

	public void setRouteTypeService( IRouteTypeService routeTypeService ) {
		this.routeTypeService = routeTypeService;
	}

	public PageVO getPageVO() {
		return pageVO;
	}

	public void setPageVO( PageVO pageVO ) {
		this.pageVO = pageVO;
	}

	public Long getRouteTypeId() {
		return routeTypeId;
	}

	public void setRouteTypeId( Long routeTypeId ) {
		this.routeTypeId = routeTypeId;
	}

	public void setRouteVOs( List<RouteVO> routeVOs ) {
		this.routeVOs = routeVOs;
	}

	public List<RouteVO> getRouteVOs() {
		return routeVOs;
	}

	public void setRouteTypeName( String routeTypeName ) {
		this.routeTypeName = routeTypeName;
	}

	public String getRouteTypeName() {
		return routeTypeName;
	}

	public Long getRouteId() {
		return routeId;
	}

	public void setRouteId( Long routeId ) {
		this.routeId = routeId;
	}

	public RouteVO getRouteVO() {
		return routeVO;
	}

	public void setRouteVO( RouteVO routeVO ) {
		this.routeVO = routeVO;
	}

	public void setDepartureCityService( IDepartureCityService departureCityService ) {
		this.departureCityService = departureCityService;
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

	public List<DestinationCityVO> getDestinationCityVOs() {
		return destinationCityVOs;
	}

	public void setDestinationCityVOs( List<DestinationCityVO> destinationCityVOs ) {
		this.destinationCityVOs = destinationCityVOs;
	}

	public void setDestinationCityService( IDestinationCityService destinationCityService ) {
		this.destinationCityService = destinationCityService;
	}

	public Long getTopicsId() {
		return topicsId;
	}

	public void setTopicsId( Long topicsId ) {
		this.topicsId = topicsId;
	}

	public Long getDays() {
		return days;
	}

	public void setDays( Long days ) {
		this.days = days;
	}

	public Long getDesCityId() {
		return desCityId;
	}

	public void setDesCityId( Long desCityId ) {
		this.desCityId = desCityId;
	}

}
