package com.luoyang.zhonglv.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.dao.BaseDAO;
import com.luoyang.zhonglv.dao.IVisaDAO;
import com.luoyang.zhonglv.dto.VisaDTO;

public class VisaDAOImpl extends BaseDAO implements IVisaDAO {
	private static final String MAPPER_PREFIX = "com.luoyang.zhonglv.dao.IVisaDAO.";

	public List<VisaDTO> getVisaByPage( Map<String, Object> pageMap ) throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getVisaByPage" ), pageMap );
	}

	public List<VisaDTO> getVisaByPageAndManager( Map<String, Object> pageMap ) throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getVisaByPageAndManager" ), pageMap );
	}

	public List<VisaDTO> getVisaByPageForHome( Map<String, Object> pageMap ) throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getVisaByPageForHome" ), pageMap );
	}

	public List<VisaDTO> getVisaByPageForList( Map<String, Object> pageMap ) throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getVisaByPageForList" ), pageMap );
	}

	public List<VisaDTO> getAllVisa() throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getAllVisa" ) );
	}

	public Long getVisaCount( Map<String, Object> paramMap ) throws DataAccessException {
		return getSqlSession().selectOne( getMapperPrefix( "getVisaCount" ), paramMap );
	}

	public boolean addVisa( VisaDTO visaDTO ) throws DataAccessException {
		int count = 0;
		count = getSqlSession().insert( getMapperPrefix( "addVisa" ), visaDTO );
		if ( count > 0 ) {
			return true;
		}
		return false;
	}

	public VisaDTO getVisaById( Long visaId ) throws DataAccessException {
		return getSqlSession().selectOne( getMapperPrefix( "getVisaById" ), visaId );
	}

	public boolean updateVisa( VisaDTO visaDTO ) throws DataAccessException {
		int count = 0;
		count = getSqlSession().update( getMapperPrefix( "updateVisa" ), visaDTO );
		if ( count > 0 ) {
			return true;
		}
		return false;
	}

	public void deleteVisa( Long visaId ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteVisa" ), visaId );
	}

	public void deleteVisaByIds( List<Long> visaIds ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteVisaByIds" ), visaIds );
	}

	private String getMapperPrefix( String id ) {
		return MAPPER_PREFIX + id;
	}
}
