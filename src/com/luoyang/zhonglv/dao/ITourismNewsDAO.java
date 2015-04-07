package com.luoyang.zhonglv.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.dto.TourismNewsDTO;

public interface ITourismNewsDAO {

	/**
	 * 添加旅游资讯
	 * @param tourismNewsDTO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addTourismNews( TourismNewsDTO tourismNewsDTO ) throws DataAccessException;
	
	/**
	 * 查询资讯信息在首页显示
	 * @param pageMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<TourismNewsDTO> getTourismNewsByPageForHome( Map<String,Object> pageMap) throws DataAccessException;
	
	/**
	 * 后台管理分页查询资讯信息
	 * @param pageMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<TourismNewsDTO> getTourismNewsByPageForManager( Map<String, Object> pageMap ) throws DataAccessException;
	
	/**
	 * 分页查询旅游资讯
	 * @param pageMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<TourismNewsDTO> getTourismNewsByPageForList( Map<String,Object> pageMap) throws DataAccessException;
	
	/**
	 * 获取旅游资讯数量
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public Long getTourismNewsCount( Map<String, Object> paramMap ) throws DataAccessException;
	
	/**
	 * 根据Id获取旅游资讯信息
	 * @param newsId
	 * @return
	 * @throws DataAccessException
	 */
	public TourismNewsDTO getTourismNewsById( Long newsId ) throws DataAccessException;
	
	/**
	 * 更新旅游资讯
	 * @param tourismNewsDTO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateTourismNews( TourismNewsDTO tourismNewsDTO ) throws DataAccessException;
	
	/**
	 * 删除旅游资讯
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
