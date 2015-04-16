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
	
	/**
	 * 根据Id获取滑块信息
	 * @param slideId
	 * @return
	 * @throws DataAccessException
	 */
	public SlideVO getSlideById( Long slideId ) throws DataAccessException;
	
	/**
	 * 根据Id删除滑块信息
	 * @param slideId
	 * @throws DataAccessException
	 */
	public void deleteSlide( Long slideId ) throws DataAccessException;
	
	/**
	 * 修改滑块信息
	 * @param slideVO
	 * @return
	 * @throws DataAccessException
	 */
	public boolean updateSlide( SlideVO slideVO ) throws DataAccessException;
}
