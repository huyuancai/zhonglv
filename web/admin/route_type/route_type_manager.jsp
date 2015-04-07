<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<s:if test="#session.userVO == null">
	<jsp:forward page="/admin/login.jsp"></jsp:forward>
</s:if>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<s:url value="/admin/route/css/global.css"/>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<s:url value="/js/jquery-1.4.4.min.js"/>"></script>
<title>线路类型管理</title>
</head>
<body>
	<table cellpadding="0" cellspacing="1" border="0" width="100%">
    	<tbody>
      		<tr>
	      		<td colspan="4" class="topic">
	            	<span id="lbTitle">类型管理</span>
	      		</td>
	    	</tr>   
    	</tbody>
    </table>
    <table cellpadding="0" cellspacing="1" border="0" width="100%" class="border">            
    	<tbody>
        	<tr class="suphead">
            	<td>id</td>
              	<td>名称</td>
              	<td>操作</td>
          	</tr>
            <tr class="alterlines">
            	<td>插入行</td>
            	<td>
               		 名称：<input name="routeTypeName" type="text" id="routeTypeName">
               	</td>
            	<td>
	            	<input type="button" name="" value="添加" >
	                <input type="button" name="" value="取消" >
	            </td>
            </tr>
            <s:iterator var="routeTypeVO" value="#request.routeTypeVOs">
	            <tr class="lines">
		            <td><s:property value="#routeTypeVO.getRouteTypeId()"/></td>
		            <td><s:property value="#routeTypeVO.getRouteTypeName()"/></td>
		            <td>
		            	<input type="button" name="" value="编辑" >
		                <input type="button" name="" value="删除" >
		            </td>
	            </tr>
            </s:iterator>
         </tbody>
     </table>
</body>
</html>