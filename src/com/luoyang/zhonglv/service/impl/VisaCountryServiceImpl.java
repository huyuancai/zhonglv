package com.luoyang.zhonglv.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.service.BaseService;
import com.luoyang.zhonglv.dao.IVisaCountryDAO;
import com.luoyang.zhonglv.dto.VisaCountryDTO;
import com.luoyang.zhonglv.service.IVisaCountryService;
import com.luoyang.zhonglv.util.BeanUtils;
import com.luoyang.zhonglv.vo.VisaCountryVO;

public class VisaCountryServiceImpl extends BaseService implements IVisaCountryService {
	private IVisaCountryDAO visaCountryDAO;

	@Override
	public List<VisaCountryVO> getAllVisaCountry() throws DataAccessException {
		List<VisaCountryVO> visaCountryVOs = new ArrayList<VisaCountryVO>();
		List<VisaCountryDTO> visaCountryDTOs = visaCountryDAO.getAllVisaCountry();
		visaCountryVOs = BeanUtils.copyList( visaCountryDTOs, VisaCountryVO.class );
		return visaCountryVOs;
	}

	public boolean addVisaCountry( String countryName ) throws DataAccessException {
		return visaCountryDAO.addVisaCountry( countryName );
	}

	public boolean updateVisaCountry( Map<String, Object> visaCountryMap ) throws DataAccessException {
		return visaCountryDAO.updateVisaCountry( visaCountryMap );
	}

	public void deleteVisaCountry( Long countryId ) throws DataAccessException {
		visaCountryDAO.deleteVisaCountry( countryId );
	}

	public String getVisaCountryNameById( Long countryId ) throws DataAccessException {
		return visaCountryDAO.getVisaCountryNameById( countryId );
	}

	// ------------------------getter/setter---------------------//
	public void setVisaCountryDAO( IVisaCountryDAO visaCountryDAO ) {
		this.visaCountryDAO = visaCountryDAO;
	}
}
