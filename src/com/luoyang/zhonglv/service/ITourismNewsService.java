package com.luoyang.zhonglv.service;

import java.text.ParseException;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.vo.TourismNewsVO;

public interface ITourismNewsService {
	
	/**
	 * 添加旅游资讯
	 * @param tourismNewsVO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addTourismNews( TourismNewsVO tourismNewsVO ) throws DataAccessException;
	
	/**
	 * 查询资讯信息在首页显示
	 * @param currentPage
	 * @param pageSize
	 * @return
	 * @throws DataAccessException
	 */
	public List<TourismNewsVO> getTourismNewsByPageForHome( int currentPage, int pageSize ) throws DataAccessException;
	
	/**
	 * 后台管理分页查询资讯信息
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<TourismNewsVO> getTourismNewsByPageForManager( Map<String, Object> paramMap ) throws DataAccessException;
	
	/**
	 * 分页查询旅游资讯
	 * 
	 * @param pageMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<TourismNewsVO> getTourismNewsByPageForList( Map<String, Object> pageMap )
			throws DataAccessException, ParseException;
	
	/**
	 * 获取旅游资讯数量
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public Long getTourismNewsCount( Map<String, Object> paramMap ) throws DataAccessException;
	
	/**
	 * 根据Id获取旅游资讯信息
	 * 
	 * @param newsId
	 * @return
	 * @throws DataAccessException
	 */
	public TourismNewsVO getTourismNewsById( Long newsId ) throws DataAccessException, ParseException;
	
	/**
	 * 更新旅游资讯信息
	 * @param tourismNewsVO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateTourismNews ( TourismNewsVO tourismNewsVO ) throws DataAccessException;
	
	/**
	 * 删除旅游资讯信息
	 * @param newsId
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteTourismNews( Long newsId ) throws DataAccessException;
	
	/**
	 * 批量删除旅游资讯信息
	 * @param newsIds
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteTourismNewsByIds( List<Long> newsIds ) throws DataAccessException;
}
