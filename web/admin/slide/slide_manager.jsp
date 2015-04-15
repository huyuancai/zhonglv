<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<s:if test="#session.userVO == null">
	<jsp:forward page="/admin/login.jsp"></jsp:forward>
</s:if>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<s:url value="/admin/css/global.css"/>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<s:url value="/js/jquery-1.4.4.min.js"/>"></script>
<title>滚动图片管理</title>
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="black_border">
      <tbody>
      	<tr>
	        <td height="32" bgcolor="#F5F5F5" class="topic">滚动图片管理 </td>
      	</tr>   
     </tbody>
	</table>
	
	<!-- 主体部分 -->
	<table cellpadding="0" cellspacing="1" border="0" width="100%">
    	<tbody>
        	<tr class="suphead">
            	<td width="3%">Id</td>
              	<td width="40%">滑块</td>
              	<td width="40%">名称</td>
              	<td width="17%">操作</td>
          	</tr>
          	
          	<s:iterator var="slideVO" value="#request.slideVOs" status="s">
	          	<tr class="lines">
	            	<td>
	              		<div id="div_slide_id_<s:property value="#s.index+1"/>">
	              			<input id="slide_id<s:property value="#s.index+1"/>" type="checkbox" value="<s:property value="#slideVO.getSlideId()"/>" name="slide_id">
						</div>
	            	</td>
	            	<td><img title="<s:property value="#slideVO.getSlideName()"/>" width="260" height="100" src="<s:url value="%{#slideVO.getSlideImgPath()}"/>"></td>
	            	<td><s:property value="#slideVO.getSlideName()"/></td>
	            	<td>
			            <a href="SlideManagerAction!editSlideById.action?slideVO.slideId=<s:property value="#slideVO.getSlideId()"/>">编辑</a>
						      |
				      	<a onclick="deleteSlide(<s:property value="#slideVO.getSlideId()"/>)" href="javascript:void(0);">删除</a>			
				    </td>
	          	</tr>
          	</s:iterator>
	        <tr>
	          <td colspan="9" align="center">
	            <input type="submit" name="BtnSelect" value="反选" onclick="invertSelection()" id="BtnSelect">
	            <select name="BatRunType" id="BatRunType">
					<option value="">==选择操作选项==</option>
					<option value="rem">批量推荐</option>
					<option value="unrem">取消推荐</option>
					<option value="delete">批量删除</option>
				</select>
	            <input type="submit" name="BtnRun" value="执行操作" onclick="execute()" id="BtnRun">
	          </td>
	        </tr>
    	</tbody>
    </table>
	
	<script type="text/javascript">
	</script>
</div>
</body>
</html>