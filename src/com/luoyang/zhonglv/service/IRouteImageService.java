package com.luoyang.zhonglv.service;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.vo.RouteImageVO;

public interface IRouteImageService {
	/**
	 * 添加线路图片
	 * @param routeImageVOs
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addRouteImages( List<RouteImageVO> routeImageVOs ) throws DataAccessException;
	
	/**
	 * 根据线路ID获取线路图片信息
	 * @param routeId
	 * @return
	 * @throws DataAccessException
	 */
	public List<RouteImageVO> getRouteImagesByRouteId( Long routeId ) throws DataAccessException;
	
	/**
	 * 根据图片ID删除图片信息
	 * @param imageId
	 * @throws DataAccessException
	 */
	public void deleteRouteImageByImageId( Long imageId ) throws DataAccessException;
	
	/**
	 * 根据线路ID删除图片信息
	 * @param routeId
	 * @throws DataAccessException
	 */
	public void deleteRouteImageByRouteId( Long routeId ) throws DataAccessException;
	
	/**
	 * 根据线路ID批量删除图片信息
	 * @param routeIds
	 * @throws DataAccessException
	 */
	public void deleteRouteImageByRouteIds( List<Long> routeIds ) throws DataAccessException;
	
	/**
	 * 根据图片ID获取图片路径信息
	 * @param imageId
	 * @return
	 * @throws DataAccessException
	 */
	public String getImagePathByImageId( Long imageId ) throws DataAccessException;
	
	/**
	 * 根据图片ID修改图片别名
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateImageAlias( Map<String, Object> paramMap ) throws DataAccessException;
}
