package com.luoyang.zhonglv.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.dao.BaseDAO;
import com.luoyang.zhonglv.dao.ITourismNewsDAO;
import com.luoyang.zhonglv.dto.TourismNewsDTO;

public class TourismNewsDAOImpl extends BaseDAO implements ITourismNewsDAO {
	private static final String MAPPER_PREFIX = "com.luoyang.zhonglv.dao.ITourismNewsDAO.";

	public boolean addTourismNews( TourismNewsDTO tourismNewsDTO ) throws DataAccessException {
		int count = 0;
		count = getSqlSession().update( getMapperPrefix( "addTourismNews" ), tourismNewsDTO );
		if ( count > 0 ) {
			return true;
		}
		return false;
	}

	public List<TourismNewsDTO> getTourismNewsByPageForHome( Map<String, Object> pageMap ) throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getTourismNewsByPageForHome" ), pageMap );
	}

	public List<TourismNewsDTO> getTourismNewsByPageForManager( Map<String, Object> pageMap )
			throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getTourismNewsByPageForManager" ), pageMap );
	}

	public List<TourismNewsDTO> getTourismNewsByPageForList( Map<String, Object> pageMap ) throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getTourismNewsByPageForList" ), pageMap );
	}

	public Long getTourismNewsCount( Map<String, Object> paramMap ) throws DataAccessException {
		return getSqlSession().selectOne( getMapperPrefix( "getTourismNewsCount" ), paramMap );
	}

	public TourismNewsDTO getTourismNewsById( Long newsId ) throws DataAccessException {
		return getSqlSession().selectOne( getMapperPrefix( "getTourismNewsById" ), newsId );
	}

	public boolean updateTourismNews( TourismNewsDTO tourismNewsDTO ) throws DataAccessException {
		int count = 0;
		count = getSqlSession().update( getMapperPrefix( "updateTourismNews" ), tourismNewsDTO );
		if ( count > 0 ) {
			return true;
		}
		return false;
	}

	public void deleteTourismNews( Long newsId ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteTourismNews" ), newsId );
	}

	public void deleteTourismNewsByIds( List<Long> newsIds ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteTourismNewsByIds" ), newsIds );
	}

	private String getMapperPrefix( String id ) {
		return MAPPER_PREFIX + id;
	}
}
