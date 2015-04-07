package com.luoyang.zhonglv.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import com.luoyang.zhonglv.util.PropertiesUtils;

public class InitializationConfigFilter implements Filter {

	@Override
	public void init(FilterConfig config) throws ServletException {
		PropertiesUtils.initConfigMap(config.getServletContext());
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {

	}

}
