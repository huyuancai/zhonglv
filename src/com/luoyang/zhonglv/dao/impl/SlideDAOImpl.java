package com.luoyang.zhonglv.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.dao.BaseDAO;
import com.luoyang.zhonglv.dao.ISlideDAO;
import com.luoyang.zhonglv.dto.SlideDTO;

public class SlideDAOImpl extends BaseDAO implements ISlideDAO {
	private static final String MAPPER_PREFIX = "com.luoyang.zhonglv.dao.ISlideDAO.";

	public boolean addSlide( SlideDTO slideDTO ) throws DataAccessException {
		int i = 0;
		i = getSqlSession().insert( getMapperPrefix( "addSlide" ), slideDTO );
		if ( i > 0 ) {
			return true;
		}
		return false;
	}
	
	public List<SlideDTO> getSlideByPageForManager( Map<String, Object> paramMap ) throws DataAccessException {
		return getSqlSession().selectList( getMapperPrefix( "getSlideByPageForManager" ), paramMap );
	}
	
	public Long getSlideCount( Map<String, Object> paramMap ) throws DataAccessException {
		return getSqlSession().selectOne( getMapperPrefix( "getSlideCount" ), paramMap );
	}


	private String getMapperPrefix( String id ) {
		return MAPPER_PREFIX + id;
	}
}
