package com.luoyang.zhonglv.action.admin.scenery;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.lang3.StringUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.IDestinationCityService;
import com.luoyang.zhonglv.service.ISceneryService;
import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;
import com.luoyang.zhonglv.vo.DestinationCityVO;
import com.luoyang.zhonglv.vo.PageVO;
import com.luoyang.zhonglv.vo.RetResultVO;
import com.luoyang.zhonglv.vo.SceneryVO;

public class SceneryManagerAction extends BaseAction {

	private static final long serialVersionUID = -5881425788458898620L;
	private static final String RET_SCENERY_ADD = "sceneryAdd";
	private static final String RET_SCENERY_EDIT = "sceneryEdit";

	private ISceneryService sceneryService;
	private IDestinationCityService destinationCityService;
	private SceneryVO sceneryVO;
	private PageVO pageVO;
	private RetResultVO resultVO = new RetResultVO();
	private List<DestinationCityVO> destinationCityVOs;
	private List<SceneryVO> sceneryVOs;
	private Long sceneryId;
	private String sceneryIds;

	public String execute() {
		if ( super.isLogin() ) {
			try {
				Map<String, Object> paramMap = new HashMap<String, Object>();
				paramMap.put( "index", ( pageVO.getCurrentPage() - 1 ) * pageVO.getPageSize() );
				paramMap.put( "pageSize", pageVO.getPageSize() );
				paramMap.put( "sceneryName", sceneryVO.getSceneryName() );
				paramMap.put( "sceneryRecommend", sceneryVO.isSceneryRecommend() ? 1 : null );
				sceneryVOs = sceneryService.getSceneryByPageAndManager( paramMap );
				pageVO.setTotalSize( sceneryService.getSceneryCount( paramMap ) );
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
				sceneryVOs = null;
			}
			return SUCCESS;
		}
		else {
			return LOGIN;
		}
	}

	public String initAddScenery() {
		try {
			destinationCityVOs = destinationCityService.getAllDestinationCity();
		}
		catch ( Exception e ) {
			logger.error( ExceptionUtils.getFullStackTrace( e ) );
		}
		return RET_SCENERY_ADD;
	}

	public String ajaxAddScenery() {
		if ( super.isLogin() ) {
			if ( null == sceneryVO || StringUtils.isEmpty( sceneryVO.getSceneryName() ) ) {
				resultVO.setCode( RET_CODE.E91601.getCode() );
				resultVO.setErrMsg( RET_CODE.E91601.getErrMsg() );
				return RET_JSON;
			}
			try {
				if ( sceneryService.addScenery( sceneryVO ) ) {
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

	public String editSceneryById() {
		if ( super.isLogin() ) {
			try {
				if ( null != sceneryVO.getSceneryId() ) {
					sceneryVO = sceneryService.getSceneryById( sceneryVO.getSceneryId() );
					destinationCityVOs = destinationCityService.getAllDestinationCity();
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			return RET_SCENERY_EDIT;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateScenery() {
		if ( super.isLogin() ) {
			if ( null == sceneryVO || null == sceneryVO.getSceneryId() ) {
				resultVO.setCode( RET_CODE.E91603.getCode() );
				resultVO.setErrMsg( RET_CODE.E91603.getErrMsg() );
				return RET_JSON;
			}
			try {
				if ( sceneryService.updateScenery( sceneryVO ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91604.getCode() );
			resultVO.setErrMsg( RET_CODE.E91604.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteScenery() {
		if ( super.isLogin() ) {
			if ( null == sceneryId ) {
				resultVO.setCode( RET_CODE.E91603.getCode() );
				resultVO.setErrMsg( RET_CODE.E91603.getErrMsg() );
				return RET_JSON;
			}
			try {
				sceneryService.deleteScenery( sceneryId );
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91605.getCode() );
			resultVO.setErrMsg( RET_CODE.E91605.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateSceneryRecommend() {
		if ( super.isLogin() ) {
			if ( null == sceneryIds ) {
				resultVO.setCode( RET_CODE.E91603.getCode() );
				resultVO.setErrMsg( RET_CODE.E91603.getErrMsg() );
				return RET_JSON;
			}
			try {
				String[] strIds = sceneryIds.split( "\\|" );
				List<Long> ids = new ArrayList<Long>();
				for ( int i = 0; i < strIds.length; i++ ) {
					ids.add( Long.parseLong( strIds[i] ) );
				}
				if ( sceneryService.updateSceneryRecommend( ids ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91606.getCode() );
			resultVO.setErrMsg( RET_CODE.E91606.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateCancelSceneryRecommend() {
		if ( super.isLogin() ) {
			if ( null == sceneryIds ) {
				resultVO.setCode( RET_CODE.E91603.getCode() );
				resultVO.setErrMsg( RET_CODE.E91603.getErrMsg() );
				return RET_JSON;
			}
			try {
				String[] strIds = sceneryIds.split( "\\|" );
				List<Long> ids = new ArrayList<Long>();
				for ( int i = 0; i < strIds.length; i++ ) {
					ids.add( Long.parseLong( strIds[i] ) );
				}
				if ( sceneryService.updateCancelSceneryRecommend( ids ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91607.getCode() );
			resultVO.setErrMsg( RET_CODE.E91607.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteSceneryByIds() {
		if ( super.isLogin() ) {
			if ( null == sceneryIds ) {
				resultVO.setCode( RET_CODE.E91103.getCode() );
				resultVO.setErrMsg( RET_CODE.E91103.getErrMsg() );
				return RET_JSON;
			}
			try {
				String[] strIds = sceneryIds.split( "\\|" );
				List<Long> ids = new ArrayList<Long>();
				for ( int i = 0; i < strIds.length; i++ ) {
					ids.add( Long.parseLong( strIds[i] ) );
				}
				sceneryService.deleteSceneryByIds( ids );
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E91105.getCode() );
			resultVO.setErrMsg( RET_CODE.E91105.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	// --------------------------getter/setter------------------------//
	public void setSceneryService( ISceneryService sceneryService ) {
		this.sceneryService = sceneryService;
	}

	public void setDestinationCityService( IDestinationCityService destinationCityService ) {
		this.destinationCityService = destinationCityService;
	}

	public SceneryVO getSceneryVO() {
		return sceneryVO;
	}

	public void setSceneryVO( SceneryVO sceneryVO ) {
		this.sceneryVO = sceneryVO;
	}

	public RetResultVO getResultVO() {
		return resultVO;
	}

	public void setResultVO( RetResultVO resultVO ) {
		this.resultVO = resultVO;
	}

	public List<DestinationCityVO> getDestinationCityVOs() {
		return destinationCityVOs;
	}

	public void setDestinationCityVOs( List<DestinationCityVO> destinationCityVOs ) {
		this.destinationCityVOs = destinationCityVOs;
	}

	public List<SceneryVO> getSceneryVOs() {
		return sceneryVOs;
	}

	public void setSceneryVOs( List<SceneryVO> sceneryVOs ) {
		this.sceneryVOs = sceneryVOs;
	}

	public PageVO getPageVO() {
		return pageVO;
	}

	public void setPageVO( PageVO pageVO ) {
		this.pageVO = pageVO;
	}

	public Long getSceneryId() {
		return sceneryId;
	}

	public void setSceneryId( Long sceneryId ) {
		this.sceneryId = sceneryId;
	}

	public String getSceneryIds() {
		return sceneryIds;
	}

	public void setSceneryIds( String sceneryIds ) {
		this.sceneryIds = sceneryIds;
	}

}
