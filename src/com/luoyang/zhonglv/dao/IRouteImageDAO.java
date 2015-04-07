package com.luoyang.zhonglv.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.dto.RouteImageDTO;

public interface IRouteImageDAO {
	/**
	 * 添加线路图片
	 * @param routeImageDTOs
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addRouteImages( List<RouteImageDTO> routeImageDTOs ) throws DataAccessException;
	
	/**
	 * 根据线路Id获取线路图片信息
	 * @param routeId
	 * @return
	 * @throws DataAccessException
	 */
	public List<RouteImageDTO> getRouteImagesByRouteId( Long routeId ) throws DataAccessException;
	
	/**
	 * 根据图片Id删除图片信息
	 * @param imageId
	 * @throws DataAccessException
	 */
	public void deleteRouteImageByImageId( Long imageId ) throws DataAccessException;
	
	/**
	 * 根据线路Id删除图片信息
	 * @param routeId
	 * @throws DataAccessException
	 */
	public void deleteRouteImageByRouteId( Long routeId ) throws DataAccessException;
	
	/**
	 * 根据线路Id批量删除图片信息
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
}
