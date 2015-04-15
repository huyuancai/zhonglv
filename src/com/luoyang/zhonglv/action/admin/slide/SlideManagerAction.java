package com.luoyang.zhonglv.action.admin.slide;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.exception.ExceptionUtils;
import org.apache.commons.lang3.StringUtils;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.service.ISlideService;
import com.luoyang.zhonglv.util.EnumDefine.RET_CODE;
import com.luoyang.zhonglv.vo.PageVO;
import com.luoyang.zhonglv.vo.RetResultVO;
import com.luoyang.zhonglv.vo.SlideVO;

public class SlideManagerAction extends BaseAction {

	private static final long serialVersionUID = -7034191855780666088L;
	private ISlideService slideService;
	private RetResultVO resultVO = new RetResultVO();
	private List<SlideVO> slideVOs;
	private SlideVO slideVO;
	private PageVO pageVO;

	public String execute() throws Exception {
		if ( super.isLogin() ) {
			try {
				Map<String, Object> paramMap = new HashMap<String, Object>();
				paramMap.put( "index", ( pageVO.getCurrentPage() - 1 ) * pageVO.getPageSize() );
				paramMap.put( "pageSize", pageVO.getPageSize() );
				paramMap.put( "slideName", slideVO.getSlideName() );
				slideVOs = slideService.getSlideByPageForManager( paramMap );
				pageVO.setTotalSize( slideService.getSlideCount( paramMap ) );
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
				slideVOs = null;
			}
			return SUCCESS;
		}
		else {
			return LOGIN;
		}
	}

	public String ajaxAddSlide() {
		if ( super.isLogin() ) {
			try {
				if ( StringUtils.isEmpty( slideVO.getSlideImgPath() ) ) {
					resultVO.setCode( RET_CODE.E92131.getCode() );
					resultVO.setErrMsg( RET_CODE.E92131.getErrMsg() );
					return RET_JSON;
				}
				if ( StringUtils.isEmpty( slideVO.getSlideName() ) ) {
					resultVO.setCode( RET_CODE.E92131.getCode() );
					resultVO.setErrMsg( RET_CODE.E92131.getErrMsg() );
					return RET_JSON;
				}
				if ( slideService.addSlide( slideVO ) ) {
					resultVO.setCode( RET_CODE.S90000.getCode() );
					return RET_JSON;
				}
			}
			catch ( Exception e ) {
				logger.error( ExceptionUtils.getFullStackTrace( e ) );
			}
			resultVO.setCode( RET_CODE.E92133.getCode() );
			resultVO.setErrMsg( RET_CODE.E92133.getErrMsg() );
			return RET_JSON;
		}
		else {
			return LOGIN;
		}
	}

	// ---------------------------getter/setter----------------------//
	public void setSlideService( ISlideService slideService ) {
		this.slideService = slideService;
	}

	public SlideVO getSlideVO() {
		return slideVO;
	}

	public void setSlideVO( SlideVO slideVO ) {
		this.slideVO = slideVO;
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

	public List<SlideVO> getSlideVOs() {
		return slideVOs;
	}

	public void setSlideVOs( List<SlideVO> slideVOs ) {
		this.slideVOs = slideVOs;
	}

}
