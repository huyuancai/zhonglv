package com.luoyang.zhonglv.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.dao.BaseDAO;
import com.luoyang.zhonglv.dao.IDepartureCityDAO;
import com.luoyang.zhonglv.dto.DepartureCityDTO;

/**
 * 出发城市DAO
 * Descriptions
 *
 * @version 2015-2-6
 * @author YuancaiHu
 * @since JDK1.7
 *
 */
public class DepartureCityDAOImpl extends BaseDAO implements IDepartureCityDAO {
	private static final String MAPPER_PREFIX = "com.luoyang.zhonglv.dao.IDepartureCityDAO.";

	public List<DepartureCityDTO> getAllDepartureCity() throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getAllDepartureCity" ) );
	}

	public String getDepartureCityNameById( Long depCityId ) throws DataAccessException {
		return getSqlSession().selectOne( getMapperPrefix( "getDepartureCityNameById" ), depCityId );
	}

	public boolean addDepartureCity( String depCityName ) throws DataAccessException {
		int i = 0;
		i = getSqlSession().insert( getMapperPrefix( "addDepartureCity" ), depCityName );
		if ( i > 0 ) {
			return true;
		}
		return false;
	}

	public boolean updateDepartureCity( Map<String, Object> depCityMap ) throws DataAccessException {
		int i = 0;
		i = getSqlSession().update( getMapperPrefix( "updateDepartureCity" ), depCityMap );
		if ( i > 0 ) {
			return true;
		}
		return false;
	}

	public void deleteDepartureCity( Long depCityId ) throws DataAccessException {
		getSqlSession().delete( getMapperPrefix( "deleteDepartureCity" ), depCityId );
	}

	private String getMapperPrefix( String id ) {
		return MAPPER_PREFIX + id;
	}
}
