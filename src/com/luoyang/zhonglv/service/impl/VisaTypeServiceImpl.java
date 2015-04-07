package com.luoyang.zhonglv.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.service.BaseService;
import com.luoyang.zhonglv.dao.IVisaTypeDAO;
import com.luoyang.zhonglv.dto.VisaTypeDTO;
import com.luoyang.zhonglv.service.IVisaTypeService;
import com.luoyang.zhonglv.util.BeanUtils;
import com.luoyang.zhonglv.vo.VisaTypeVO;

public class VisaTypeServiceImpl extends BaseService implements IVisaTypeService {
	private IVisaTypeDAO visaTypeDAO;

	@Override
	public List<VisaTypeVO> getAllVisaType() throws DataAccessException {
		List<VisaTypeVO> visaTypeVOs = new ArrayList<VisaTypeVO>();
		List<VisaTypeDTO> visaTypeDTOs = visaTypeDAO.getAllVisaType();
		visaTypeVOs = BeanUtils.copyList( visaTypeDTOs, VisaTypeVO.class );
		return visaTypeVOs;
	}

	public boolean addVisaType( String typeName ) throws DataAccessException {
		return visaTypeDAO.addVisaType( typeName );
	}
	
	public boolean updateVisaType( Map<String, Object> visaTypeMap ) throws DataAccessException {
		return visaTypeDAO.updateVisaType( visaTypeMap );
	}
	
	public void deleteVisaType( Long typeId ) throws DataAccessException {
		visaTypeDAO.deleteVisaType( typeId  );
	}
	
	public String getVisaTypeNameById( Long typeId ) throws DataAccessException {
		return visaTypeDAO.getVisaTypeNameById( typeId );
	}
	
	// -------------------getter/setter-----------------//
	public void setVisaTypeDAO( IVisaTypeDAO visaTypeDAO ) {
		this.visaTypeDAO = visaTypeDAO;
	}

}
