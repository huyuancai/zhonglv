package com.luoyang.zhonglv.service.impl;

import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.service.BaseService;
import com.luoyang.zhonglv.dao.IRouteDAO;
import com.luoyang.zhonglv.dao.IRouteImageDAO;
import com.luoyang.zhonglv.dao.IRouteTopicsDAO;
import com.luoyang.zhonglv.dto.RouteDTO;
import com.luoyang.zhonglv.dto.RouteImageDTO;
import com.luoyang.zhonglv.dto.RouteTopicsDTO;
import com.luoyang.zhonglv.service.IRouteService;
import com.luoyang.zhonglv.util.BeanUtils;
import com.luoyang.zhonglv.util.EnumDefine.ROUTE_RECOMMEND;
import com.luoyang.zhonglv.vo.RouteImageVO;
import com.luoyang.zhonglv.vo.RouteTypeVO;
import com.luoyang.zhonglv.vo.RouteVO;

/**
 * 路线service Descriptions
 * 
 * @version 2015-1-29
 * @author YuancaiHu
 * @since JDK1.7
 * 
 */
public class RouteServiceImpl extends BaseService implements IRouteService {
	private IRouteDAO routeDAO;
	private IRouteTopicsDAO routeTopicsDAO;
	private IRouteImageDAO routeImageDAO;

	public List<RouteVO> getRouteByPageForHomePage( int currentPage, int recommendPageSize, int notRecommendPageSize,
			List<RouteTypeVO> routeTypeVOs ) throws IllegalAccessException, InvocationTargetException,
			DataAccessException {

		List<RouteVO> routeVOs = new ArrayList<RouteVO>();
		List<RouteVO> routeTempVOs = null;
		List<RouteDTO> routeDTOs = null;
		Map<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put( "currentPage", currentPage );
		// 循环线路类型
		for ( RouteTypeVO routeTypeVO : routeTypeVOs ) {
			routeTempVOs = new ArrayList<RouteVO>();
			// 查询不是推荐的线路
			pageMap.put( "pageSize", notRecommendPageSize );
			pageMap.put( "routeRecommend", ROUTE_RECOMMEND.FALSE.getValue() );
			pageMap.put( "routeTypeId", routeTypeVO.getRouteTypeId() );
			routeDTOs = routeDAO.getRouteByTypeAndRecommendAndPage( pageMap );
			routeTempVOs.addAll( BeanUtils.copyList( routeDTOs, RouteVO.class ) );
			// 查询推荐的线路
			pageMap.put( "pageSize", recommendPageSize );
			pageMap.put( "routeRecommend", ROUTE_RECOMMEND.TRUE.getValue() );
			routeDTOs = routeDAO.getRouteByTypeAndRecommendAndPage( pageMap );
			routeTempVOs.addAll( BeanUtils.copyList( routeDTOs, RouteVO.class ) );

			for ( RouteVO routeVO : routeTempVOs ) {
				routeVO.setRouteTypeName( routeTypeVO.getRouteTypeName() );
			}
			routeVOs.addAll( routeTempVOs );
		}

		return routeVOs;
	}

	public List<RouteVO> getRouteByPageAndTypeForList( Map<String, Object> pageMap ) throws DataAccessException {
		List<RouteVO> routeVOs = new ArrayList<RouteVO>();
		List<RouteDTO> routeDTOs = null;
		routeDTOs = routeDAO.getRouteByPageAndTypeForList( pageMap );
		routeVOs = BeanUtils.copyList( routeDTOs, RouteVO.class );
		return routeVOs;
	}

	public List<RouteVO> getRouteByPageForManager( Map<String, Object> paramMap ) throws DataAccessException {
		if ( null == paramMap ) {
			return null;
		}
		List<RouteVO> routeVOs = null;
		List<RouteDTO> routeDTOs = routeDAO.getRouteByPageForManager( paramMap );
		if ( null != routeDTOs && routeDTOs.size() > 0 ) {
			routeVOs = BeanUtils.copyList( routeDTOs, RouteVO.class );
		}
		return routeVOs;
	}

	public Long getRouteCount( Map<String, Object> paramMap ) throws DataAccessException {
		if ( null == paramMap ) {
			return null;
		}
		Long routeCount = routeDAO.getRouteCount( paramMap );
		return routeCount;
	}

