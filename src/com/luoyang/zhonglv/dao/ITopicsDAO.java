package com.luoyang.zhonglv.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.dto.TopicsDTO;

public interface ITopicsDAO {
	/**
	 * 获取所有的专题
	 * @return
	 */
	public List<TopicsDTO> getAllTopics() throws DataAccessException;
	
	/**
	 * 添加专题
	 * @param routeTopicsName
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addTopics(String routeTopicsName) throws DataAccessException;
	
	/**
	 * 更新专题
	 * @param routeTopicsMap
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateTopics(Map<String, Object> routeTopicsMap ) throws DataAccessException;
	
	/**
	 * 删除专题
	 * @param routeTopicsId
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteTopics(Long routeTopicsId ) throws DataAccessException;
	
	/**
	 * 根据专题Id获取专题名称
	 * @param routeTopicsId
	 * @return
	 * @throws DataAccessException
	 */
	public String getTopicsNameById(Long routeTopicsId) throws DataAccessException;
}
