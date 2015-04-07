package com.luoyang.zhonglv.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.dto.DepartureCityDTO;

public interface IDepartureCityDAO {

	/**
	 * 获取所有的出发城市
	 * @return
	 * @throws DataAccessException
	 */
	public List<DepartureCityDTO> getAllDepartureCity() throws DataAccessException;
	
	/**
	 * 根据Id获取出发城市名称
	 * @param depCityId
	 * @return
	 * @throws DataAccessException
	 */
	public String getDepartureCityNameById(Long depCityId) throws DataAccessException;
	
	/**
	 * 添加出发城市
	 * @param depCityName
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addDepartureCity(String depCityName) throws DataAccessException;
	
	/**
	 * 更新出发城市
	 * @param depCityMap
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateDepartureCity(Map<String, Object> depCityMap) throws DataAccessException;
	
	/**
	 * 删除出发城市
	 * @param depCityId
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteDepartureCity(Long depCityId) throws DataAccessException;
}
