package com.luoyang.zhonglv.action.admin.strategy;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.ITourismStrategyService;
import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;
import com.luoyang.zhonglv.vo.PageVO;
import com.luoyang.zhonglv.vo.RetResultVO;
import com.luoyang.zhonglv.vo.TourismStrategyVO;

/**
 * 旅游攻略管理Action Descriptions
 * 
 * @version 2015-3-11
 * @author YuancaiHu
 * @since JDK1.7
 * 
 */
public class TourismStrategyManagerAction extends BaseAction {

	private static final long serialVersionUID = 28097363916152791L;
	private static final String RET_TOURISM_STRATEGY_EDIT = "tourismStrategyEdit";
	private ITourismStrategyService tourismStrategyService;
	private RetResultVO resultVO = new RetResultVO();
	private List<TourismStrategyVO> tourismStrategyVOs;
	private TourismStrategyVO tourismStrategyVO;
	private PageVO pageVO;
	private Long strategyId;
	private String strategyIds;

	@Override
	public String execute() throws Exception {
		if ( super.isLogin() ) {
			try {
				Map<String, Object> paramMap = new HashMap<String, Object>();
				paramMap.put( "index", ( pageVO.getCurrentPage() - 1 ) * pageVO.getPageSize() );
				paramMap.put( "pageSize", pageVO.getPageSize() );
				paramMap.put( "strategyName", tourismStrategyVO.getStrategyName() );
				tourismStrategyVOs = tourismStrategyService.getTourismStrategyByPageForManager( paramMap );
				pageVO.setTotalSize( tourismStrategyService.getTourismStrategyCount( paramMap ) );
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

	public String ajaxAddTourismStrategy() throws Exception {
		if ( super.isLogin() ) {
			if ( null == tourismStrategyVO || StringUtils.isEmpty( tourismStrategyVO.getStrategyName() ) ) {
				resultVO.setCode( RET_CODE.E92101.getCode() );
				resultVO.setErrMsg( RET_CODE.E92101.getErrMsg() );
				return RET_JSON;
			}
			if ( null == tourismStrategyVO || StringUtils.isEmpty( tourismStrategyVO.getStrategyContent() ) ) {
				resultVO.setCode( RET_CODE.E92106.getCode() );
				resultVO.setErrMsg( RET_CODE.E92106.getErrMsg() );
				return RET_JSON;
			}
			try {
				if ( tourismStrategyService.addTourismStrategy( tourismStrategyVO ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( DataAccessException e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E92102.getCode() );
			resultVO.setErrMsg( RET_CODE.E92102.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String editTourismStrategyById() {
		if ( super.isLogin() ) {
			try {
				if ( null != tourismStrategyVO.getStrategyId() ) {
					tourismStrategyVO = tourismStrategyService.getTourismStrategyById( tourismStrategyVO
							.getStrategyId() );
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			return RET_TOURISM_STRATEGY_EDIT;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateTourismStrategy() {
		if ( super.isLogin() ) {
			if ( null == tourismStrategyVO || null == tourismStrategyVO.getStrategyId() ) {
				resultVO.setCode( RET_CODE.E92103.getCode() );
				resultVO.setErrMsg( RET_CODE.E92103.getErrMsg() );
				return RET_JSON;
			}
			if ( null == tourismStrategyVO || StringUtils.isEmpty( tourismStrategyVO.getStrategyContent() ) ) {
				resultVO.setCode( RET_CODE.E92106.getCode() );
				resultVO.setErrMsg( RET_CODE.E92106.getErrMsg() );
				return RET_JSON;
			}
			try {
				if ( tourismStrategyService.updateTourismStrategy( tourismStrategyVO ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E92104.getCode() );
			resultVO.setErrMsg( RET_CODE.E92104.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteTourismStrategy() {
		if ( super.isLogin() ) {
			if ( null == strategyId ) {
				resultVO.setCode( RET_CODE.E92103.getCode() );
				resultVO.setErrMsg( RET_CODE.E92103.getErrMsg() );
				return RET_JSON;
			}
			try {
				tourismStrategyService.deleteTourismStrategy( strategyId );
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E92107.getCode() );
			resultVO.setErrMsg( RET_CODE.E92107.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteTourismStrategyByIds() {
		if ( super.isLogin() ) {
			if ( null == strategyIds ) {
				resultVO.setCode( RET_CODE.E91103.getCode() );
				resultVO.setErrMsg( RET_CODE.E91103.getErrMsg() );
				return RET_JSON;
			}
			try {
				String[] strIds = strategyIds.split( "\\|" );
				List<Long> ids = new ArrayList<Long>();
				for ( int i = 0; i < strIds.length; i++ ) {
					ids.add( Long.parseLong( strIds[i] ) );
				}
				tourismStrategyService.deleteTourismStrategyByIds( ids );
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

	// -----------------------------getter/setter--------------------------//
	public void setTourismStrategyService( ITourismStrategyService tourismStrategyService ) {
		this.tourismStrategyService = tourismStrategyService;
	}

	public RetResultVO getResultVO() {
		return resultVO;
	}

	public void setResultVO( RetResultVO resultVO ) {
		this.resultVO = resultVO;
	}

	public TourismStrategyVO getTourismStrategyVO() {
		return tourismStrategyVO;
	}

	public void setTourismStrategyVO( TourismStrategyVO tourismStrategyVO ) {
		this.tourismStrategyVO = tourismStrategyVO;
	}

	public PageVO getPageVO() {
		return pageVO;
	}

	public void setPageVO( PageVO pageVO ) {
		this.pageVO = pageVO;
	}

	public List<TourismStrategyVO> getTourismStrategyVOs() {
		return tourismStrategyVOs;
	}

	public void setTourismStrategyVOs( List<TourismStrategyVO> tourismStrategyVOs ) {
		this.tourismStrategyVOs = tourismStrategyVOs;
	}

	public Long getStrategyId() {
		return strategyId;
	}

	public void setStrategyId( Long strategyId ) {
		this.strategyId = strategyId;
	}

	public String getStrategyIds() {
		return strategyIds;
	}

	public void setStrategyIds( String strategyIds ) {
		this.strategyIds = strategyIds;
	}

}
