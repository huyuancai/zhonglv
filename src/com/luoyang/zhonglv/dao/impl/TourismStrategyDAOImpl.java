package com.luoyang.zhonglv.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.dao.BaseDAO;
import com.luoyang.zhonglv.dao.ITourismStrategyDAO;
import com.luoyang.zhonglv.dto.TourismStrategyDTO;

public class TourismStrategyDAOImpl extends BaseDAO implements ITourismStrategyDAO {
	private static final String MAPPER_PREFIX = "com.luoyang.zhonglv.dao.ITourismStrategyDAO.";

	public boolean addTourismStrategy( TourismStrategyDTO tourismStrategyDTO ) throws DataAccessException {
		int count = 0;
		count = getSqlSession().update( getMapperPrefix( "addTourismStrategy" ), tourismStrategyDTO );
		if ( count > 0 ) {
			return true;
		}
		return false;
	}

	public List<TourismStrategyDTO> getTourismStrategyByPageForHome( Map<String, Object> pageMap )
			throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getTourismStrategyByPageForHome" ), pageMap );
	}

	public List<TourismStrategyDTO> getTourismStrategyByPageForList( Map<String, Object> pageMap )
			throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getTourismStrategyByPageForList" ), pageMap );
	}

	public List<TourismStrategyDTO> getTourismStrategyByPageForManager( Map<String, Object> pageMap )
			throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getTourismStrategyByPageForManager" ), pageMap );
	}

	public Long getTourismStrategyCount( Map<String, Object> paramMap ) throws DataAccessException {
		return getSqlSession().selectOne( getMapperPrefix( "getTourismStrategyCount" ), paramMap );
	}

	public TourismStrategyDTO getTourismStrategyById( Long strategyId ) throws DataAccessException {
		return getSqlSession().selectOne( getMapperPrefix( "getTourismStrategyById" ), strategyId );
	}

	public boolean updateTourismStrategy( TourismStrategyDTO tourismStrategyDTO ) throws DataAccessException {
		int count = 0;
		count = getSqlSession().update( getMapperPrefix( "updateTourismStrategy" ), tourismStrategyDTO );
		if ( count > 0 ) {
			return true;
		}
		return false;
	}

	public void deleteTourismStrategy( Long strategyId ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteTourismStrategy" ), strategyId );
	}

	public void deleteTourismStrategyByIds( List<Long> strategyIds ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteTourismStrategyByIds" ), strategyIds );
	}

	private String getMapperPrefix( String id ) {
		return MAPPER_PREFIX + id;
	}
}
