package com.luoyang.zhonglv.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.dao.BaseDAO;
import com.luoyang.zhonglv.dao.ISceneryDAO;
import com.luoyang.zhonglv.dto.SceneryDTO;

public class SceneryDAOImpl extends BaseDAO implements ISceneryDAO {
	private static final String MAPPER_PREFIX = "com.luoyang.zhonglv.dao.ISceneryDAO.";

	public List<SceneryDTO> getSceneryByRecommendAndPage( Map<String, Object> pageMap ) throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getSceneryByRecommendAndPage" ), pageMap );
	}

	public List<SceneryDTO> getAllScenery() throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getAllScenery" ) );
	}

	public boolean addScenery( SceneryDTO sceneryDTO ) throws DataAccessException {
		int count = 0;
		count = getSqlSession().insert( getMapperPrefix( "addScenery" ), sceneryDTO );
		if ( count > 0 ) {
			return true;
		}
		return false;
	}

	public boolean updateScenery( SceneryDTO sceneryDTO ) throws DataAccessException {
		int count = 0;
		count = getSqlSession().update( getMapperPrefix( "updateScenery" ), sceneryDTO );
		if ( count > 0 ) {
			return true;
		}
		return false;
	}

	public List<SceneryDTO> getSceneryByPageAndManager( Map<String, Object> paramMap ) throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getSceneryByPageAndManager" ), paramMap );
	}

	public List<SceneryDTO> getSceneryByPageForList( Map<String, Object> pageMap ) throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getSceneryByPageForList" ), pageMap );
	}

	public Long getSceneryCount( Map<String, Object> paramMap ) throws DataAccessException {
		return getSqlSession().selectOne( getMapperPrefix( "getSceneryCount" ), paramMap );
	}

	public SceneryDTO getSceneryById( Long sceneryId ) throws DataAccessException {
		return getSqlSession().selectOne( getMapperPrefix( "getSceneryById" ), sceneryId );
	}

	public void deleteScenery( Long sceneryId ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteScenery" ), sceneryId );
	}

	public void deleteSceneryByIds( List<Long> sceneryIds ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteSceneryByIds" ), sceneryIds );
	}
	
	public boolean updateSceneryRecommend( List<Long> sceneryIds ) throws DataAccessException {
		int i = 0;
		i = getSqlSession().update( getMapperPrefix( "updateSceneryRecommend" ), sceneryIds );
		if ( i > 0 ) {
			return true;
		}
		return false;
	}
	
	public boolean updateCancelSceneryRecommend( List<Long> sceneryIds ) throws DataAccessException {
		int i = 0;
		i = getSqlSession().update( getMapperPrefix( "updateCancelSceneryRecommend" ), sceneryIds );
		if ( i > 0 ) {
			return true;
		}
		return false;
	}
	
	private String getMapperPrefix( String id ) {
		return MAPPER_PREFIX + id;
	}
}
