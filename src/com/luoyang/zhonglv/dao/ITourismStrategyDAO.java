package com.luoyang.zhonglv.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.dto.TourismStrategyDTO;

public interface ITourismStrategyDAO {
	
	/**
	 * 添加旅游攻略
	 * @param tourismNewsDTO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addTourismStrategy( TourismStrategyDTO tourismStrategyDTO ) throws DataAccessException;
	
	/**
	 * 查询旅游攻略在首页上显示
	 * @param pageMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<TourismStrategyDTO> getTourismStrategyByPageForHome( Map<String,Object> pageMap) throws DataAccessException;
	
	/**
	 * 后台管理分页查询
	 * @param pageMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<TourismStrategyDTO> getTourismStrategyByPageForManager( Map<String, Object> pageMap )
			throws DataAccessException;
	
	/**
	 * 分页查询旅游攻略
	 * @param pageMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<TourismStrategyDTO> getTourismStrategyByPageForList( Map<String,Object> pageMap) throws DataAccessException;
	
	/**
	 * 获取旅游攻略数量
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public Long getTourismStrategyCount( Map<String, Object> paramMap ) throws DataAccessException;
	
	/**
	 * 根据Id获取旅游攻略信息
	 * @param strategyId
	 * @return
	 * @throws DataAccessException
	 */
	public TourismStrategyDTO getTourismStrategyById( Long strategyId ) throws DataAccessException;
	
	/**
	 * 更新旅游攻略信息
	 * @param tourismStrategyDTO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateTourismStrategy( TourismStrategyDTO tourismStrategyDTO ) throws DataAccessException;
	
	/**
	 * 删除旅游攻略信息
	 * @param strategyId
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteTourismStrategy( Long strategyId ) throws DataAccessException;
	
	/**
	 * 批量删除旅游攻略信息
	 * @param strategyIds
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteTourismStrategyByIds( List<Long> strategyIds ) throws DataAccessException;
}