	public RouteVO getRouteById( Long routeId ) throws DataAccessException, ParseException {
		RouteVO routeVO = null;
		if ( null == routeId ) {
			return null;
		}
		RouteDTO routeDTO = routeDAO.getRouteById( routeId );
		List<RouteTopicsDTO> routeTopicsDTOs = routeTopicsDAO.getRouteTopicsByRouteId( routeId );
		List<RouteImageDTO> routeImageDTOs = routeImageDAO.getRouteImagesByRouteId( routeId );
		if ( null != routeDTO ) {
			routeVO = BeanUtils.copyObject( routeDTO, RouteVO.class );
			if ( null != routeTopicsDTOs && routeTopicsDTOs.size() > 0 ) {
				String topics[] = new String[routeTopicsDTOs.size()];
				for ( int i = 0; i< routeTopicsDTOs.size(); i++ ) {
					topics[i] = routeTopicsDTOs.get( i ).getTopicsId() + "";
				}
				routeVO.setTopics( topics );
			}
			if ( null != routeImageDTOs && routeImageDTOs.size() > 0 ) {
				List<RouteImageVO> routeImageVOs = BeanUtils.copyList( routeImageDTOs, RouteImageVO.class );
				routeVO.setRouteImageVOs( routeImageVOs );
			}
			String routeFeatureDesc = routeVO.getRouteFeatureDesc();
			String routeBookingPolicy = routeVO.getRouteBookingPolicy();
			String routeTips = routeVO.getRouteTips();
			String routeItinerary = routeVO.getRouteItinerary();
			String routeAdvisory = routeVO.getRouteAdvisory();
			String routeStrategy = routeVO.getRouteStrategy();
			if ( StringUtils.isNotEmpty( routeFeatureDesc ) ) {
				routeVO.setRouteFeatureDesc( routeVO.getRouteFeatureDesc().replace( "\n", "" ).replace( "\r", "" ) );
			}
			if ( StringUtils.isNotEmpty( routeBookingPolicy ) ) {
				routeVO.setRouteBookingPolicy( routeVO.getRouteBookingPolicy().replace( "\n", "" ).replace( "\r", "" ) );
			}
			if ( StringUtils.isNotEmpty( routeTips ) ) {
				routeVO.setRouteTips( routeVO.getRouteTips().replace( "\n", "" ).replace( "\r", "" ) );
			}
			if ( StringUtils.isNotEmpty( routeItinerary ) ) {
				routeVO.setRouteItinerary( routeVO.getRouteItinerary().replace( "\n", "" ).replace( "\r", "" ) );
			}
			if ( StringUtils.isNotEmpty( routeAdvisory ) ) {
				routeVO.setRouteAdvisory( routeVO.getRouteAdvisory().replace( "\n", "" ).replace( "\r", "" ) );
			}
			if ( StringUtils.isNotEmpty( routeStrategy ) ) {
				routeVO.setRouteStrategy( routeVO.getRouteStrategy().replace( "\n", "" ).replace( "\r", "" ) );
			}
		}
		return routeVO;
	}

	public boolean addRoute( RouteVO routeVO ) throws DataAccessException {
		boolean flag = false;
		RouteDTO routeDTO = null;
		if ( null != routeVO ) {
			routeDTO = BeanUtils.copyObject( routeVO, RouteDTO.class );
			flag = routeDAO.addRoute( routeDTO );
			flag = addRouteTopics( routeVO, flag, routeDTO );
		}
		return flag;
	}

	private boolean addRouteTopics( RouteVO routeVO, boolean flag, RouteDTO routeDTO ) {
		List<RouteTopicsDTO> routeTopicsDTOs;
		RouteTopicsDTO routeTopicsDTO;
		if ( null != routeVO.getTopics() && routeVO.getTopics().length > 0 && 0 != routeDTO.getRouteId() ) {
			routeTopicsDTOs = new ArrayList<RouteTopicsDTO>();
			for ( String topics : routeVO.getTopics() ) {
				routeTopicsDTO = new RouteTopicsDTO();
				routeTopicsDTO.setRouteId( routeDTO.getRouteId() );
				routeTopicsDTO.setTopicsId( Long.parseLong( topics ) );
				routeTopicsDTOs.add( routeTopicsDTO );
			}
			flag = routeTopicsDAO.addRouteTopics( routeTopicsDTOs );
		}
		return flag;
	}

	public boolean updateRoute( RouteVO routeVO ) throws DataAccessException {
		boolean flag = false;
		RouteDTO routeDTO = null;
		if ( null != routeVO ) {
			routeDTO = BeanUtils.copyObject( routeVO, RouteDTO.class );
			flag = routeDAO.updateRoute( routeDTO );
			routeTopicsDAO.deleteRouteTopicsByRouteId( routeDTO.getRouteId() );
			flag = addRouteTopics( routeVO, flag, routeDTO );
		}
		return flag;
	}

	public void deleteRoute( Long routeId ) throws DataAccessException {
		routeImageDAO.deleteRouteImageByRouteId( routeId );
		routeDAO.deleteRoute( routeId );
	}

	public void deleteRouteByRouteTypeId( Long routeTypeId ) throws DataAccessException {
		routeDAO.deleteRouteByRouteTypeId( routeTypeId );
	}

	public void deleteRouteByIds( List<Long> routeIds ) throws DataAccessException {
		routeImageDAO.deleteRouteImageByRouteIds( routeIds );
		routeDAO.deleteRouteByIds( routeIds );
	}

	public boolean updateRouteRecommend( List<Long> routeIds ) throws DataAccessException {
		return routeDAO.updateRouteRecommend( routeIds );
	}

	public boolean updateCancelRouteRecommend( List<Long> routeIds ) throws DataAccessException {
		return routeDAO.updateCancelRouteRecommend( routeIds );
	}

	// -------------------------getter/setter-------------------------//
	public void setRouteDAO( IRouteDAO routeDAO ) {
		this.routeDAO = routeDAO;
	}

	public void setRouteTopicsDAO( IRouteTopicsDAO routeTopicsDAO ) {
		this.routeTopicsDAO = routeTopicsDAO;
	}

	public void setRouteImageDAO( IRouteImageDAO routeImageDAO ) {
		this.routeImageDAO = routeImageDAO;
	}
}
