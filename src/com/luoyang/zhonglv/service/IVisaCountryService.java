package com.luoyang.zhonglv.service;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.vo.VisaCountryVO;

public interface IVisaCountryService {

	/**
	 * 获取所有的签证国家
	 * @return
	 * @throws DataAccessException
	 */
	public List<VisaCountryVO> getAllVisaCountry() throws DataAccessException;
	
	/**
	 * 添加签证国家
	 * @param countryName
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addVisaCountry( String countryName ) throws DataAccessException;
	
	/**
	 * 更新签证国家
	 * @param visaCountryMap
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateVisaCountry( Map<String, Object> visaCountryMap ) throws DataAccessException;
	
	/**
	 * 删除签证国家
	 * @param countryId
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteVisaCountry( Long countryId ) throws DataAccessException;
	
	/**
	 * 根据国家ID获取国家名称
	 * @param countryId
	 * @return
	 * @throws DataAccessException
	 */
	public String getVisaCountryNameById( Long countryId ) throws DataAccessException;
}
