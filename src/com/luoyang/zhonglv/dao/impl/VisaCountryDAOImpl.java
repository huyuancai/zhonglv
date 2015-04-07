package com.luoyang.zhonglv.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.dao.BaseDAO;
import com.luoyang.zhonglv.dao.IVisaCountryDAO;
import com.luoyang.zhonglv.dto.VisaCountryDTO;

public class VisaCountryDAOImpl extends BaseDAO implements IVisaCountryDAO {
	private static final String MAPPER_PREFIX = "com.luoyang.zhonglv.dao.IVisaCountryDAO.";

	public List<VisaCountryDTO> getAllVisaCountry() throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getAllVisaCountry" ) );
	}

	public boolean addVisaCountry( String countryName ) throws DataAccessException {
		int count = 0;
		count = getSqlSession().insert( getMapperPrefix( "addVisaCountry" ), countryName );
		if ( count > 0 ) {
			return true;
		}
		return false;
	}

	public boolean updateVisaCountry( Map<String, Object> visaCountryMap ) throws DataAccessException {
		int i = 0;
		i = getSqlSession().update( getMapperPrefix( "updateVisaCountry" ), visaCountryMap );
		if ( i > 0 ) {
			return true;
		}
		return false;
	}

	public void deleteVisaCountry( Long countryId ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteVisaCountry" ), countryId );
	}

	public String getVisaCountryNameById( Long countryId ) throws DataAccessException {
		return getSqlSession().selectOne( getMapperPrefix( "getVisaCountryNameById" ), countryId );
	}

	private String getMapperPrefix( String id ) {
		return MAPPER_PREFIX + id;
	}
}
