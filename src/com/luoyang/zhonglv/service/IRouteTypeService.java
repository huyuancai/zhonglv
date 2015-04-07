package com.luoyang.zhonglv.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.vo.RouteTypeVO;

public interface IRouteTypeService {
	/**
	 * 获取所有的线路类型
	 * @return
	 * @throws DataAccessException
	 */
	public List<RouteTypeVO> getAllRouteType() throws DataAccessException;
	
	/**
	 * 添加线路类型
	 * @param routeTypeName
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addRouteType(String routeTypeName) throws DataAccessException;
	
	/**
	 * 更新线路类型
	 * @param routeTypeMap
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateRouteType(Long routeTypeId, String routeTypeName  ) throws DataAccessException;
	
	/**
	 * 删除线路类型
	 * @param routeTypeId
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteRouteType(Long routeTypeId ) throws DataAccessException;
	
	/**
	 * 根据线路类型Id获取线路类型名称
	 * @param routeTypeId
	 * @return
	 * @throws DataAccessException
	 */
	public String getRouteTypeNameById(Long routeTypeId) throws DataAccessException;
}
