package com.luoyang.zhonglv.service;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.vo.SceneryVO;

public interface ISceneryService {
	
	/**
	 * 根据是否推荐查询景点并且分页
	 * @param currentPage
	 * @param recommendPageSize
	 * @param notRecommendPageSize
	 * @return
	 * @throws DataAccessException
	 */
	public List<SceneryVO> getSceneryByRecommendAndPage(int currentPage, int recommendPageSize, int notRecommendPageSize) throws DataAccessException;
	
	/**
	 * 添加景点
	 * @param sceneryDTO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addScenery( SceneryVO sceneryDTO ) throws DataAccessException;
	
	/**
	 * 更新景点信息
	 * @param sceneryVO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateScenery ( SceneryVO sceneryVO ) throws DataAccessException;
	
	/**
	 * 后台管理分页查询
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<SceneryVO> getSceneryByPageAndManager(Map<String,Object> paramMap) throws DataAccessException;
	
	/**
	 * 分页查询景点列表
	 * @param pageMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<SceneryVO> getSceneryByPageForList( Map<String,Object> pageMap) throws DataAccessException;
	
	/**
	 * 后台管理分页查询数量
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public Long getSceneryCount( Map<String, Object> paramMap ) throws DataAccessException;
	
	/**
	 * 根据景点ID获取景点信息
	 * @param sceneryId
	 * @return
	 * @throws DataAccessException
	 */
	public SceneryVO getSceneryById( Long sceneryId ) throws DataAccessException;
	
	/**
	 * 删除景点信息
	 * @param sceneryId
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteScenery( Long sceneryId ) throws DataAccessException;
	
	/**
	 * 批量删除景点
	 * @param sceneryIds
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteSceneryByIds( List<Long> sceneryIds ) throws DataAccessException;
	
	/**
	 * 批量推荐景点
	 * @param sceneryIds
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateSceneryRecommend( List<Long> sceneryIds ) throws DataAccessException;
	
	/**
	 * 批量取消推荐景点
	 * @param sceneryIds
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateCancelSceneryRecommend( List<Long> sceneryIds ) throws DataAccessException;
}
