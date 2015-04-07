package com.luoyang.zhonglv.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.IVisaCityService;
import com.luoyang.zhonglv.service.IVisaCountryService;
import com.luoyang.zhonglv.service.IVisaService;
import com.luoyang.zhonglv.service.IVisaTypeService;
import com.luoyang.zhonglv.vo.PageVO;
import com.luoyang.zhonglv.vo.VisaCountryVO;
import com.luoyang.zhonglv.vo.VisaTypeVO;
import com.luoyang.zhonglv.vo.VisaVO;

public class VisaAction extends BaseAction {

	private static final long serialVersionUID = 8049444995612863554L;
	private static final String VISA_DETAIL = "visaDetail";
	private static final long PAGE_SIZE = 20;
	private IVisaService visaService;
	private IVisaCityService visaCityService;
	private IVisaCountryService visaCountryService;
	private IVisaTypeService visaTypeService;
	private List<VisaVO> visaVOs;
	private List<VisaCountryVO> visaCountryVOs;
	private List<VisaTypeVO> visaTypeVOs;
	private PageVO pageVO;
	private VisaVO visaVO;
	private Long visaId;

	@Override
	public String execute() throws Exception {
		try {
			pageVO.setPageSize( PAGE_SIZE );
			Map<String, Object> pageMap = new HashMap<String, Object>();
			pageMap.put( "currentPage", ( pageVO.getCurrentPage() - 1 ) * pageVO.getPageSize() );
			pageMap.put( "pageSize", pageVO.getPageSize() );
			pageMap.put( "visaCountry", visaVO.getVisaCountry() );
			pageMap.put( "visaType", visaVO.getVisaType() );
			visaVOs = visaService.getVisaByPageForList( pageMap );
			visaCountryVOs = visaCountryService.getAllVisaCountry();
			visaTypeVOs = visaTypeService.getAllVisaType();
			pageVO.setTotalSize( visaService.getVisaCount( pageMap ) );
		}
		catch ( Exception e ) {
			logger.error( ExceptionUtils.getFullStackTrace( e ) );
		}
		return SUCCESS;
	}

	public String getVisaById() {
		if ( null != visaId ) {
			try {
				visaVO = visaService.getVisaById( visaId );
				String visaCityName = visaCityService.getVisaCityNameById( visaVO.getVisaCity() );
				String visaCountryName = visaCountryService.getVisaCountryNameById( visaVO.getVisaCountry() );
				String visaTypeName = visaTypeService.getVisaTypeNameById( visaVO.getVisaType() );
				visaVO.setVisaCityName( visaCityName );
				visaVO.setVisaCountryName( visaCountryName );
				visaVO.setVisaTypeName( visaTypeName );
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
		}
		return VISA_DETAIL;
	}

	// --------------------------getter/setter---------------------//
	public PageVO getPageVO() {
		return pageVO;
	}

	public void setPageVO( PageVO pageVO ) {
		this.pageVO = pageVO;
	}

	public List<VisaVO> getVisaVOs() {
		return visaVOs;
	}

	public void setVisaVOs( List<VisaVO> visaVOs ) {
		this.visaVOs = visaVOs;
	}

	public void setVisaService( IVisaService visaService ) {
		this.visaService = visaService;
	}

	public Long getVisaId() {
		return visaId;
	}

	public void setVisaId( Long visaId ) {
		this.visaId = visaId;
	}

	public VisaVO getVisaVO() {
		return visaVO;
	}

	public void setVisaVO( VisaVO visaVO ) {
		this.visaVO = visaVO;
	}

	public void setVisaCityService( IVisaCityService visaCityService ) {
		this.visaCityService = visaCityService;
	}

	public void setVisaCountryService( IVisaCountryService visaCountryService ) {
		this.visaCountryService = visaCountryService;
	}

	public void setVisaTypeService( IVisaTypeService visaTypeService ) {
		this.visaTypeService = visaTypeService;
	}

	public List<VisaCountryVO> getVisaCountryVOs() {
		return visaCountryVOs;
	}

	public void setVisaCountryVOs( List<VisaCountryVO> visaCountryVOs ) {
		this.visaCountryVOs = visaCountryVOs;
	}

	public List<VisaTypeVO> getVisaTypeVOs() {
		return visaTypeVOs;
	}

	public void setVisaTypeVOs( List<VisaTypeVO> visaTypeVOs ) {
		this.visaTypeVOs = visaTypeVOs;
	}

}
