package com.luoyang.zhonglv.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.service.BaseService;
import com.luoyang.zhonglv.dao.ITourismNewsDAO;
import com.luoyang.zhonglv.dto.TourismNewsDTO;
import com.luoyang.zhonglv.service.ITourismNewsService;
import com.luoyang.zhonglv.util.BeanUtils;
import com.luoyang.zhonglv.vo.TourismNewsVO;

public class TourismNewsServiceImpl extends BaseService implements ITourismNewsService {
	private ITourismNewsDAO tourismNewsDAO;
	
	public boolean addTourismNews( TourismNewsVO tourismNewsVO ) throws DataAccessException {
		boolean flag = false;
		TourismNewsDTO tourismNewsDTO = null;
		if ( null != tourismNewsVO ) {
			tourismNewsDTO = BeanUtils.copyObject( tourismNewsVO, TourismNewsDTO.class );
			flag = tourismNewsDAO.addTourismNews( tourismNewsDTO );
		}
		return flag;
	}
	
	public List<TourismNewsVO> getTourismNewsByPageForHome( int currentPage, int pageSize ) throws DataAccessException {
		List<TourismNewsVO> tourismNewsVOs = new ArrayList<TourismNewsVO>();
		List<TourismNewsDTO> tourismNewsDTOs = null;
		Map<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put("currentPage", currentPage);
		pageMap.put("pageSize", pageSize);
		tourismNewsDTOs = tourismNewsDAO.getTourismNewsByPageForHome( pageMap );
		if ( null != tourismNewsDTOs && tourismNewsDTOs.size() > 0 ) {
			tourismNewsVOs = BeanUtils.copyList( tourismNewsDTOs, TourismNewsVO.class );
		}
		return tourismNewsVOs;
	}
	
	public List<TourismNewsVO> getTourismNewsByPageForManager( Map<String, Object> paramMap )
			throws DataAccessException {
		if ( null == paramMap ) {
			return null;
		}
		List<TourismNewsVO> tourismNewsVOs = null;
		List<TourismNewsDTO> tourismNewsDTOs = tourismNewsDAO.getTourismNewsByPageForManager( paramMap );
		if ( null != tourismNewsDTOs && tourismNewsDTOs.size() > 0 ) {
			tourismNewsVOs = BeanUtils.copyList( tourismNewsDTOs, TourismNewsVO.class );
		}
		return tourismNewsVOs;
	}
	
	public List<TourismNewsVO> getTourismNewsByPageForList( Map<String, Object> pageMap )
			throws DataAccessException, ParseException {
		List<TourismNewsVO> tourismNewsVOs = new ArrayList<TourismNewsVO>();
		List<TourismNewsDTO> tourismNewsDTOs = null;
		tourismNewsDTOs = tourismNewsDAO.getTourismNewsByPageForList( pageMap );
		tourismNewsVOs = BeanUtils.copyList( tourismNewsDTOs, TourismNewsVO.class );
		if ( null != tourismNewsVOs && tourismNewsVOs.size() > 0 ) {
			String NewsCreateTime = "";
			Date date = null;
			SimpleDateFormat dateFormat = new SimpleDateFormat( "yyyy-MM-dd" );
			for ( TourismNewsVO tourismNewsVO : tourismNewsVOs ) {
				NewsCreateTime = tourismNewsVO.getNewsCreateTime();
				date = dateFormat.parse( NewsCreateTime );
				NewsCreateTime = dateFormat.format( date );
				tourismNewsVO.setNewsCreateTime( NewsCreateTime );

			}
		}
		return tourismNewsVOs;
	}

	public Long getTourismNewsCount( Map<String, Object> paramMap ) throws DataAccessException {
		if ( null == paramMap ) {
			return null;
		}
		return tourismNewsDAO.getTourismNewsCount( paramMap );
	}
	
	public TourismNewsVO getTourismNewsById( Long newsId ) throws DataAccessException, ParseException {
		TourismNewsVO tourismNewsVO = null;
		TourismNewsDTO tourismNewsDTO = tourismNewsDAO.getTourismNewsById( newsId );
		if ( null != tourismNewsDTO ) {
			tourismNewsVO = BeanUtils.copyObject( tourismNewsDTO, TourismNewsVO.class );
			String content = tourismNewsVO.getNewsContent();
			String newsCreateTime = "";
			Date date = null;
			SimpleDateFormat dateFormat = new SimpleDateFormat( "yyyy-MM-dd" );
			newsCreateTime = tourismNewsVO.getNewsCreateTime();
			date = dateFormat.parse( newsCreateTime );
			newsCreateTime = dateFormat.format( date );
			tourismNewsVO.setNewsCreateTime( newsCreateTime );
			if ( StringUtils.isNotEmpty( content ) ) {
				tourismNewsVO.setNewsContent( content.replace( "\n", "" ).replace( "\r", "" ) );
			}
		}
		return tourismNewsVO;
	}
	
	public boolean updateTourismNews ( TourismNewsVO tourismNewsVO ) throws DataAccessException {
		boolean flag = false;
		TourismNewsDTO tourismNewsDTO = null;
		if ( null != tourismNewsVO ) {
			tourismNewsDTO = BeanUtils.copyObject( tourismNewsVO, TourismNewsDTO.class );
			flag = tourismNewsDAO.updateTourismNews( tourismNewsDTO );
		}
		return flag;
	}
	
	public void deleteTourismNews( Long newsId ) throws DataAccessException {
		tourismNewsDAO.deleteTourismNews( newsId );
	}
	
	public void deleteTourismNewsByIds( List<Long> newsIds ) throws DataAccessException {
		tourismNewsDAO.deleteTourismNewsByIds( newsIds );
	}
	
	//----------------------------getter/setter-------------------------//
	public void setTourismNewsDAO( ITourismNewsDAO tourismNewsDAO ) {
		this.tourismNewsDAO = tourismNewsDAO;
	}
}
