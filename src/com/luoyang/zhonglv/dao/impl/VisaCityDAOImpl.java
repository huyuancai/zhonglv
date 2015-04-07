package com.luoyang.zhonglv.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.dao.BaseDAO;
import com.luoyang.zhonglv.dao.IVisaCityDAO;
import com.luoyang.zhonglv.dto.VisaCityDTO;

public class VisaCityDAOImpl extends BaseDAO implements IVisaCityDAO {
	private static final String MAPPER_PREFIX = "com.luoyang.zhonglv.dao.IVisaCityDAO.";

	public List<VisaCityDTO> getAllVisaCity() throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getAllVisaCity" ) );
	}

	public boolean addVisaCity( String cityName ) throws DataAccessException {
		int count = 0;
		count = getSqlSession().insert( getMapperPrefix( "addVisaCity" ), cityName );
		if ( count > 0 ) {
			return true;
		}
		return false;
	}

	public boolean updateVisaCity( Map<String, Object> visaCityMap ) throws DataAccessException {
		int i = 0;
		i = getSqlSession().update( getMapperPrefix( "updateVisaCity" ), visaCityMap );
		if ( i > 0 ) {
			return true;
		}
		return false;
	}

	public void deleteVisaCity( Long cityId ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteVisaCity" ), cityId );
	}

	public String getVisaCityNameById( Long cityId ) throws DataAccessException {
		return getSqlSession().selectOne( getMapperPrefix( "getVisaCityNameById" ), cityId );
	}

	private String getMapperPrefix( String id ) {
		return MAPPER_PREFIX + id;
	}
}
