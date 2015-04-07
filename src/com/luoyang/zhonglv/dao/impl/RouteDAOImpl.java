package com.luoyang.zhonglv.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.dao.BaseDAO;
import com.luoyang.zhonglv.dao.IRouteDAO;
import com.luoyang.zhonglv.dto.RouteDTO;

public class RouteDAOImpl extends BaseDAO implements IRouteDAO {

	private static final String MAPPER_PREFIX = "com.luoyang.zhonglv.dao.IRouteDAO.";

	public List<RouteDTO> getRouteByTypeAndRecommendAndPage( Map<String, Object> pageMap ) throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getRouteByTypeAndRecommendAndPage" ), pageMap );
	}

	public List<RouteDTO> getRouteByPageAndTypeForList( Map<String, Object> pageMap ) throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getRouteByPageAndTypeForList" ), pageMap );
	}

	public List<RouteDTO> getRouteByPageForManager( Map<String, Object> paramMap ) throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getRouteByPageAndManager" ), paramMap );
	}

	public Long getRouteCount( Map<String, Object> paramMap ) throws DataAccessException {
		return getSqlSession().selectOne( getMapperPrefix( "getRouteCount" ), paramMap );
	}

	public RouteDTO getRouteById( Long routeId ) throws DataAccessException {
		return getSqlSession().selectOne( getMapperPrefix( "getRouteById" ), routeId );
	}

	public boolean addRoute( RouteDTO routeDTO ) throws DataAccessException {
		int count = 0;
		count = getSqlSession().update( getMapperPrefix( "addRoute" ), routeDTO );
		if ( count > 0 ) {
			return true;
		}
		return false;
	}

	public boolean updateRoute( RouteDTO routeDTO ) throws DataAccessException {
		int count = 0;
		count = getSqlSession().update( getMapperPrefix( "updateRoute" ), routeDTO );
		if ( count > 0 ) {
			return true;
		}
		return false;
	}

	public void deleteRoute( Long routeId ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteRoute" ), routeId );
	}

	public void deleteRouteByRouteTypeId( Long routeTypeId ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteRouteByRouteTypeId" ), routeTypeId );
	}

	public void deleteRouteByRouteTopicsId( Long routeTopicsId ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteRouteByRouteTopicsId" ), routeTopicsId );
	}

	public void deleteRouteByIds( List<Long> routeIds ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteRouteByIds" ), routeIds );
	}

	public boolean updateRouteRecommend( List<Long> routeIds ) throws DataAccessException {
		int i = 0;
		i = getSqlSession().update( getMapperPrefix( "updateRouteRecommend" ), routeIds );
		if ( i > 0 ) {
			return true;
		}
		return false;
	}

	public boolean updateCancelRouteRecommend( List<Long> routeIds ) throws DataAccessException {
		int i = 0;
		i = getSqlSession().update( getMapperPrefix( "updateCancelRouteRecommend" ), routeIds );
		if ( i > 0 ) {
			return true;
		}
		return false;
	}

	private String getMapperPrefix( String id ) {
		return MAPPER_PREFIX + id;
	}

}
