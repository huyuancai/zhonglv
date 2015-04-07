package com.luoyang.zhonglv.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.service.BaseService;
import com.luoyang.zhonglv.dao.IDepartureCityDAO;
import com.luoyang.zhonglv.dto.DepartureCityDTO;
import com.luoyang.zhonglv.service.IDepartureCityService;
import com.luoyang.zhonglv.util.BeanUtils;
import com.luoyang.zhonglv.vo.DepartureCityVO;

/**
 * 出发城市Service
 * Descriptions
 *
 * @version 2015-3-25
 * @author YuancaiHu
 * @since JDK1.7
 *
 */
public class DepartureCityServiceImpl extends BaseService implements IDepartureCityService {
	
	private IDepartureCityDAO departureCityDAO;
	
	
	public List<DepartureCityVO> getAllDepartureCity() throws DataAccessException{
		List<DepartureCityVO> departureCityVOs = null;
		List<DepartureCityDTO> departureCityDTOs = departureCityDAO.getAllDepartureCity();
		if ( null != departureCityDTOs && departureCityDTOs.size() > 0 ) {
			departureCityVOs = BeanUtils.copyList( departureCityDTOs, DepartureCityVO.class );
		}
		return departureCityVOs;
	}
	
	public String getDepartureCityNameById(Long depCityId) throws DataAccessException {
		return departureCityDAO.getDepartureCityNameById( depCityId );
	}
	
	public boolean addDepartureCity( String depCityName ) throws DataAccessException{
		return departureCityDAO.addDepartureCity( depCityName );
	}
	
	public boolean updateDepartureCity(Map<String, Object> depCityMap) throws DataAccessException{
		return departureCityDAO.updateDepartureCity(depCityMap);
	}
	
	public void deleteDepartureCity(Long depCityId) throws DataAccessException{
		departureCityDAO.deleteDepartureCity( depCityId );
	}
	
	//-----------------------getter/setter----------------------//
	public void setDepartureCityDAO( IDepartureCityDAO departureCityDAO ) {
		this.departureCityDAO = departureCityDAO;
	}
}
