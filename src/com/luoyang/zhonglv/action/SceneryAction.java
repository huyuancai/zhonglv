package com.luoyang.zhonglv.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.ISceneryService;
import com.luoyang.zhonglv.vo.PageVO;
import com.luoyang.zhonglv.vo.SceneryVO;

public class SceneryAction extends BaseAction {

	private static final long serialVersionUID = 2838556403950420813L;
	private static final String SCENERY_DETAIL = "sceneryDetail";
	private static final long PAGE_SIZE = 20L;
	private ISceneryService sceneryService;
	private List<SceneryVO> sceneryVOs;
	private SceneryVO sceneryVO;
	private PageVO pageVO;
	private Long sceneryId;

	@Override
	public String execute() throws Exception {
		try {
			pageVO.setPageSize( PAGE_SIZE );
			Map<String, Object> pageMap = new HashMap<String, Object>();
			pageMap.put( "currentPage", ( pageVO.getCurrentPage() - 1 ) * pageVO.getPageSize() );
			pageMap.put( "pageSize", pageVO.getPageSize() );
			sceneryVOs = sceneryService.getSceneryByPageForList( pageMap );
			pageVO.setTotalSize( sceneryService.getSceneryCount( pageMap ) );
		}
		catch ( Exception e ) {
			logger.error( ExceptionUtils.getFullStackTrace( e ) );
		}
		return SUCCESS;
	}
	
	public String getSceneryById(){
		if ( null != sceneryId ) {
			try {
				sceneryVO = sceneryService.getSceneryById( sceneryId );
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
		}
		return SCENERY_DETAIL;
	}

	// --------------------------------getter/setter-----------------------//
	public PageVO getPageVO() {
		return pageVO;
	}

	public void setPageVO( PageVO pageVO ) {
		this.pageVO = pageVO;
	}

	public void setSceneryService( ISceneryService sceneryService ) {
		this.sceneryService = sceneryService;
	}

	public List<SceneryVO> getSceneryVOs() {
		return sceneryVOs;
	}

	public void setSceneryVOs( List<SceneryVO> sceneryVOs ) {
		this.sceneryVOs = sceneryVOs;
	}

	public SceneryVO getSceneryVO() {
		return sceneryVO;
	}

	public void setSceneryVO( SceneryVO sceneryVO ) {
		this.sceneryVO = sceneryVO;
	}

	public Long getSceneryId() {
		return sceneryId;
	}

	public void setSceneryId( Long sceneryId ) {
		this.sceneryId = sceneryId;
	}

}
