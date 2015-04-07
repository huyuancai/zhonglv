package com.luoyang.zhonglv.interceptor;

import java.util.Collection;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.luoyang.zhonglv.common.action.BaseAction;
import com.luoyang.zhonglv.util.StringUtil;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class RequestLoggerInterceptor extends BaseAction implements Interceptor {

	private static final long serialVersionUID = 1490508912672707661L;

	@Override
	public void destroy() {

	}

	@Override
	public void init() {

	}

	@Override
	public String intercept( ActionInvocation invocation ) throws Exception {
		logger.info( getRequestInfo( super.getRequest() ) );
		String result = null;
		result = invocation.invoke();
		getResponseInfo( getResponse(), result );
		return result;
	}

	public static String getRequestInfo( HttpServletRequest request ) {
		StringBuffer retSb = new StringBuffer();
		retSb.append( String.format( "%1$-30s%2$s\n", REQUEST_ITEM.ServletName.name() + StringUtil.SIGN_COLON,
				request.getServletPath() ) );
		append2StrBuff4Request( REQUEST_ITEM.RequestHeaders, request.getHeaderNames(), request, retSb );
		append2StrBuff4Request( REQUEST_ITEM.RequestParams, request.getParameterNames(), request, retSb );
		append2StrBuff4Request( REQUEST_ITEM.Attributes, request.getAttributeNames(), request, retSb );

		return retSb.toString();
	}

	public static String getResponseInfo( HttpServletResponse response, String responseContents ) {
		StringBuffer retSb = new StringBuffer();
		retSb.append( String.format( "%1$-30s\n", RESPONSE_ITEM.ResponseHeaders.name() + StringUtil.SIGN_COLON ) );
		Collection<String> itemCollection = response.getHeaderNames();
		for ( String item : itemCollection ) {
			retSb.append( String.format( "\t%1$-30s%2$s\n", item + StringUtil.SIGN_COLON, response.getHeader( item ) ) );
		}

		retSb.append( String.format( "%1$-30s\n", RESPONSE_ITEM.ResponseContents.name() + StringUtil.SIGN_COLON ) );
		retSb.append( String.format( "\t%1$-30s\n", responseContents ) );

		return retSb.toString();
	}

	enum REQUEST_ITEM {
		ServletName, RequestHeaders, RequestParams, Attributes, RequestURL;
	}

	enum RESPONSE_ITEM {
		ResponseHeaders, ResponseContents;
	}

	private static void append2StrBuff4Request( REQUEST_ITEM reqItem, Enumeration<String> enumItem,
			HttpServletRequest request, StringBuffer retSb ) {
		boolean isFirst = true;
		String itemName;
		while ( enumItem.hasMoreElements() ) {
			if ( isFirst ) {
				retSb.append( reqItem.name() + StringUtil.SIGN_COLON ).append( StringUtil.SIGN_ENTERKEY );
				isFirst = false;
			}
			itemName = enumItem.nextElement();
			if ( REQUEST_ITEM.Attributes == reqItem ) {
				retSb.append( String.format( "\t%1$-50s%2$s\n", itemName + StringUtil.SIGN_COLON,
						request.getAttribute( itemName ) ) );
			}
			else if ( REQUEST_ITEM.RequestHeaders == reqItem ) {
				retSb.append( String.format( "\t%1$-30s%2$s\n", itemName + StringUtil.SIGN_COLON,
						request.getHeader( itemName ) ) );
			}
			else {
				retSb.append( String.format( "\t%1$-30s%2$s\n", itemName + StringUtil.SIGN_COLON,
						request.getParameter( itemName ) ) );
			}
		}
	}

}
