package com.luoyang.zhonglv.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.dao.BaseDAO;
import com.luoyang.zhonglv.dao.IDestinationCityDAO;
import com.luoyang.zhonglv.dto.DestinationCityDTO;

/**
 * 出发城市DAO Descriptions
 * 
 * @version 2015-2-6
 * @author YuancaiHu
 * @since JDK1.7
 * 
 */
public class DestinationCityDAOImpl extends BaseDAO implements IDestinationCityDAO {
	private static final String MAPPER_PREFIX = "com.luoyang.zhonglv.dao.IDestinationCityDAO.";

	public List<DestinationCityDTO> getAllDestinationCity() throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getAllDestinationCity" ) );
	}

	public boolean addDestinationCity( String desCityName ) throws DataAccessException {
		int i = 0;
		i = getSqlSession().insert( getMapperPrefix( "addDestinationCity" ), desCityName );
		if ( i > 0 ) {
			return true;
		}
		return false;
	}

	public boolean updateDestinationCity( Map<String, Object> desCityMap ) throws DataAccessException {
		int i = 0;
		i = getSqlSession().update( getMapperPrefix( "updateDestinationCity" ), desCityMap );
		if ( i > 0 ) {
			return true;
		}
		return false;
	}

	public void deleteDestinationCity( Long desCityId ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteDestinationCity" ), desCityId );
	}

	private String getMapperPrefix( String id ) {
		return MAPPER_PREFIX + id;
	}
}
