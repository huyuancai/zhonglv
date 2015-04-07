package com.luoyang.zhonglv.common.service;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class BaseService {
	protected Log logger = null;

	public BaseService() {
		logger = LogFactory.getLog( BaseService.class );
	}
}
