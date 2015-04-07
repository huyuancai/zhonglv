package com.luoyang.zhonglv.common.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;

import com.luoyang.zhonglv.util.Constants;
import com.luoyang.zhonglv.vo.UserVO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport {
	private static final long serialVersionUID = -6386709776519041373L;
	protected static Log logger = null;
	protected static final String RET_JSON = "json";

	public BaseAction() {
		logger = LogFactory.getLog( BaseAction.class );
	}

	protected HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}

	protected HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}

	protected Map<String, Object> getSession() {
		return ActionContext.getContext().getSession();
	}

	protected ServletContext getApplication() {
		return ServletActionContext.getServletContext();
	}

	protected boolean isLogin() {
		boolean isLogin = false;
		UserVO userVO = (UserVO) getSession().get( "userVO" );
		if ( null != userVO ) {
			isLogin = true;
		}
		return isLogin;
	}

	@SuppressWarnings("unchecked")
	public HashMap<String, String> getSettingsMap() {
		return (HashMap<String, String>) getApplication().getAttribute( Constants.SETTINGS_MAP_KEY );
	}

}
