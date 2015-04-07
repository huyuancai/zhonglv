package com.luoyang.zhonglv.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.service.BaseService;
import com.luoyang.zhonglv.dao.IVisaCityDAO;
import com.luoyang.zhonglv.dto.VisaCityDTO;
import com.luoyang.zhonglv.service.IVisaCityService;
import com.luoyang.zhonglv.util.BeanUtils;
import com.luoyang.zhonglv.vo.VisaCityVO;

public class VisaCityServiceImpl extends BaseService implements IVisaCityService {
	private IVisaCityDAO visaCityDAO;
	
	@Override
	public List<VisaCityVO> getAllVisaCity() throws DataAccessException {
		List<VisaCityVO> visaCityVOs = new ArrayList<VisaCityVO>();
		List<VisaCityDTO> visaCityDTOs = visaCityDAO.getAllVisaCity();
		visaCityVOs = BeanUtils.copyList( visaCityDTOs, VisaCityVO.class );
		return visaCityVOs;
	}
	
	public boolean addVisaCity( String cityName ) throws DataAccessException {
		return visaCityDAO.addVisaCity( cityName );
	}
	
	public boolean updateVisaCity( Map<String, Object> visaCityMap ) throws DataAccessException {
		return visaCityDAO.updateVisaCity( visaCityMap );
	}
	
	public void deleteVisaCity( Long cityId ) throws DataAccessException {
		visaCityDAO.deleteVisaCity( cityId  );
	}
	
	public String getVisaCityNameById( Long cityId ) throws DataAccessException {
		return visaCityDAO.getVisaCityNameById( cityId );
	}
	
	//------------------------------getter/setter--------------------------//
	public void setVisaCityDAO( IVisaCityDAO visaCityDAO ) {
		this.visaCityDAO = visaCityDAO;
	}
}
