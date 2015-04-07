<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<s:if test="#session.userVO == null">
	<jsp:forward page="/admin/login.jsp"></jsp:forward>
</s:if>
<!DOCTYPE html >
<html>
<head>
<title>管理中心</title>
<meta http-equiv=Content-Type content=text/html;charset=utf-8>
<style type="text/css">
	body{
		margin: 0px auto;
		padding:0px;
	}
</style>
</head>
<frameset rows="64,*" cols="*" frameborder="no" border="0" framespacing="0">
	<frame src="<s:url value="/admin/admin_top.jsp"/>" noresize="noresize" frameborder="no" name="topFrame" scrolling="no" marginwidth="0" marginheight="0" target="main" />
  <frameset cols="200,*"  rows="*" id="frame">
	<frame src="<s:url value="/admin/left.jsp"/>" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" target="main" />
	<frame src="<s:url value="/admin/right.jsp"/>" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" target="_self" />
  </frameset>
<noframes>
  <body>
  </body>
    </noframes>
</html>
