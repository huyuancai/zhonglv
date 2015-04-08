package com.luoyang.zhonglv.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.dao.BaseDAO;
import com.luoyang.zhonglv.dao.IRouteImageDAO;
import com.luoyang.zhonglv.dto.RouteImageDTO;

public class RouteImageDAOImpl extends BaseDAO implements IRouteImageDAO {
	private static final String MAPPER_PREFIX = "com.luoyang.zhonglv.dao.IRouteImageDAO.";

	public boolean addRouteImages( List<RouteImageDTO> routeImageDTOs ) throws DataAccessException {
		int count = 0;
		count = getSqlSession().insert( getMapperPrefix( "addRouteImages" ), routeImageDTOs );
		if ( count > 0 ) {
			return true;
		}
		return false;
	}

	public List<RouteImageDTO> getRouteImagesByRouteId( Long routeId ) throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getRouteImagesByRouteId" ), routeId );
	}

	public void deleteRouteImageByImageId( Long imageId ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteRouteImageByImageId" ), imageId );
	}

	public void deleteRouteImageByRouteId( Long routeId ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteRouteImageByRouteId" ), routeId );
	}

	public void deleteRouteImageByRouteIds( List<Long> routeIds ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteRouteImageByRouteIds" ), routeIds );
	}

	public String getImagePathByImageId( Long imageId ) throws DataAccessException {
		return getSqlSession().selectOne( getMapperPrefix( "getImagePathByImageId" ), imageId );
	}

	public boolean updateImageAlias( Map<String, Object> paramMap ) throws DataAccessException {
		int count = 0;
		count = getSqlSession().update( getMapperPrefix( "updateImageAlias" ), paramMap );
		if ( count > 0 ) {
			return true;
		}
		return false;
	}

	private String getMapperPrefix( String id ) {
		return MAPPER_PREFIX + id;
	}
}
