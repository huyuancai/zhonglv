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
import com.luoyang.zhonglv.dao.ITourismStrategyDAO;
import com.luoyang.zhonglv.dto.TourismStrategyDTO;
import com.luoyang.zhonglv.service.ITourismStrategyService;
import com.luoyang.zhonglv.util.BeanUtils;
import com.luoyang.zhonglv.vo.TourismStrategyVO;

public class TourismStrategyServiceImpl extends BaseService implements ITourismStrategyService {
	private ITourismStrategyDAO tourismStrategyDAO;

	public boolean addTourismStrategy( TourismStrategyVO tourismStrategyVO ) throws DataAccessException {
		boolean flag = false;
		TourismStrategyDTO tourismStrategyDTO = null;
		if ( null != tourismStrategyVO ) {
			tourismStrategyDTO = BeanUtils.copyObject( tourismStrategyVO, TourismStrategyDTO.class );
			flag = tourismStrategyDAO.addTourismStrategy( tourismStrategyDTO );
		}
		return flag;
	}

	public List<TourismStrategyVO> getTourismStrategyByPageForHome( int currentPage, int pageSize )
			throws DataAccessException {
		List<TourismStrategyVO> tourismStrategyVOs = new ArrayList<TourismStrategyVO>();
		List<TourismStrategyDTO> tourismStrategyDTOs = null;
		Map<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put( "currentPage", currentPage );
		pageMap.put( "pageSize", pageSize );
		tourismStrategyDTOs = tourismStrategyDAO.getTourismStrategyByPageForHome( pageMap );
		if ( null != tourismStrategyDTOs && tourismStrategyDTOs.size() > 0 ) {
			tourismStrategyVOs = BeanUtils.copyList( tourismStrategyDTOs, TourismStrategyVO.class );
		}
		return tourismStrategyVOs;
	}

	public List<TourismStrategyVO> getTourismStrategyByPageForList( Map<String, Object> pageMap )
			throws DataAccessException, ParseException {
		List<TourismStrategyVO> tourismStrategyVOs = new ArrayList<TourismStrategyVO>();
		List<TourismStrategyDTO> tourismStrategyDTOs = null;
		tourismStrategyDTOs = tourismStrategyDAO.getTourismStrategyByPageForList( pageMap );
		tourismStrategyVOs = BeanUtils.copyList( tourismStrategyDTOs, TourismStrategyVO.class );
		if ( null != tourismStrategyVOs && tourismStrategyVOs.size() > 0 ) {
			String strategyCreateTime = "";
			Date date = null;
			SimpleDateFormat dateFormat = new SimpleDateFormat( "yyyy-MM-dd" );
			for ( TourismStrategyVO tourismStrategyVO : tourismStrategyVOs ) {
				strategyCreateTime = tourismStrategyVO.getStrategyCreateTime();
				date = dateFormat.parse( strategyCreateTime );
				strategyCreateTime = dateFormat.format( date );
				tourismStrategyVO.setStrategyCreateTime( strategyCreateTime );

			}
		}
		return tourismStrategyVOs;
	}

	public List<TourismStrategyVO> getTourismStrategyByPageForManager( Map<String, Object> paramMap )
			throws DataAccessException {
		if ( null == paramMap ) {
			return null;
		}
		List<TourismStrategyVO> tourismStrategyVOs = null;
		List<TourismStrategyDTO> tourismStrategyDTOs = tourismStrategyDAO.getTourismStrategyByPageForManager( paramMap );
		if ( null != tourismStrategyDTOs && tourismStrategyDTOs.size() > 0 ) {
			tourismStrategyVOs = BeanUtils.copyList( tourismStrategyDTOs, TourismStrategyVO.class );
		}
		return tourismStrategyVOs;
	}

	public Long getTourismStrategyCount( Map<String, Object> paramMap ) throws DataAccessException {
		if ( null == paramMap ) {
			return null;
		}
		return tourismStrategyDAO.getTourismStrategyCount( paramMap );
	}

	public TourismStrategyVO getTourismStrategyById( Long strategyId ) throws DataAccessException, ParseException {
		TourismStrategyVO tourismStrategyVO = null;
		TourismStrategyDTO tourismStrategyDTO = tourismStrategyDAO.getTourismStrategyById( strategyId );
		if ( null != tourismStrategyDTO ) {
			tourismStrategyVO = BeanUtils.copyObject( tourismStrategyDTO, TourismStrategyVO.class );
			String content = tourismStrategyVO.getStrategyContent();
			String strategyCreateTime = "";
			Date date = null;
			SimpleDateFormat dateFormat = new SimpleDateFormat( "yyyy-MM-dd" );
			strategyCreateTime = tourismStrategyVO.getStrategyCreateTime();
			date = dateFormat.parse( strategyCreateTime );
			strategyCreateTime = dateFormat.format( date );
			tourismStrategyVO.setStrategyCreateTime( strategyCreateTime );
			if ( StringUtils.isNotEmpty( content ) ) {
				tourismStrategyVO.setStrategyContent( content.replace( "\n", "" ).replace( "\r", "" ) );
			}
		}
		return tourismStrategyVO;
	}
	
	public boolean updateTourismStrategy ( TourismStrategyVO tourismStrategyVO ) throws DataAccessException {
		boolean flag = false;
		TourismStrategyDTO tourismStrategyDTO = null;
		if ( null != tourismStrategyVO ) {
			tourismStrategyDTO = BeanUtils.copyObject( tourismStrategyVO, TourismStrategyDTO.class );
			flag = tourismStrategyDAO.updateTourismStrategy( tourismStrategyDTO );
		}
		return flag;
	}
	
	public void deleteTourismStrategy( Long strategyId ) throws DataAccessException {
		tourismStrategyDAO.deleteTourismStrategy( strategyId );
	}
	
	public void deleteTourismStrategyByIds( List<Long> strategyIds ) throws DataAccessException {
		tourismStrategyDAO.deleteTourismStrategyByIds( strategyIds );
	}

	// ----------------------------getter/setter-------------------------//
	public void setTourismStrategyDAO( ITourismStrategyDAO tourismStrategyDAO ) {
		this.tourismStrategyDAO = tourismStrategyDAO;
	}
}
