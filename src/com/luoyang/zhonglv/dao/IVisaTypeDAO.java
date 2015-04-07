package com.luoyang.zhonglv.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.dto.VisaTypeDTO;

public interface IVisaTypeDAO {
	
	/**
	 * 获取所有的签证类型
	 * @return
	 * @throws DataAccessException
	 */
	public List<VisaTypeDTO> getAllVisaType() throws DataAccessException;
	
	/**
	 * 添加签证类型
	 * @param typeName
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addVisaType( String typeName ) throws DataAccessException;
	
	/**
	 * 更新签证类型
	 * @param visaTypeMap
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateVisaType(Map<String, Object> visaTypeMap) throws DataAccessException;
	
	/**
	 * 删除签证类型
	 * @param typeId
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteVisaType(Long typeId) throws DataAccessException;
	
	/**
	 * 根据类型ID获取类型名称
	 * @param typeId
	 * @return
	 * @throws DataAccessException
	 */
	public String getVisaTypeNameById( Long typeId ) throws DataAccessException;
}
