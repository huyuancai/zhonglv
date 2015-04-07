package com.luoyang.zhonglv.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.vo.TopicsVO;

public interface ITopicsService {
	/**
	 * 获取所有的线路专题
	 * @return
	 * @throws DataAccessException
	 */
	public List<TopicsVO> getAllTopics() throws DataAccessException;
	
	/**
	 * 添加线路专题
	 * @param routeTopicsName
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addTopics(String routeTopicsName) throws DataAccessException;
	
	/**
	 * 更新线路专题
	 * @param routeTopicsMap
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateTopics(Long routeTopicsId, String routeTopicsName  ) throws DataAccessException;
	
	/**
	 * 删除线路专题
	 * @param routeTopicsId
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteTopics(Long routeTopicsId ) throws DataAccessException;
	
	/**
	 * 根据线路专题Id获取线路专题名称
	 * @param routeTopicsId
	 * @return
	 * @throws DataAccessException
	 */
	public String getTopicsNameById(Long routeTopicsId) throws DataAccessException;
}
