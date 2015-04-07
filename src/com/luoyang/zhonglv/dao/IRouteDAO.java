package com.luoyang.zhonglv.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.dto.RouteDTO;

public interface IRouteDAO {
	/**
	 * 根据线路类型和是否推荐查询线路并且分页
	 * 
	 * @param pageVO
	 * @return
	 */
	public List<RouteDTO> getRouteByTypeAndRecommendAndPage( Map<String, Object> pageMap ) throws DataAccessException;
	
	/**
	 * 根据线路类型分页查询
	 * @param pageMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<RouteDTO> getRouteByPageAndTypeForList( Map<String, Object> pageMap ) throws DataAccessException;

	/**
	 * 后台管理分页查询
	 * 
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<RouteDTO> getRouteByPageForManager( Map<String, Object> paramMap ) throws DataAccessException;

	/**
	 * 后台管理分页查询数量
	 * 
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public Long getRouteCount( Map<String, Object> paramMap ) throws DataAccessException;

	/**
	 * 根据线路ID获取线路信息
	 * @param routeId
	 * @return
	 * @throws DataAccessException
	 */
	public RouteDTO getRouteById( Long routeId ) throws DataAccessException;

	/**
	 * 添加线路
	 * 
	 * @param routeDTO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addRoute( RouteDTO routeDTO ) throws DataAccessException;
	
	/**
	 * 更新线路
	 * @param routeDTO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateRoute(RouteDTO routeDTO) throws DataAccessException;
	
	/**
	 * 删除线路
	 * @param routeId
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteRoute( Long routeId ) throws DataAccessException;
	
	/**
	 * 根据线路类型Id删除线路
	 * @param routeTypeId
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteRouteByRouteTypeId( Long routeTypeId ) throws DataAccessException;
	
	/**
	 * 根据线路专题Id删除线路
	 * @param routeTypeId
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteRouteByRouteTopicsId( Long routeTypeId ) throws DataAccessException;
	
	/**
	 * 批量删除线路
	 * @param routeIds
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteRouteByIds( List<Long> routeIds ) throws DataAccessException;
	
	/**
	 * 批量推荐线路
	 * @param routeIds
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateRouteRecommend( List<Long> routeIds ) throws DataAccessException;
	
	/**
	 * 批量取消推荐线路
	 * @param routeIds
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateCancelRouteRecommend( List<Long> routeIds ) throws DataAccessException;
	
}
