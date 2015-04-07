package com.luoyang.zhonglv.dao.impl;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.dao.BaseDAO;
import com.luoyang.zhonglv.dao.IRouteTopicsDAO;
import com.luoyang.zhonglv.dto.RouteTopicsDTO;

public class RouteTopicsDAOImpl extends BaseDAO implements IRouteTopicsDAO {
	private static final String MAPPER_PREFIX = "com.luoyang.zhonglv.dao.IRouteTopicsDAO.";

	public boolean addRouteTopics( List<RouteTopicsDTO> routeTopicsDTOs ) throws DataAccessException {
		int i = 0;
		i = getSqlSession().insert( getMapperPrefix( "addRouteTopics" ), routeTopicsDTOs );
		if ( i > 0 ) {
			return true;
		}
		return false;
	}

	public List<RouteTopicsDTO> getRouteTopicsByRouteId( Long routeId ) throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getRouteTopicsByRouteId" ), routeId );
	}
	
	public void deleteRouteTopicsByRouteId( Long routeId ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteRouteTopicsByRouteId" ), routeId );
	}
	
	public void deleteRouteTopicsByTopicsId( Long topicsId ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteRouteTopicsByTopicsId" ), topicsId );
	}

	private String getMapperPrefix( String id ) {
		return MAPPER_PREFIX + id;
	}
}
