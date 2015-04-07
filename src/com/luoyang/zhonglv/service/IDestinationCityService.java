package com.luoyang.zhonglv.service;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.vo.DestinationCityVO;

/**
 * 目的地城市Service
 * Descriptions
 *
 * @version 2015-3-25
 * @author YuancaiHu
 * @since JDK1.7
 *
 */
public interface IDestinationCityService {

	/**
	 * 获取所有的目的地城市
	 * @return
	 * @throws DataAccessException
	 */
	public List<DestinationCityVO> getAllDestinationCity() throws DataAccessException;
	
	/**
	 * 添加目的地城市
	 * @param desCityName
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addDestinationCity(String desCityName) throws DataAccessException;
	
	/**
	 * 更新目的地城市
	 * @param desCityMap
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateDestinationCity(Map<String, Object> desCityMap) throws DataAccessException;
	
	/**
	 * 删除目的地城市
	 * @param desCityId
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteDestinationCity(Long desCityId) throws DataAccessException;
}
