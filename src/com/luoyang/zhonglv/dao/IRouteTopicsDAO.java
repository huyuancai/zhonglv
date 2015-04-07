package com.luoyang.zhonglv.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.dto.RouteTopicsDTO;

public interface IRouteTopicsDAO {
	
	/**
	 * 插入线路专题中间表
	 * @param routeTopicsDTOs
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addRouteTopics(List<RouteTopicsDTO> routeTopicsDTOs) throws DataAccessException;
	
	/**
	 * 根据线路ID删除线路专题
	 * @param routeId
	 * @throws DataAccessException
	 */
	public void deleteRouteTopicsByRouteId( Long routeId ) throws DataAccessException;
	
	/**
	 * 根据专题ID删除线路专题
	 * @param topicsId
	 * @throws DataAccessException
	 */
	public void deleteRouteTopicsByTopicsId( Long topicsId ) throws DataAccessException;
	
	/**
	 * 根据线路ID获取线路专题
	 * @param routeId
	 * @return
	 * @throws DataAccessException
	 */
	public List<RouteTopicsDTO> getRouteTopicsByRouteId( Long routeId ) throws DataAccessException;
}
