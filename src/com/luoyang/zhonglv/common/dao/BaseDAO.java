package com.luoyang.zhonglv.common.dao;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;

public class BaseDAO extends SqlSessionDaoSupport {
	protected Log logger;

	public BaseDAO() {
		logger = LogFactory.getLog( this.getClass() );
	}
}
