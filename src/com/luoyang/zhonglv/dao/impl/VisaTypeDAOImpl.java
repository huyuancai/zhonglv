package com.luoyang.zhonglv.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.dao.BaseDAO;
import com.luoyang.zhonglv.dao.IVisaTypeDAO;
import com.luoyang.zhonglv.dto.VisaTypeDTO;

public class VisaTypeDAOImpl extends BaseDAO implements IVisaTypeDAO {
	private static final String MAPPER_PREFIX = "com.luoyang.zhonglv.dao.IVisaTypeDAO.";

	public List<VisaTypeDTO> getAllVisaType() throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getAllVisaType" ) );
	}

	public boolean addVisaType( String typeName ) throws DataAccessException {
		int count = 0;
		count = getSqlSession().insert( getMapperPrefix( "addVisaType" ), typeName );
		if ( count > 0 ) {
			return true;
		}
		return false;
	}

	public boolean updateVisaType( Map<String, Object> visaTypeMap ) throws DataAccessException {
		int i = 0;
		i = getSqlSession().update( getMapperPrefix( "updateVisaType" ), visaTypeMap );
		if ( i > 0 ) {
			return true;
		}
		return false;
	}

	public String getVisaTypeNameById( Long typeId ) throws DataAccessException {
		return getSqlSession().selectOne( getMapperPrefix( "getVisaTypeNameById" ), typeId );
	}

	public void deleteVisaType( Long typeId ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteVisaType" ), typeId );
	}

	private String getMapperPrefix( String id ) {
		return MAPPER_PREFIX + id;
	}
}
