package com.luoyang.zhonglv.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.dto.VisaDTO;

public interface IVisaDAO {

	/**
	 * 获取所有的签证信息
	 * @return
	 * @throws DataAccessException
	 */
	public List<VisaDTO> getAllVisa() throws DataAccessException;
	
	/**
	 * 前台分页获取签证信息
	 * @param pageMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<VisaDTO> getVisaByPage( Map<String,Object> pageMap) throws DataAccessException;
	
	/**
	 * 后台分页获取签证信息
	 * @param pageMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<VisaDTO> getVisaByPageAndManager( Map<String,Object> pageMap) throws DataAccessException;
	
	/**
	 * 分页查询
	 * @param pageMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<VisaDTO> getVisaByPageForList( Map<String, Object> pageMap ) throws DataAccessException;
	
	/**
	 * 首页显示签证信息列表
	 * @param pageMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<VisaDTO> getVisaByPageForHome( Map<String,Object> pageMap) throws DataAccessException;
	
	/**
	 * 获取签证数量
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public Long getVisaCount( Map<String, Object> paramMap ) throws DataAccessException;
	
	/**
	 * 添加签证
	 * @param visaDTO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addVisa( VisaDTO visaDTO ) throws DataAccessException;
	
	/**
	 * 根据Id获取签证信息
	 * @param visaId
	 * @return
	 * @throws DataAccessException
	 */
	public VisaDTO getVisaById( Long visaId ) throws DataAccessException;
	
	/**
	 * 更新签证信息
	 * @param visaDTO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateVisa( VisaDTO visaDTO ) throws DataAccessException;
	
	/**
	 * 删除签证信息
	 * @param visaId
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteVisa( Long visaId ) throws DataAccessException;
	
	/**
	 * 批量删除签证信息
	 * @param visaIds
	 * @return
	 * @throws DataAccessException
	 */
	public void deleteVisaByIds( List<Long> visaIds ) throws DataAccessException;
}
