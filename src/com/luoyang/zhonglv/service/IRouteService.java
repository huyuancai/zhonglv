package com.luoyang.zhonglv.service;

import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.vo.RouteTypeVO;
import com.luoyang.zhonglv.vo.RouteVO;

public interface IRouteService {
	/**
	 * 分页查询线路
	 * 
	 * @param currentPage
	 *            当前页数
	 * @param recommendPageSize
	 *            查询推荐线路的条数
	 * @param notRecommendPageSize
	 *            查询不推荐线路的条数
	 * @return
	 * @throws IllegalAccessException
	 * @throws InvocationTargetException
	 */
	public List<RouteVO> getRouteByPageForHomePage( int currentPage, int recommendPageSize, int notRecommendPageSize,
			List<RouteTypeVO> routeTypeVOs ) throws IllegalAccessException, InvocationTargetException,
			DataAccessException;
	
	/**
	 * 根据线路类型分页查询
	 * @param currentPage
	 * @param pageSize
	 * @param routeTypeId
	 * @return
	 * @throws DataAccessException
	 */
	public List<RouteVO> getRouteByPageAndTypeForList( Map<String, Object> pageMap ) throws DataAccessException;

	/**
	 * 后台管理分页查询
	 * 
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<RouteVO> getRouteByPageForManager( Map<String, Object> paramMap ) throws DataAccessException;

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
	 * 
	 * @param routeId
	 * @return
	 * @throws DataAccessException
	 */
	public RouteVO getRouteById( Long routeId ) throws DataAccessException, ParseException;

	/**
	 * 添加线路
	 * 
	 * @param routeVO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addRoute( RouteVO routeVO ) throws DataAccessException;
	
	/**
	 * 更新线路
	 * @param routeVO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateRoute (RouteVO routeVO ) throws DataAccessException;
	
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
