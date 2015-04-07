package com.luoyang.zhonglv.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.luoyang.zhonglv.common.service.BaseService;
import com.luoyang.zhonglv.dao.IRouteTopicsDAO;
import com.luoyang.zhonglv.dao.ITopicsDAO;
import com.luoyang.zhonglv.dto.TopicsDTO;
import com.luoyang.zhonglv.service.ITopicsService;
import com.luoyang.zhonglv.util.BeanUtils;
import com.luoyang.zhonglv.vo.TopicsVO;

public class TopicsServiceImpl extends BaseService implements ITopicsService {
	private ITopicsDAO topicsDAO;
	private IRouteTopicsDAO routeTopicsDAO;

	public List<TopicsVO> getAllTopics() throws DataAccessException {
		List<TopicsVO> topicsVOs = new ArrayList<TopicsVO>();
		List<TopicsDTO> topicsDTOs = topicsDAO.getAllTopics();
		topicsVOs = BeanUtils.copyList( topicsDTOs, TopicsVO.class );
		return topicsVOs;
	}

	public boolean addTopics( String topicsName ) throws DataAccessException {
		return topicsDAO.addTopics( topicsName );
	}

	public boolean updateTopics( Long topicsId, String topicsName ) throws DataAccessException {
		Map<String, Object> topicsMap = new HashMap<String, Object>();
		topicsMap.put( "topicsId", topicsId );
		topicsMap.put( "topicsName", topicsName );
		return topicsDAO.updateTopics( topicsMap );
	}

	public void deleteTopics( Long topicsId ) throws DataAccessException {
		routeTopicsDAO.deleteRouteTopicsByTopicsId( topicsId );
		topicsDAO.deleteTopics( topicsId );
	}

	public String getTopicsNameById( Long topicsId ) throws DataAccessException {
		return topicsDAO.getTopicsNameById( topicsId );
	}

	// ---------------------------getter/setter----------------------//
	
	public void setRouteTopicsDAO( IRouteTopicsDAO routeTopicsDAO ) {
		this.routeTopicsDAO = routeTopicsDAO;
	}
	
	public void setTopicsDAO( ITopicsDAO topicsDAO ) {
		this.topicsDAO = topicsDAO;
	}

}
