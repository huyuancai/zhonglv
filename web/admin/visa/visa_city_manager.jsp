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
		$("#addVisaCity").click(function(){
			var cityName = $("#cityName").val();
			if( !cityName ){
				alert("签发城市名称不能为空！");
				return false;
			}
			
			$.ajax({
				url:"/zhonglv/VisaCityManagerAction!ajaxAddVsiaCity.action",
				type:"post",
				dataType:"json",
				async:false,
				data:{
					"cityName":cityName
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
		
		$("input[name='editVisaCity']").click(function(event){
			var obj = event.target;
			$("input[name='editVisaCity']").unbind("click");
			$(obj).val("确定");
			$(obj).next().val("取消");
			var $cityName = $(obj).parent().prev();
			var cityNameVal = $cityName.text();
			var inputHTML = "<input type='text' name='visaCity' value='"+cityNameVal+"'>";
			$cityName.text("");
			$cityName.append(inputHTML);
			$(obj).click(function(){
				var cityName = $(this).parent().prev().children().val();
				var cityId = $(this).parent().prev().prev().text();
				if( !cityName ){
					alert("签发城市名称不能为空！");
					return false;
				}
				$.ajax({
					url:"/zhonglv/VisaCityManagerAction!ajaxUpdateVisaCity.action",
					type:"post",
					dataType:"json",
					async:false,
					data:{
						"cityId":cityId,
						"cityName":cityName
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
		
		$("input[name='deleteVisaCity']").click(function(event){
			if (confirm("是否真的删除?")) {
				var obj = event.target;
				var cityId = $(obj).parent().prev().prev().text();
				$.ajax({
					url:"/zhonglv/VisaCityManagerAction!ajaxDeleteVisaCity.action",
					type:"post",
					dataType:"json",
					async:false,
					data:{
						"cityId":cityId
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
	            	<span id="lbTitle">签发城市管理</span>
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
               		 名称：<input name="cityName" type="text" id="cityName">
               	</td>
            	<td>
	            	<input type="button" name="addVisaCity" id="addVisaCity" value="添加" >
	                <input type="button" name="" value="取消" >
	            </td>
            </tr>
            <s:iterator var="visaCityVO" value="#request.visaCityVOs">
	            <tr class="lines">
		            <td><s:property value="#visaCityVO.getCityId()"/></td>
		            <td><s:property value="#visaCityVO.getCityName()"/></td>
		            <td>
		            	<input type="button" name="editVisaCity"  value="编辑" >
		                <input type="button" name="deleteVisaCity" value="删除" >
		            </td>
	            </tr>
            </s:iterator>
         </tbody>
     </table>
</body>
</html>