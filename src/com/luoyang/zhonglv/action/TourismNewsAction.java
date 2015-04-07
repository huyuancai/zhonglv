package com.luoyang.zhonglv.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.ITourismNewsService;
import com.luoyang.zhonglv.vo.PageVO;
import com.luoyang.zhonglv.vo.TourismNewsVO;

public class TourismNewsAction extends BaseAction {

	private static final long serialVersionUID = -4985700154553244903L;
	private static final String NEWS_DETAIL = "newsDetail";
	private static final long PAGE_SIZE = 20;
	private ITourismNewsService tourismNewsService;
	private List<TourismNewsVO> tourismNewsVOs;
	private PageVO pageVO;
	private TourismNewsVO tourismNewsVO;
	private Long newsId;

	@Override
	public String execute() throws Exception {
		try {
			pageVO.setPageSize( PAGE_SIZE );
			Map<String, Object> pageMap = new HashMap<String, Object>();
			pageMap.put( "currentPage", ( pageVO.getCurrentPage() - 1 ) * pageVO.getPageSize() );
			pageMap.put( "pageSize", pageVO.getPageSize() );
			tourismNewsVOs = tourismNewsService.getTourismNewsByPageForList( pageMap );
			pageVO.setTotalSize( tourismNewsService.getTourismNewsCount( pageMap ) );
		}
		catch ( Exception e ) {
			logger.error( ExceptionUtils.getFullStackTrace( e ) );
		}
		return SUCCESS;
	}

	public String getTourismNewsById() {
		if ( null != newsId ) {
			try {
				tourismNewsVO = tourismNewsService.getTourismNewsById( newsId );
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
		}
		return NEWS_DETAIL;
	}

	// ----------------------------getter/setter----------------------//
	public void setTourismNewsService( ITourismNewsService tourismNewsService ) {
		this.tourismNewsService = tourismNewsService;
	}

	public List<TourismNewsVO> getTourismNewsVOs() {
		return tourismNewsVOs;
	}

	public void setTourismNewsVOs( List<TourismNewsVO> tourismNewsVOs ) {
		this.tourismNewsVOs = tourismNewsVOs;
	}

	public PageVO getPageVO() {
		return pageVO;
	}

	public void setPageVO( PageVO pageVO ) {
		this.pageVO = pageVO;
	}

	public TourismNewsVO getTourismNewsVO() {
		return tourismNewsVO;
	}

	public void setTourismNewsVO( TourismNewsVO tourismNewsVO ) {
		this.tourismNewsVO = tourismNewsVO;
	}

	public Long getNewsId() {
		return newsId;
	}

	public void setNewsId( Long newsId ) {
		this.newsId = newsId;
	}

}
