package com.luoyang.zhonglv.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.dto.RouteTypeDTO;

public interface IRouteTypeDAO {
	/**
	 * 获取所有的线路类型
	 * @return
	 */
	public List<RouteTypeDTO> getAllRouteType() throws DataAccessException;
	
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
	public boolean updateRouteType(Map<String, Object> routeTypeMap ) throws DataAccessException;
	
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
