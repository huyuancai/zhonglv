package com.luoyang.zhonglv.service;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.vo.SlideVO;

public interface ISlideService {
	/**
	 * 添加滑块
	 * @param slideVO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addSlide( SlideVO slideVO ) throws DataAccessException;
	
	/**
	 * 后台管理分页查询
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<SlideVO> getSlideByPageForManager( Map<String, Object> paramMap ) throws DataAccessException;
	
	/**
	 * 查询滑块数量
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public Long getSlideCount( Map<String, Object> paramMap ) throws DataAccessException ;
}