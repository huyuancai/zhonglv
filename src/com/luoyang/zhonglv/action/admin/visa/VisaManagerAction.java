package com.luoyang.zhonglv.action.admin.visa;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.lang3.StringUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.IVisaCityService;
import com.luoyang.zhonglv.service.IVisaCountryService;
import com.luoyang.zhonglv.service.IVisaService;
import com.luoyang.zhonglv.service.IVisaTypeService;
import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;
import com.luoyang.zhonglv.vo.PageVO;
import com.luoyang.zhonglv.vo.RetResultVO;
import com.luoyang.zhonglv.vo.VisaCityVO;
import com.luoyang.zhonglv.vo.VisaCountryVO;
import com.luoyang.zhonglv.vo.VisaTypeVO;
import com.luoyang.zhonglv.vo.VisaVO;

public class VisaManagerAction extends BaseAction {

	/** */
	private static final long serialVersionUID = 6115188396508505480L;
	private static final String RET_VISA_ADD = "visaAdd";
	private static final String RET_VISA_EDIT = "visaEdit";
	private PageVO pageVO;
	private VisaVO visaVO;
	private IVisaService visaService;
	private IVisaTypeService visaTypeService;
	private IVisaCountryService visaCountryService;
	private IVisaCityService visaCityService;
	private List<VisaVO> visaVOs;
	private List<VisaTypeVO> visaTypeVOs;
	private List<VisaCountryVO> visaCountryVOs;
	private List<VisaCityVO> visaCityVOs;
	private RetResultVO resultVO = new RetResultVO();
	private Long visaId;
	private String visaIds;

	@Override
	public String execute() throws Exception {
		if ( super.isLogin() ) {
			try {
				Map<String, Object> paramMap = new HashMap<String, Object>();
				paramMap.put( "index", ( pageVO.getCurrentPage() - 1 ) * pageVO.getPageSize() );
				paramMap.put( "pageSize", pageVO.getPageSize() );
				paramMap.put( "visaCountry", visaVO.getVisaCountry() );
				paramMap.put( "visaType", visaVO.getVisaType() );
				paramMap.put( "visaCity", visaVO.getVisaCity() );
				paramMap.put( "visaName", visaVO.getVisaName() );
				visaVOs = visaService.getVisaByPageAndManager( paramMap );
				pageVO.setTotalSize( visaService.getVisaCount( paramMap ) );
				visaTypeVOs = visaTypeService.getAllVisaType();
				visaCountryVOs = visaCountryService.getAllVisaCountry();
				visaCityVOs = visaCityService.getAllVisaCity();
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
				visaVOs = null;
			}
			return SUCCESS;
		}
		else {
			return LOGIN;
		}
	}

	public String initAddVisa() {
		if ( super.isLogin() ) {
			try {
				visaTypeVOs = visaTypeService.getAllVisaType();
				visaCountryVOs = visaCountryService.getAllVisaCountry();
				visaCityVOs = visaCityService.getAllVisaCity();
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			return RET_VISA_ADD;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxAddVisa() {
		if ( super.isLogin() ) {
			if ( null == visaVO || StringUtils.isEmpty( visaVO.getVisaName() ) ) {
				resultVO.setCode( RET_CODE.E91701.getCode() );
				resultVO.setErrMsg( RET_CODE.E91701.getErrMsg() );
				return RET_JSON;
			}
			try {
				if ( visaService.addVisa( visaVO ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91602.getCode() );
			resultVO.setErrMsg( RET_CODE.E91602.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String editVisaById() {
		if ( super.isLogin() ) {
			try {
				if ( null != visaVO.getVisaId() ) {
					visaVO = visaService.getVisaById( visaVO.getVisaId() );
					visaTypeVOs = visaTypeService.getAllVisaType();
					visaCountryVOs = visaCountryService.getAllVisaCountry();
					visaCityVOs = visaCityService.getAllVisaCity();
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			return RET_VISA_EDIT;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateVisa() {
		if ( super.isLogin() ) {
			if ( null == visaVO || null == visaVO.getVisaId() ) {
				resultVO.setCode( RET_CODE.E91703.getCode() );
				resultVO.setErrMsg( RET_CODE.E91703.getErrMsg() );
				return RET_JSON;
			}
			try {
				if ( visaService.updateVisa( visaVO ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91704.getCode() );
			resultVO.setErrMsg( RET_CODE.E91704.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteVisa() {
		if ( super.isLogin() ) {
			if ( null == visaId ) {
				resultVO.setCode( RET_CODE.E91703.getCode() );
				resultVO.setErrMsg( RET_CODE.E91703.getErrMsg() );
				return RET_JSON;
			}
			try {
				visaService.deleteVisa( visaId );
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91705.getCode() );
			resultVO.setErrMsg( RET_CODE.E91705.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteVisaByIds() {
		if ( super.isLogin() ) {
			if ( null == visaIds ) {
				resultVO.setCode( RET_CODE.E91703.getCode() );
				resultVO.setErrMsg( RET_CODE.E91703.getErrMsg() );
				return RET_JSON;
			}
			try {
				String[] strIds = visaIds.split( "\\|" );
				List<Long> ids = new ArrayList<Long>();
				for ( int i = 0; i < strIds.length; i++ ) {
					ids.add( Long.parseLong( strIds[i] ) );
				}
				visaService.deleteVisaByIds( ids );
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91705.getCode() );
			resultVO.setErrMsg( RET_CODE.E91705.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	// ----------------------getter/setter---------------//
	public PageVO getPageVO() {
		return pageVO;
	}

	public void setPageVO( PageVO pageVO ) {
		this.pageVO = pageVO;
	}

	public VisaVO getVisaVO() {
		return visaVO;
	}

	public void setVisaVO( VisaVO visaVO ) {
		this.visaVO = visaVO;
	}

	public void setVisaService( IVisaService visaService ) {
		this.visaService = visaService;
	}

	public List<VisaVO> getVisaVOs() {
		return visaVOs;
	}

	public void setVisaVOs( List<VisaVO> visaVOs ) {
		this.visaVOs = visaVOs;
	}

	public List<VisaTypeVO> getVisaTypeVOs() {
		return visaTypeVOs;
	}

	public void setVisaTypeVOs( List<VisaTypeVO> visaTypeVOs ) {
		this.visaTypeVOs = visaTypeVOs;
	}

	public List<VisaCountryVO> getVisaCountryVOs() {
		return visaCountryVOs;
	}

	public void setVisaCountryVOs( List<VisaCountryVO> visaCountryVOs ) {
		this.visaCountryVOs = visaCountryVOs;
	}

	public List<VisaCityVO> getVisaCityVOs() {
		return visaCityVOs;
	}

	public void setVisaCityVOs( List<VisaCityVO> visaCityVOs ) {
		this.visaCityVOs = visaCityVOs;
	}

	public void setVisaTypeService( IVisaTypeService visaTypeService ) {
		this.visaTypeService = visaTypeService;
	}

	public void setVisaCountryService( IVisaCountryService visaCountryService ) {
		this.visaCountryService = visaCountryService;
	}

	public void setVisaCityService( IVisaCityService visaCityService ) {
		this.visaCityService = visaCityService;
	}

	public RetResultVO getResultVO() {
		return resultVO;
	}

	public void setResultVO( RetResultVO resultVO ) {
		this.resultVO = resultVO;
	}

	public Long getVisaId() {
		return visaId;
	}

	public void setVisaId( Long visaId ) {
		this.visaId = visaId;
	}

	public String getVisaIds() {
		return visaIds;
	}

	public void setVisaIds( String visaIds ) {
		this.visaIds = visaIds;
	}

}
