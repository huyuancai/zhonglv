package com.luoyang.zhonglv.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.dto.SlideDTO;

public interface ISlideDAO {
	/**
	 * 添加滑块
	 * @param slideDTO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean addSlide( SlideDTO slideDTO ) throws DataAccessException;
	
	/**
	 * 后台管理分页查询
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public List<SlideDTO> getSlideByPageForManager( Map<String, Object> paramMap ) throws DataAccessException;
	
	/**
	 * 查询滑块数量
	 * @param paramMap
	 * @return
	 * @throws DataAccessException
	 */
	public Long getSlideCount( Map<String, Object> paramMap ) throws DataAccessException;
}
