package com.luoyang.zhonglv.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.ITourismStrategyService;
import com.luoyang.zhonglv.vo.PageVO;
import com.luoyang.zhonglv.vo.TourismStrategyVO;

public class TourismStrategyAction extends BaseAction {
	
	private static final long serialVersionUID = 5383183169548318337L;
	private static final String STRATEGY_DETAIL = "strategyDetail";
	private static final long PAGE_SIZE = 20;
	private ITourismStrategyService tourismStrategyService;
	private List<TourismStrategyVO> tourismStrategyVOs;
	private PageVO pageVO;
	private TourismStrategyVO tourismStrategyVO;
	private Long strategyId;
	
	@Override
	public String execute() throws Exception {
		try {
			pageVO.setPageSize( PAGE_SIZE );
			Map<String, Object> pageMap = new HashMap<String, Object>();
			pageMap.put( "currentPage", ( pageVO.getCurrentPage() - 1 ) * pageVO.getPageSize() );
			pageMap.put( "pageSize", pageVO.getPageSize() );
			tourismStrategyVOs = tourismStrategyService.getTourismStrategyByPageForList( pageMap );
			pageVO.setTotalSize( tourismStrategyService.getTourismStrategyCount( pageMap ) );
		}
		catch ( Exception e ) {
			logger.error( ExceptionUtils.getFullStackTrace( e ) );
		}
		return SUCCESS;
	}
	
	public String getTourismStrategyById(){
		if ( null != strategyId ) {
			try {
				tourismStrategyVO = tourismStrategyService.getTourismStrategyById( strategyId );
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
		}
		return STRATEGY_DETAIL;
	}
	
	//----------------------------getter/setter----------------------//
	public void setTourismStrategyService( ITourismStrategyService tourismStrategyService ) {
		this.tourismStrategyService = tourismStrategyService;
	}

	public List<TourismStrategyVO> getTourismStrategyVOs() {
		return tourismStrategyVOs;
	}

	public void setTourismStrategyVOs( List<TourismStrategyVO> tourismStrategyVOs ) {
		this.tourismStrategyVOs = tourismStrategyVOs;
	}

	public PageVO getPageVO() {
		return pageVO;
	}

	public void setPageVO( PageVO pageVO ) {
		this.pageVO = pageVO;
	}

	public Long getStrategyId() {
		return strategyId;
	}

	public void setStrategyId( Long strategyId ) {
		this.strategyId = strategyId;
	}

	public TourismStrategyVO getTourismStrategyVO() {
		return tourismStrategyVO;
	}

	public void setTourismStrategyVO( TourismStrategyVO tourismStrategyVO ) {
		this.tourismStrategyVO = tourismStrategyVO;
	}
	
}
