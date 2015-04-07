package com.luoyang.zhonglv.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.dao.BaseDAO;
import com.luoyang.zhonglv.dao.ITopicsDAO;
import com.luoyang.zhonglv.dto.TopicsDTO;

public class TopicsDAOImpl extends BaseDAO implements ITopicsDAO {
	private static final String MAPPER_PREFIX = "com.luoyang.zhonglv.dao.ITopicsDAO.";
	
	public List<TopicsDTO> getAllTopics() throws DataAccessException{
		return getSqlSession().selectList( getMapperPrefix("getAllTopics") );
	}
	
	public boolean addTopics(String routeTopicsName) throws DataAccessException{
		int i = 0;
		i = getSqlSession().insert(getMapperPrefix("addTopics"), routeTopicsName );
		if ( i > 0 ) {
			return true;
		}
		return false;
	}
	
	public boolean updateTopics(Map<String, Object> routeTopicsMap ) throws DataAccessException{
		int i = 0;
		i = getSqlSession().update(getMapperPrefix("updateTopics"),routeTopicsMap);
		if ( i > 0 ) {
			return true;
		}
		return false;
	}
	
	public void deleteTopics(Long routeTopicsId ) throws DataAccessException{
		getSqlSession().delete(getMapperPrefix("deleteTopics"),routeTopicsId);
	}
	
	public String getTopicsNameById(Long routeTopicsId) throws DataAccessException{
		return getSqlSession().selectOne(getMapperPrefix("getTopicsNameById"), routeTopicsId);
	}
	
	private String getMapperPrefix( String id ) {
		return MAPPER_PREFIX + id;
	}
}
