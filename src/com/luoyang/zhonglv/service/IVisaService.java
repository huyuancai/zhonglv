package com.luoyang.zhonglv.service;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.vo.VisaVO;

public interface IVisaService {

	/**
	 * 后台分页查询签证信息
	 * @param pageMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<VisaVO> getVisaByPageAndManager( Map<String, Object> pageMap ) throws DataAccessException ;
	
	/**
	 * 首页显示签证信息列表
	 * @param currentPage
	 * @param pageSize
	 * @return
	 * @throws DataAccessException
	 */
	public List<VisaVO> getVisaByPageForHome( int currentPage, int pageSize ) throws DataAccessException;
	
	/**
	 * 分页查询
	 * @param pageMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<VisaVO> getVisaByPageForList( Map<String,Object> pageMap) throws DataAccessException;
	
	/**
	 * 获取签证数量
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public Long getVisaCount( Map<String, Object> paramMap ) throws DataAccessException;
	
	/**
	 * 添加签证
	 * @param visaVO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addVisa( VisaVO visaVO ) throws DataAccessException;
	
	/**
	 * 根据Id获取签证信息
	 * @param visaId
	 * @return
	 * @throws DataAccessException
	 */
	public VisaVO getVisaById( Long visaId ) throws DataAccessException;
	
	/**
	 * 更新签证信息
	 * @param visaVO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateVisa ( VisaVO visaVO ) throws DataAccessException;
	
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
