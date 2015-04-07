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
<script type="text/javascript">
	$().ready(function(){
		$("#addRouteType").click(function(){
			var routeTypeName = $("#routeTypeName").val();
			if( null == routeTypeName || "" == routeTypeName || undefined == routeTypeName ){
				alert("类型名称不能为空！");
				return false;
			}
			
			$.ajax({
				url:"/zhonglv/RouteTypeManagerAction!ajaxAddRouteType.action",
				type:"post",
				dataType:"json",
				async:false,
				data:{
					"routeTypeName":routeTypeName
				},
				success:function(data){
					if( data.code == 90000 ){
						window.location.reload();
					}else{
						alert(data.errMsg);
						return false;
					}
				},
				error: function (data, status, e)//服务器响应失败处理函数
	            {
	                alert(e);
	            }
			});
		});
		
		$("input[name='editRouteType']").click(function(event){
			var obj = event.target;
			$("input[name='editRouteType']").unbind("click");
			$(obj).val("确定");
			$(obj).next().val("取消");
			var $routeTypeName = $(obj).parent().prev();
			var routeTypeNameVal = $routeTypeName.text();
			var inputHTML = "<input type='text' name='routeType' value='"+routeTypeNameVal+"'>";
			$routeTypeName.text("");
			$routeTypeName.append(inputHTML);
			$(obj).click(function(){
				var routeTypeName = $(this).parent().prev().children().val();
				var routeTypeId = $(this).parent().prev().prev().text();
				if( null == routeTypeName || "" == routeTypeName || undefined == routeTypeName ){
					alert("类型名称不能为空！");
					return false;
				}
				$.ajax({
					url:"/zhonglv/RouteTypeManagerAction!ajaxUpdateRouteType.action",
					type:"post",
					dataType:"json",
					async:false,
					data:{
						"routeTypeId":routeTypeId,
						"routeTypeName":routeTypeName
					},
					success:function(data){
						if( data.code == 90000 ){
							window.location.reload();
						}else{
							alert(data.errMsg);
							return false;
						}
					},
					error: function (data, status, e)//服务器响应失败处理函数
		            {
		                alert(e);
		            }
				});
			});
			//绑定取消按钮事件
			$(obj).next().unbind("click");
			$(obj).next().click(function(){
				window.location.reload();
			});
		});
		
		$("input[name='deleteRouteType']").click(function(event){
			if (confirm("删除该线路类型会将该线路类型下的所有线路删除,请确认是否真的删除?")) {
				var obj = event.target;
				var routeTypeId = $(obj).parent().prev().prev().text();
				$.ajax({
					url:"/zhonglv/RouteTypeManagerAction!ajaxDeleteRouteType.action",
					type:"post",
					dataType:"json",
					async:false,
					data:{
						"routeTypeId":routeTypeId
					},
					success:function(data){
						if( data.code == 90000 ){
							window.location.reload();
						}else{
							alert(data.errMsg);
							return false;
						};
					},
					error: function (data, status, e)//服务器响应失败处理函数
		            {
		                alert(e);
		            }
				});
			}
		});
	});
</script>
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
	            	<input type="button" name="addRouteType" id="addRouteType" value="添加" >
	                <input type="button" name="" value="取消" >
	            </td>
            </tr>
            <s:iterator var="routeTypeVO" value="#request.routeTypeVOs" status="s">
	            <tr class="lines">
		            <td><s:property value="#routeTypeVO.getRouteTypeId()"/></td>
		            <td><s:property value="#routeTypeVO.getRouteTypeName()"/></td>
		            <td>
		            	<input type="button" name="editRouteType" id="editRouteType<s:property value="#s.index"/>" value="编辑" >
		                <input type="button" name="deleteRouteType" value="删除" >
		            </td>
	            </tr>
            </s:iterator>
         </tbody>
     </table>
</body>
</html>