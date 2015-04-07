package com.luoyang.zhonglv.action.admin.visa;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.lang3.StringUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.IVisaTypeService;
import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;
import com.luoyang.zhonglv.vo.RetResultVO;
import com.luoyang.zhonglv.vo.VisaTypeVO;

public class VisaTypeManagerAction extends BaseAction {

	private static final long serialVersionUID = -3152567540570535477L;
	private IVisaTypeService visaTypeService;
	private List<VisaTypeVO> visaTypeVOs;
	private RetResultVO resultVO = new RetResultVO();
	private String typeName;
	private Long typeId;

	@Override
	public String execute() throws Exception {
		if ( super.isLogin() ) {
			try {
				visaTypeVOs = visaTypeService.getAllVisaType();
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			return SUCCESS;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxAddVsiaType() {
		if ( super.isLogin() ) {
			if ( StringUtils.isEmpty( typeName ) ) {
				resultVO.setCode( RET_CODE.E91902.getCode() );
				resultVO.setErrMsg( RET_CODE.E91902.getErrMsg() );
				return RET_JSON;
			}
			try {
				if ( visaTypeService.addVisaType( typeName ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91903.getCode() );
			resultVO.setErrMsg( RET_CODE.E91903.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateVisaType() {
		if ( super.isLogin() ) {
			if ( null == typeId ) {
				resultVO.setCode( RET_CODE.E91801.getCode() );
				resultVO.setErrMsg( RET_CODE.E91801.getErrMsg() );
				return RET_JSON;
			}
			if ( StringUtils.isEmpty( typeName ) ) {
				resultVO.setCode( RET_CODE.E91802.getCode() );
				resultVO.setErrMsg( RET_CODE.E91802.getErrMsg() );
				return RET_JSON;
			}
			try {
				Map<String, Object> visaTypeMap = new HashMap<String, Object>();
				visaTypeMap.put( "typeId", typeId );
				visaTypeMap.put( "typeName", typeName );
				if ( visaTypeService.updateVisaType( visaTypeMap ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91805.getCode() );
			resultVO.setErrMsg( RET_CODE.E91805.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteVisaType() {
		if ( super.isLogin() ) {
			if ( null == typeId ) {
				resultVO.setCode( RET_CODE.E91401.getCode() );
				resultVO.setErrMsg( RET_CODE.E91401.getErrMsg() );
				return RET_JSON;
			}
			try {
				visaTypeService.deleteVisaType( typeId );
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91404.getCode() );
			resultVO.setErrMsg( RET_CODE.E91404.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	// ----------------------getter/setter---------------------//
	public List<VisaTypeVO> getVisaTypeVOs() {
		return visaTypeVOs;
	}

	public void setVisaTypeVOs( List<VisaTypeVO> visaTypeVOs ) {
		this.visaTypeVOs = visaTypeVOs;
	}

	public void setVisaTypeService( IVisaTypeService visaTypeService ) {
		this.visaTypeService = visaTypeService;
	}

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName( String TypeName ) {
		this.typeName = TypeName;
	}

	public RetResultVO getResultVO() {
		return resultVO;
	}

	public void setResultVO( RetResultVO resultVO ) {
		this.resultVO = resultVO;
	}

	public Long getTypeId() {
		return typeId;
	}

	public void setTypeId( Long typeId ) {
		this.typeId = typeId;
	}

}
