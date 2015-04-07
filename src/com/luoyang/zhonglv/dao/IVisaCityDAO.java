package com.luoyang.zhonglv.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.dto.VisaCityDTO;

public interface IVisaCityDAO {

	/**
	 * 获取所有的签发城市
	 * @return
	 * @throws DataAccessException
	 */
	public List<VisaCityDTO> getAllVisaCity() throws DataAccessException;
	
	/**
	 * 添加签发城市
	 * @param cityName
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addVisaCity( String cityName ) throws DataAccessException;
	
	/**
	 * 更新签发城市
	 * @param visaCityMap
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateVisaCity(Map<String, Object> visaCityMap) throws DataAccessException;
	
	/**
	 * 删除签发城市
	 * @param cityId
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteVisaCity(Long cityId) throws DataAccessException;
	
	/**
	 * 根据签发城市ID获取签发城市名称
	 * @param cityId
	 * @return
	 * @throws DataAccessException
	 */
	public String getVisaCityNameById( Long cityId ) throws DataAccessException;
}
