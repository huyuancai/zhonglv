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
		$("#addDesCity").click(function(){
			var desCityName = $("#desCityName").val();
			if( null == desCityName || "" == desCityName || undefined == desCityName ){
				alert("目的地城市名称不能为空！");
				return false;
			}
			
			$.ajax({
				url:"DestinationCityAction!ajaxAddDestinationCity.action",
				type:"post",
				dataType:"json",
				async:false,
				data:{
					"desCityName":desCityName
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
		
		$("input[name='editDesCity']").click(function(event){
			var obj = event.target;
			$("input[name='editDesCity']").unbind("click");
			$(obj).val("确定");
			$(obj).next().val("取消");
			var $desCityName = $(obj).parent().prev();
			var desCityNameVal = $desCityName.text();
			var inputHTML = "<input type='text' name='desCity' value='"+desCityNameVal+"'>";
			$desCityName.text("");
			$desCityName.append(inputHTML);
			$(obj).click(function(){
				var desCityName = $(this).parent().prev().children().val();
				var desCityId = $(this).parent().prev().prev().text();
				if( null == desCityName || "" == desCityName || undefined == desCityName ){
					alert("城市名称不能为空！");
					return false;
				}
				$.ajax({
					url:"DestinationCityAction!ajaxUpdateDestinationCity.action",
					type:"post",
					dataType:"json",
					async:false,
					data:{
						"desCityId":desCityId,
						"desCityName":desCityName
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
		
		$("input[name='deleteDesCity']").click(function(event){
			if (confirm("添加容易，删除不易，且删且珍惜，确定删除吗？")) {
				var obj = event.target;
				var desCityId = $(obj).parent().prev().prev().text();
				$.ajax({
					url:"DestinationCityAction!ajaxDeleteDestinationCity.action",
					type:"post",
					dataType:"json",
					async:false,
					data:{
						"desCityId":desCityId
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
	            	<span id="lbTitle">目的地城市管理</span>
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
               		 名称：<input name="desCityName" type="text" id="desCityName">
               	</td>
            	<td>
	            	<input type="button" name="addDesCity" id="addDesCity" value="添加" >
	                <input type="button" name="" value="取消" >
	            </td>
            </tr>
            <s:iterator var="destinationCityVO" value="#request.destinationCityVOs">
	            <tr class="lines">
		            <td><s:property value="#destinationCityVO.getDesCityId()"/></td>
		            <td><s:property value="#destinationCityVO.getDesCityName()"/></td>
		            <td>
		            	<input type="button" name="editDesCity"  value="编辑" >
		                <input type="button" name="deleteDesCity" value="删除" >
		            </td>
	            </tr>
            </s:iterator>
         </tbody>
     </table>
</body>
</html>