package com.luoyang.zhonglv.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.dao.BaseDAO;
import com.luoyang.zhonglv.dao.IRouteTypeDAO;
import com.luoyang.zhonglv.dto.RouteTypeDTO;

public class RouteTypeDAOImpl extends BaseDAO implements IRouteTypeDAO {
	private static final String MAPPER_PREFIX = "com.luoyang.zhonglv.dao.IRouteTypeDAO.";
	
	public List<RouteTypeDTO> getAllRouteType() throws DataAccessException{
		return getSqlSession().selectList( getMapperPrefix("getAllRouteType") );
	}
	
	public boolean addRouteType(String routeTypeName) throws DataAccessException{
		int i = 0;
		i = getSqlSession().insert(getMapperPrefix("addRouteType"), routeTypeName );
		if ( i > 0 ) {
			return true;
		}
		return false;
	}
	
	public boolean updateRouteType(Map<String, Object> routeTypeMap ) throws DataAccessException{
		int i = 0;
		i = getSqlSession().update(getMapperPrefix("updateRouteType"),routeTypeMap);
		if ( i > 0 ) {
			return true;
		}
		return false;
	}
	
	public void deleteRouteType(Long routeTypeId ) throws DataAccessException{
		getSqlSession().delete(getMapperPrefix("deleteRouteType"),routeTypeId);
	}
	
	public String getRouteTypeNameById(Long routeTypeId) throws DataAccessException{
		return getSqlSession().selectOne(getMapperPrefix("getRouteTypeNameById"), routeTypeId);
	}
	
	private String getMapperPrefix( String id ) {
		return MAPPER_PREFIX + id;
	}
}
