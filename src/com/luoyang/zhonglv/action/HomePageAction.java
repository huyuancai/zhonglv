package com.luoyang.zhonglv.action;

import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang.exception.ExceptionUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.IRouteService;
import com.luoyang.zhonglv.service.IRouteTypeService;
import com.luoyang.zhonglv.service.ISceneryService;
import com.luoyang.zhonglv.service.ITourismNewsService;
import com.luoyang.zhonglv.service.ITourismStrategyService;
import com.luoyang.zhonglv.service.IVisaService;
import com.luoyang.zhonglv.vo.RouteTypeVO;
import com.luoyang.zhonglv.vo.RouteVO;
import com.luoyang.zhonglv.vo.SceneryVO;
import com.luoyang.zhonglv.vo.TourismNewsVO;
import com.luoyang.zhonglv.vo.TourismStrategyVO;
import com.luoyang.zhonglv.vo.VisaVO;

public class HomePageAction extends BaseAction {
	private static final long serialVersionUID = 7642541098327649149L;
	private IRouteService routeService;
	private IRouteTypeService routeTypeService;
	private ISceneryService sceneryService;
	private IVisaService visaService;
	private ITourismNewsService tourismNewsService;
	private ITourismStrategyService tourismStrategyService;
	private List<RouteVO> routeVOs;
	private List<RouteTypeVO> routeTypeVOs;
	private List<SceneryVO> sceneryVOs;
	private List<VisaVO> visaVOs;
	private List<TourismNewsVO> tourismNewsVOs;
	private List<TourismStrategyVO> tourismStrategyVOs;

	@Override
	public String execute() throws Exception {
		int currentPage = 0;
		int recommendPageSize, notRecommendPageSize;
		try {
			routeTypeVOs = routeTypeService.getAllRouteType();
			HashMap<String, String> settingsMap = super.getSettingsMap();
			recommendPageSize = Integer.parseInt( settingsMap.get( "recommendPageSize" ) );
			notRecommendPageSize = Integer.parseInt( settingsMap.get( "notRecommendPageSize" ) );
			routeVOs = routeService.getRouteByPageForHomePage( currentPage, recommendPageSize, notRecommendPageSize,
					routeTypeVOs );
			sceneryVOs = sceneryService.getSceneryByRecommendAndPage( currentPage, recommendPageSize, notRecommendPageSize );
			visaVOs = visaService.getVisaByPageForHome( currentPage, notRecommendPageSize );
			tourismNewsVOs = tourismNewsService.getTourismNewsByPageForHome( currentPage, notRecommendPageSize );
			tourismStrategyVOs = tourismStrategyService.getTourismStrategyByPageForHome( currentPage, notRecommendPageSize );
		}
		catch ( Exception e ) {
			logger.error( ExceptionUtils.getFullStackTrace( e ) );
		}
		return SUCCESS;
	}

	//----------------------------getter/setter---------------------------//
	public void setRouteTypeService( IRouteTypeService routeTypeService ) {
		this.routeTypeService = routeTypeService;
	}
	
	public void setVisaService(IVisaService visaService) {
		this.visaService = visaService;
	}

	public void setRouteService( IRouteService routeService ) {
		this.routeService = routeService;
	}

	public void setSceneryService( ISceneryService sceneryService ) {
		this.sceneryService = sceneryService;
	}

	public List<RouteVO> getRouteVOs() {
		return routeVOs;
	}

	public List<RouteTypeVO> getRouteTypeVOs() {
		return routeTypeVOs;
	}

	public List<SceneryVO> getSceneryVOs() {
		return sceneryVOs;
	}

	public void setSceneryVOs( List<SceneryVO> sceneryVOs ) {
		this.sceneryVOs = sceneryVOs;
	}

	public List<VisaVO> getVisaVOs() {
		return visaVOs;
	}

	public void setVisaVOs(List<VisaVO> visaVOs) {
		this.visaVOs = visaVOs;
	}
	
	public void setTourismNewsService( ITourismNewsService tourismNewsService ) {
		this.tourismNewsService = tourismNewsService;
	}

	public List<TourismNewsVO> getTourismNewsVOs() {
		return tourismNewsVOs;
	}

	public void setTourismNewsVOs( List<TourismNewsVO> tourismNewsVOs ) {
		this.tourismNewsVOs = tourismNewsVOs;
	}
	
	public void setTourismStrategyService( ITourismStrategyService tourismStrategyService ) {
		this.tourismStrategyService = tourismStrategyService;
	}

	public List<TourismStrategyVO> getTourismStrategyVOs() {
		return tourismStrategyVOs;
	}

	public void setTourismStrategyVOs( List<TourismStrategyVO> tourismStrategyVOs ) {
		this.tourismStrategyVOs = tourismStrategyVOs;
	}
	
}
