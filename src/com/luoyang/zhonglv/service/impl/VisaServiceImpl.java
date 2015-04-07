package com.luoyang.zhonglv.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.service.BaseService;
import com.luoyang.zhonglv.dao.IVisaDAO;
import com.luoyang.zhonglv.dto.VisaDTO;
import com.luoyang.zhonglv.service.IVisaService;
import com.luoyang.zhonglv.util.BeanUtils;
import com.luoyang.zhonglv.vo.VisaVO;

public class VisaServiceImpl extends BaseService implements IVisaService {
	private IVisaDAO visaDAO;

	public List<VisaVO> getVisaByPageAndManager( Map<String, Object> pageMap ) throws DataAccessException {
		List<VisaVO> visaVOs = new ArrayList<VisaVO>();
		List<VisaDTO> visaDTOs = null;
		visaDTOs = visaDAO.getVisaByPageAndManager( pageMap );
		if ( null != visaDTOs && visaDTOs.size() > 0 ) {
			visaVOs = BeanUtils.copyList( visaDTOs, VisaVO.class );
		}
		return visaVOs;
	}

	public List<VisaVO> getVisaByPageForHome( int currentPage, int pageSize ) throws DataAccessException {
		List<VisaVO> visaVOs = new ArrayList<VisaVO>();
		List<VisaDTO> visaDTOs = null;
		Map<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put( "currentPage", currentPage );
		pageMap.put( "pageSize", pageSize );
		visaDTOs = visaDAO.getVisaByPageForHome( pageMap );
		if ( null != visaDTOs && visaDTOs.size() > 0 ) {
			visaVOs = BeanUtils.copyList( visaDTOs, VisaVO.class );
		}
		return visaVOs;
	}

	public List<VisaVO> getVisaByPageForList( Map<String, Object> pageMap ) throws DataAccessException {
		List<VisaVO> visaVOs = new ArrayList<VisaVO>();
		List<VisaDTO> visaDTOs = null;
		visaDTOs = visaDAO.getVisaByPageForList( pageMap );
		visaVOs = BeanUtils.copyList( visaDTOs, VisaVO.class );
		return visaVOs;
	}

	public Long getVisaCount( Map<String, Object> paramMap ) throws DataAccessException {
		if ( null == paramMap ) {
			return null;
		}
		Long visaCount = visaDAO.getVisaCount( paramMap );
		return visaCount;
	}

	public boolean addVisa( VisaVO visaVO ) throws DataAccessException {
		boolean flag = false;
		VisaDTO visaDTO = null;
		if ( null != visaVO ) {
			visaDTO = BeanUtils.copyObject( visaVO, VisaDTO.class );
			flag = visaDAO.addVisa( visaDTO );
		}
		return flag;
	}

	public VisaVO getVisaById( Long visaId ) throws DataAccessException {
		VisaVO visaVO = null;
		if ( null == visaId ) {
			return null;
		}
		VisaDTO vusaDTO = visaDAO.getVisaById( visaId );
		if ( null != vusaDTO ) {
			visaVO = BeanUtils.copyObject( vusaDTO, VisaVO.class );
			String visaMaterials = visaVO.getVisaMaterials();
			String visaIntroduction = visaVO.getVisaIntroduction();
			if ( StringUtils.isNotEmpty( visaMaterials ) ) {
				visaVO.setVisaMaterials( visaMaterials.replace( "\n", "" ).replace( "\r", "" ) );
			}
			if ( StringUtils.isNotEmpty( visaIntroduction ) ) {
				visaVO.setVisaIntroduction( visaIntroduction.replace( "\n", "" ).replace( "\r", "" ) );
			}
		}
		return visaVO;
	}

	public boolean updateVisa( VisaVO visaVO ) throws DataAccessException {
		boolean flag = false;
		VisaDTO visaDTO = null;
		if ( null != visaVO ) {
			visaDTO = BeanUtils.copyObject( visaVO, VisaDTO.class );
			flag = visaDAO.updateVisa( visaDTO );
		}
		return flag;
	}

	public void deleteVisa( Long visaId ) throws DataAccessException {
		visaDAO.deleteVisa( visaId );
	}
	
	public void deleteVisaByIds( List<Long> visaIds ) throws DataAccessException {
		visaDAO.deleteVisaByIds( visaIds );
	}

	// ------------------getter/setter--------------//
	public void setVisaDAO( IVisaDAO visaDAO ) {
		this.visaDAO = visaDAO;
	}
}
