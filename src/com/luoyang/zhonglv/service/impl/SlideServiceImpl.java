package com.luoyang.zhonglv.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.service.BaseService;
import com.luoyang.zhonglv.dao.ISlideDAO;
import com.luoyang.zhonglv.dto.SlideDTO;
import com.luoyang.zhonglv.service.ISlideService;
import com.luoyang.zhonglv.util.BeanUtils;
import com.luoyang.zhonglv.vo.SlideVO;

public class SlideServiceImpl extends BaseService implements ISlideService {
	private ISlideDAO slideDAO;

	public boolean addSlide( SlideVO slideVO ) throws DataAccessException {
		SlideDTO slideDTO = null;
		boolean flag = false;
		if ( null != slideVO ) {
			slideDTO = BeanUtils.copyObject( slideVO, SlideDTO.class );
			flag = slideDAO.addSlide( slideDTO );
		}
		return flag;
	}

	public List<SlideVO> getSlideByPageForManager( Map<String, Object> paramMap ) throws DataAccessException {
		if ( null == paramMap ) {
			return null;
		}
		List<SlideVO> slideVOs = null;
		List<SlideDTO> slideDTOs = slideDAO.getSlideByPageForManager( paramMap );
		if ( null != slideDTOs && slideDTOs.size() > 0 ) {
			slideVOs = BeanUtils.copyList( slideDTOs, SlideVO.class );
		}
		return slideVOs;
	}

	public Long getSlideCount( Map<String, Object> paramMap ) throws DataAccessException {
		return slideDAO.getSlideCount( paramMap );
	}

	public SlideVO getSlideById( Long slideId ) throws DataAccessException {
		SlideVO slideVO = null;
		SlideDTO slideDTO = null;
		if ( null != slideId ) {
			slideDTO = slideDAO.getSlideById( slideId );
			if ( null != slideDTO ) {
				slideVO = BeanUtils.copyObject( slideDTO, SlideVO.class );
			}
		}
		return slideVO;
	}

	public void deleteSlide( Long slideId ) throws DataAccessException {
		slideDAO.deleteSlide( slideId );
	}
	
	public boolean updateSlide( SlideVO slideVO ) throws DataAccessException {
		SlideDTO slideDTO = null;
		boolean flag = false;
		if ( null != slideVO ) {
			slideDTO = BeanUtils.copyObject( slideVO, SlideDTO.class );
			flag = slideDAO.updateSlide( slideDTO );
		}
		return flag;
	}

	// -------------------------------getter/setter---------------------------//
	public void setSlideDAO( ISlideDAO slideDAO ) {
		this.slideDAO = slideDAO;
	}
}
