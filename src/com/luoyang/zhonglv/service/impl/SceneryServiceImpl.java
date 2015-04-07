package com.luoyang.zhonglv.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.service.BaseService;
import com.luoyang.zhonglv.dao.ISceneryDAO;
import com.luoyang.zhonglv.dto.SceneryDTO;
import com.luoyang.zhonglv.service.ISceneryService;
import com.luoyang.zhonglv.util.BeanUtils;
import com.luoyang.zhonglv.util.EnumDefine.SCENERY_RECOMMEND;
import com.luoyang.zhonglv.vo.SceneryVO;

public class SceneryServiceImpl extends BaseService implements ISceneryService {
	private ISceneryDAO sceneryDAO;
	
	public List<SceneryVO> getSceneryByRecommendAndPage(int currentPage, int recommendPageSize, int notRecommendPageSize) throws DataAccessException{
		List<SceneryVO> sceneryVOs = new ArrayList<SceneryVO>();
		List<SceneryDTO> sceneryDTOs = null;
		Map<String, Object> pageMap = new HashMap<String, Object>();
		pageMap.put( "currentPage", currentPage );
		// 查询不是推荐的景点
		pageMap.put( "pageSize", notRecommendPageSize );
		pageMap.put( "sceneryRecommend", SCENERY_RECOMMEND.FALSE.getValue() );
		sceneryDTOs = sceneryDAO.getSceneryByRecommendAndPage( pageMap );
		sceneryVOs.addAll( BeanUtils.copyList( sceneryDTOs, SceneryVO.class ) );
		// 查询推荐的景点
		pageMap.put( "pageSize", recommendPageSize );
		pageMap.put( "sceneryRecommend", SCENERY_RECOMMEND.TRUE.getValue() );
		sceneryDTOs = sceneryDAO.getSceneryByRecommendAndPage( pageMap );
		sceneryVOs.addAll( BeanUtils.copyList( sceneryDTOs, SceneryVO.class ) );
		
		return sceneryVOs;
	}

	public boolean addScenery( SceneryVO sceneryVO ) throws DataAccessException {
		boolean flag = false;
		SceneryDTO sceneryDTO = null;
		if ( null != sceneryVO ) {
			sceneryDTO = BeanUtils.copyObject( sceneryVO, SceneryDTO.class );
			flag = sceneryDAO.addScenery( sceneryDTO );
		}
		return flag;
	}

	public List<SceneryVO> getSceneryByPageAndManager( Map<String, Object> paramMap ) throws DataAccessException {
		if ( null == paramMap ) {
			return null;
		}
		List<SceneryVO> sceneryVOs = null;
		List<SceneryDTO> sceneryDTOs = sceneryDAO.getSceneryByPageAndManager( paramMap );
		if ( null != sceneryDTOs && sceneryDTOs.size() > 0 ) {
			sceneryVOs = BeanUtils.copyList( sceneryDTOs, SceneryVO.class );
		}
		return sceneryVOs;
	}
	
	public List<SceneryVO> getSceneryByPageForList( Map<String,Object> pageMap) throws DataAccessException {
		List<SceneryVO> visaVOs = new ArrayList<SceneryVO>();
		List<SceneryDTO> visaDTOs = null;
		visaDTOs = sceneryDAO.getSceneryByPageForList(pageMap);
		visaVOs = BeanUtils.copyList(visaDTOs, SceneryVO.class);
		return visaVOs;
	}

	public Long getSceneryCount( Map<String, Object> paramMap ) throws DataAccessException {
		if ( null == paramMap ) {
			return null;
		}
		return sceneryDAO.getSceneryCount( paramMap );
	}
	
	public SceneryVO getSceneryById( Long sceneryId ) throws DataAccessException {
		SceneryVO sceneryVO = null;
		if ( null == sceneryId ) {
			return null;
		}
		SceneryDTO sceneryDTO = sceneryDAO.getSceneryById( sceneryId );
		if ( null != sceneryDTO ) {
			sceneryVO = BeanUtils.copyObject( sceneryDTO, SceneryVO.class );
			String sceneryIntroduce = sceneryVO.getSceneryIntroduce();
			if ( StringUtils.isNotEmpty( sceneryIntroduce ) ) {
				sceneryVO.setSceneryIntroduce( sceneryIntroduce.replace( "\n", "" ).replace( "\r", "" ) );
			}
		}
		return sceneryVO;
	}
	
	public boolean updateScenery ( SceneryVO sceneryVO ) throws DataAccessException {
		boolean flag = false;
		SceneryDTO sceneryDTO = null;
		if ( null != sceneryVO ) {
			sceneryDTO = BeanUtils.copyObject( sceneryVO, SceneryDTO.class );
			flag = sceneryDAO.updateScenery( sceneryDTO );
		}
		return flag;
	}
	
	public void deleteSceneryByIds( List<Long> sceneryIds ) throws DataAccessException {
		sceneryDAO.deleteSceneryByIds( sceneryIds );
	}

	public boolean updateSceneryRecommend( List<Long> sceneryIds ) throws DataAccessException {
		return sceneryDAO.updateSceneryRecommend( sceneryIds );
	}

	public boolean updateCancelSceneryRecommend( List<Long> sceneryIds ) throws DataAccessException {
		return sceneryDAO.updateCancelSceneryRecommend( sceneryIds );
	}
	
	public void deleteScenery( Long sceneryId ) throws DataAccessException {
		sceneryDAO.deleteScenery( sceneryId );
	}
	// ---------------------------getter/setter-------------------------//

	public void setSceneryDAO( ISceneryDAO sceneryDAO ) {
		this.sceneryDAO = sceneryDAO;
	}

}
