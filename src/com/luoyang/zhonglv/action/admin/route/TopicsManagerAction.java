package com.luoyang.zhonglv.action.admin.route;

import java.util.List;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.lang3.StringUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.ITopicsService;
import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;
import com.luoyang.zhonglv.vo.RetResultVO;
import com.luoyang.zhonglv.vo.TopicsVO;

public class TopicsManagerAction extends BaseAction {
	private static final long serialVersionUID = 8095437385369065830L;
	private ITopicsService topicsService;
	private List<TopicsVO> topicsVOs;
	private String topicsName;
	private Long topicsId;
	private RetResultVO resultVO = new RetResultVO();

	public String execute() {
		if ( super.isLogin() ) {
			try {
				topicsVOs = topicsService.getAllTopics();
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

	public String ajaxAddTopics() {
		if ( super.isLogin() ) {
			if ( StringUtils.isEmpty( topicsName ) ) {
				resultVO.setCode( RET_CODE.E92112.getCode() );
				resultVO.setErrMsg( RET_CODE.E92112.getErrMsg() );
				return RET_JSON;
			}
			if ( topicsService.addTopics( topicsName ) ) {
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			resultVO.setCode( RET_CODE.E92113.getCode() );
			resultVO.setErrMsg( RET_CODE.E92113.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxUpdateTopics() {
		if ( super.isLogin() ) {
			if ( null == topicsId ) {
				resultVO.setCode( RET_CODE.E92111.getCode() );
				resultVO.setErrMsg( RET_CODE.E92111.getErrMsg() );
				return RET_JSON;
			}
			if ( StringUtils.isEmpty( topicsName ) ) {
				resultVO.setCode( RET_CODE.E92112.getCode() );
				resultVO.setErrMsg( RET_CODE.E92112.getErrMsg() );
				return RET_JSON;
			}
			if ( topicsService.updateTopics( topicsId, topicsName ) ) {
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			resultVO.setCode( RET_CODE.E92115.getCode() );
			resultVO.setErrMsg( RET_CODE.E92115.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxDeleteTopics() {
		if ( super.isLogin() ) {
			if ( null == topicsId ) {
				resultVO.setCode( RET_CODE.E92111.getCode() );
				resultVO.setErrMsg( RET_CODE.E92111.getErrMsg() );
				return RET_JSON;
			}
			try {
				topicsService.deleteTopics( topicsId );
				resultVO.setCode( RET_CODE.S90000.getCode() );
				return RET_JSON;
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E92114.getCode() );
			resultVO.setErrMsg( RET_CODE.E92114.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	// -----------------------getter/setter-----------------------//

	public void setTopicsService( ITopicsService topicsService ) {
		this.topicsService = topicsService;
	}

	public List<TopicsVO> getTopicsVOs() {
		return topicsVOs;
	}

	public void setTopicsVOs( List<TopicsVO> topicsVOs ) {
		this.topicsVOs = topicsVOs;
	}

	public String getTopicsName() {
		return topicsName;
	}

	public void setTopicsName( String topicsName ) {
		this.topicsName = topicsName;
	}

	public RetResultVO getResultVO() {
		return resultVO;
	}

	public void setResultVO( RetResultVO resultVO ) {
		this.resultVO = resultVO;
	}

	public Long getTopicsId() {
		return topicsId;
	}

	public void setTopicsId( Long topicsId ) {
		this.topicsId = topicsId;
	}

}
