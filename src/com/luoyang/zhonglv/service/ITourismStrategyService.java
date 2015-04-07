package com.luoyang.zhonglv.service;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.vo.TourismStrategyVO;

public interface ITourismStrategyService {

	/**
	 * 添加旅游攻略
	 * 
	 * @param tourismStrategyVO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addTourismStrategy( TourismStrategyVO tourismStrategyVO ) throws DataAccessException;

	/**
	 * 查询旅游攻略在首页上显示
	 * 
	 * @param currentPage
	 * @param pageSize
	 * @return
	 * @throws DataAccessException
	 */
	public List<TourismStrategyVO> getTourismStrategyByPageForHome( int currentPage, int pageSize )
			throws DataAccessException;

	/**
	 * 分页查询旅游攻略
	 * 
	 * @param pageMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<TourismStrategyVO> getTourismStrategyByPageForList( Map<String, Object> pageMap )
			throws DataAccessException, ParseException;
	
	/**
	 * 后台管理分页查询
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<TourismStrategyVO> getTourismStrategyByPageForManager( Map<String, Object> paramMap )
			throws DataAccessException;

	/**
	 * 获取旅游攻略数量
	 * 
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public Long getTourismStrategyCount( Map<String, Object> paramMap ) throws DataAccessException;

	/**
	 * 根据Id获取旅游攻略信息
	 * 
	 * @param strategyId
	 * @return
	 * @throws DataAccessException
	 */
	public TourismStrategyVO getTourismStrategyById( Long strategyId ) throws DataAccessException, ParseException;
	
	/**
	 * 更新旅游攻略信息
	 * @param tourismStrategyVO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateTourismStrategy ( TourismStrategyVO tourismStrategyVO ) throws DataAccessException;
	
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
