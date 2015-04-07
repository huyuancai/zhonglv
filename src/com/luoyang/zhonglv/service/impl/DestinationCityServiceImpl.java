package com.luoyang.zhonglv.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.service.BaseService;
import com.luoyang.zhonglv.dao.IDestinationCityDAO;
import com.luoyang.zhonglv.dto.DestinationCityDTO;
import com.luoyang.zhonglv.service.IDestinationCityService;
import com.luoyang.zhonglv.util.BeanUtils;
import com.luoyang.zhonglv.vo.DestinationCityVO;

/**
 * 目的地城市Service
 * Descriptions
 *
 * @version 2015-3-25
 * @author YuancaiHu
 * @since JDK1.7
 *
 */
public class DestinationCityServiceImpl extends BaseService implements IDestinationCityService {
	
	private IDestinationCityDAO destinationCityDAO;
	
	
	public List<DestinationCityVO> getAllDestinationCity() throws DataAccessException{
		List<DestinationCityVO> destinationCityVOs = null;
		List<DestinationCityDTO> destinationCityDTOs = destinationCityDAO.getAllDestinationCity();
		if ( null != destinationCityDTOs && destinationCityDTOs.size() > 0 ) {
			destinationCityVOs = BeanUtils.copyList( destinationCityDTOs, DestinationCityVO.class );
		}
		return destinationCityVOs;
	}
	
	public boolean addDestinationCity(String desCityName) throws DataAccessException{
		return destinationCityDAO.addDestinationCity(desCityName);
	}
	
	public boolean updateDestinationCity(Map<String, Object> desCityMap) throws DataAccessException{
		return destinationCityDAO.updateDestinationCity(desCityMap);
	}
	
	public void deleteDestinationCity(Long desCityId) throws DataAccessException{
		destinationCityDAO.deleteDestinationCity( desCityId );
	}
	
	
	//-------------------------getter/setter-------------------//
	public void setDestinationCityDAO( IDestinationCityDAO destinationCityDAO ) {
		this.destinationCityDAO = destinationCityDAO;
	}
}
