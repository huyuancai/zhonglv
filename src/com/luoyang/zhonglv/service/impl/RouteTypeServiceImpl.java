package com.luoyang.zhonglv.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.service.BaseService;
import com.luoyang.zhonglv.dao.IRouteDAO;
import com.luoyang.zhonglv.dao.IRouteTypeDAO;
import com.luoyang.zhonglv.dto.RouteTypeDTO;
import com.luoyang.zhonglv.service.IRouteTypeService;
import com.luoyang.zhonglv.util.BeanUtils;
import com.luoyang.zhonglv.vo.RouteTypeVO;

public class RouteTypeServiceImpl extends BaseService implements IRouteTypeService {
	private IRouteTypeDAO routeTypeDAO;
	private IRouteDAO routeDAO;

	public List<RouteTypeVO> getAllRouteType() throws DataAccessException {
		List<RouteTypeVO> routeTypeVOs = new ArrayList<RouteTypeVO>();
		List<RouteTypeDTO> routeTypeDTOs = routeTypeDAO.getAllRouteType();
		routeTypeVOs = BeanUtils.copyList( routeTypeDTOs, RouteTypeVO.class );
		return routeTypeVOs;
	}

	public boolean addRouteType( String routeTypeName ) throws DataAccessException {
		return routeTypeDAO.addRouteType( routeTypeName );
	}

	public boolean updateRouteType( Long routeTypeId, String routeTypeName ) throws DataAccessException {
		Map<String, Object> routeTypeMap = new HashMap<String, Object>();
		routeTypeMap.put( "routeTypeId", routeTypeId );
		routeTypeMap.put( "routeTypeName", routeTypeName );
		return routeTypeDAO.updateRouteType( routeTypeMap );
	}

	public void deleteRouteType( Long routeTypeId ) throws DataAccessException {
		routeDAO.deleteRouteByRouteTypeId( routeTypeId );
		routeTypeDAO.deleteRouteType( routeTypeId );
	}

	public String getRouteTypeNameById( Long routeTypeId ) throws DataAccessException {
		return routeTypeDAO.getRouteTypeNameById( routeTypeId );
	}

	// ---------------------------getter/setter----------------------//
	public void setRouteTypeDAO( IRouteTypeDAO routeTypeDAO ) {
		this.routeTypeDAO = routeTypeDAO;
	}
	
	public void setRouteDAO( IRouteDAO routeDAO ) {
		this.routeDAO = routeDAO;
	}

}
