package com.luoyang.zhonglv.action.admin.news;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.ITourismNewsService;
import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;
import com.luoyang.zhonglv.vo.PageVO;
import com.luoyang.zhonglv.vo.RetResultVO;
import com.luoyang.zhonglv.vo.TourismNewsVO;

/**
 * 旅游资讯管理Action Descriptions
 * 
 * @version 2015-3-11
 * @author YuancaiHu
 * @since JDK1.7
 * 
 */
public class TourismNewsManagerAction extends BaseAction {

	private static final long serialVersionUID = 4743797858210106890L;
	private static final String RET_TOURISM_NEWS_EDIT = "tourismNewsEdit";
	private ITourismNewsService tourismNewsService;
	private RetResultVO resultVO = new RetResultVO();
	private List<TourismNewsVO> tourismNewsVOs;
	private TourismNewsVO tourismNewsVO;
	private PageVO pageVO;
	private Long newsId;
	private String newsIds;

	@Override
	public String execute() throws Exception {
		if ( super.isLogin() ) {
			try {
				Map<String, Object> paramMap = new HashMap<String, Object>();
				paramMap.put( "index", ( pageVO.getCurrentPage() - 1 ) * pageVO.getPageSize() );
				paramMap.put( "pageSize", pageVO.getPageSize() );
				paramMap.put( "newsName", tourismNewsVO.getNewsName() );
				tourismNewsVOs = tourismNewsService.getTourismNewsByPageForManager( paramMap );
				pageVO.setTotalSize( tourismNewsService.getTourismNewsCount( paramMap ) );
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

	public String ajaxAddTourismNews() throws Exception {
		if ( super.isLogin() ) {
			if ( null == tourismNewsVO || StringUtils.isEmpty( tourismNewsVO.getNewsName() ) ) {
				resultVO.setCode( RET_CODE.E92001.getCode() );
				resultVO.setErrMsg( RET_CODE.E92001.getErrMsg() );
				return RET_JSON;
			}
			if ( null == tourismNewsVO || StringUtils.isEmpty( tourismNewsVO.getNewsContent() ) ) {
				resultVO.setCode( RET_CODE.E92006.getCode() );
				resultVO.setErrMsg( RET_CODE.E92006.getErrMsg() );
				return RET_JSON;
			}

			try {
				if ( tourismNewsService.addTourismNews( tourismNewsVO ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( DataAccessException e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E92002.getCode() );
			resultVO.setErrMsg( RET_CODE.E92002.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String editTourismNewsById() {
		if ( super.isLogin() ) {
			try {
				if ( null != tourismNewsVO.getNewsId() ) {
					tourismNewsVO = tourismNewsService.getTourismNewsById( tourismNewsVO.getNewsId() );
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			return RET_TOURISM_NEWS_EDIT;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateTourismNews() {
		if ( super.isLogin() ) {
			if ( null == tourismNewsVO || null == tourismNewsVO.getNewsId() ) {
				resultVO.setCode( RET_CODE.E92003.getCode() );
				resultVO.setErrMsg( RET_CODE.E92003.getErrMsg() );
				return RET_JSON;
			}
			if ( null == tourismNewsVO || StringUtils.isEmpty( tourismNewsVO.getNewsContent() ) ) {
				resultVO.setCode( RET_CODE.E92006.getCode() );
				resultVO.setErrMsg( RET_CODE.E92006.getErrMsg() );
				return RET_JSON;
			}
			try {
				if ( tourismNewsService.updateTourismNews( tourismNewsVO ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E92004.getCode() );
			resultVO.setErrMsg( RET_CODE.E92004.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteTourismNews() {
		if ( super.isLogin() ) {
			if ( null == newsId ) {
				resultVO.setCode( RET_CODE.E92003.getCode() );
				resultVO.setErrMsg( RET_CODE.E92003.getErrMsg() );
				return RET_JSON;
			}
			try {
				tourismNewsService.deleteTourismNews( newsId );
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E92007.getCode() );
			resultVO.setErrMsg( RET_CODE.E92007.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteTourismNewsByIds() {
		if ( super.isLogin() ) {
			if ( null == newsIds ) {
				resultVO.setCode( RET_CODE.E91103.getCode() );
				resultVO.setErrMsg( RET_CODE.E91103.getErrMsg() );
				return RET_JSON;
			}
			try {
				String[] strIds = newsIds.split( "\\|" );
				List<Long> ids = new ArrayList<Long>();
				for ( int i = 0; i < strIds.length; i++ ) {
					ids.add( Long.parseLong( strIds[i] ) );
				}
				tourismNewsService.deleteTourismNewsByIds( ids );
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
	public void setTourismNewsService( ITourismNewsService tourismNewsService ) {
		this.tourismNewsService = tourismNewsService;
	}

	public TourismNewsVO getTourismNewsVO() {
		return tourismNewsVO;
	}

	public void setTourismNewsVO( TourismNewsVO tourismNewsVO ) {
		this.tourismNewsVO = tourismNewsVO;
	}

	public RetResultVO getResultVO() {
		return resultVO;
	}

	public void setResultVO( RetResultVO resultVO ) {
		this.resultVO = resultVO;
	}

	public PageVO getPageVO() {
		return pageVO;
	}

	public void setPageVO( PageVO pageVO ) {
		this.pageVO = pageVO;
	}

	public List<TourismNewsVO> getTourismNewsVOs() {
		return tourismNewsVOs;
	}

	public void setTourismNewsVOs( List<TourismNewsVO> tourismNewsVOs ) {
		this.tourismNewsVOs = tourismNewsVOs;
	}

	public Long getNewsId() {
		return newsId;
	}

	public void setNewsId( Long newsId ) {
		this.newsId = newsId;
	}

	public String getNewsIds() {
		return newsIds;
	}

	public void setNewsIds( String newsIds ) {
		this.newsIds = newsIds;
	}

}
