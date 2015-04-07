package com.luoyang.zhonglv.service.impl;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.service.BaseService;
import com.luoyang.zhonglv.dao.IRouteImageDAO;
import com.luoyang.zhonglv.dto.RouteImageDTO;
import com.luoyang.zhonglv.service.IRouteImageService;
import com.luoyang.zhonglv.util.BeanUtils;
import com.luoyang.zhonglv.vo.RouteImageVO;

public class RouteImageServiceImpl extends BaseService implements IRouteImageService {
	private IRouteImageDAO routeImageDAO;

	public boolean addRouteImages( List<RouteImageVO> routeImageVOs ) throws DataAccessException {
		boolean flag = false;
		List<RouteImageDTO> routeImageDTOs = null;
		if ( null != routeImageVOs && routeImageVOs.size() > 0 ) {
			routeImageDTOs = BeanUtils.copyList( routeImageVOs, RouteImageDTO.class );
			flag = routeImageDAO.addRouteImages( routeImageDTOs );
		}
		return flag;
	}

	public List<RouteImageVO> getRouteImagesByRouteId( Long routeId ) throws DataAccessException {
		List<RouteImageDTO> routeImageDTOs = null;
		List<RouteImageVO> routeImageVOs = null;
		routeImageDTOs = routeImageDAO.getRouteImagesByRouteId( routeId );
		if ( null != routeImageDTOs && routeImageDTOs.size() > 0 ) {
			routeImageVOs = BeanUtils.copyList( routeImageDTOs, RouteImageVO.class );
		}
		return routeImageVOs;
	}

	public void deleteRouteImageByImageId( Long imageId ) throws DataAccessException {
		routeImageDAO.deleteRouteImageByImageId( imageId );
	}
	
	public void deleteRouteImageByRouteId( Long routeId ) throws DataAccessException {
		routeImageDAO.deleteRouteImageByRouteId( routeId );
	}
	
	public void deleteRouteImageByRouteIds( List<Long> routeIds ) throws DataAccessException {
		routeImageDAO.deleteRouteImageByRouteIds( routeIds );
	}
	
	public String getImagePathByImageId( Long imageId ) throws DataAccessException {
		return routeImageDAO.getImagePathByImageId( imageId );
	}

	// -------------------------getter/setter-------------------------//
	public void setRouteImageDAO( IRouteImageDAO routeImageDAO ) {
		this.routeImageDAO = routeImageDAO;
	}
}
