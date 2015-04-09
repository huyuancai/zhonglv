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
		$("#addDepCity").click(function(){
			var depCityName = $("#depCityName").val();
			if( null == depCityName || "" == depCityName || undefined == depCityName ){
				alert("出发城市名称不能为空！");
				return false;
			}
			
			$.ajax({
				url:"DepartureCityAction!ajaxAddDepartureCity.action",
				type:"post",
				dataType:"json",
				async:false,
				data:{
					"depCityName":depCityName
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
		
		$("input[name='editDepCity']").click(function(event){
			var obj = event.target;
			$("input[name='editDepCity']").unbind("click");
			$(obj).val("确定");
			$(obj).next().val("取消");
			var $depCityName = $(obj).parent().prev();
			var depCityNameVal = $depCityName.text();
			var inputHTML = "<input type='text' name='desCity' value='"+depCityNameVal+"'>";
			$depCityName.text("");
			$depCityName.append(inputHTML);
			$(obj).click(function(){
				var depCityName = $(this).parent().prev().children().val();
				var depCityId = $(this).parent().prev().prev().text();
				if( null == depCityName || "" == depCityName || undefined == depCityName ){
					alert("城市名称不能为空！");
					return false;
				}
				$.ajax({
					url:"DepartureCityAction!ajaxUpdateDepartureCity.action",
					type:"post",
					dataType:"json",
					async:false,
					data:{
						"depCityId":depCityId,
						"depCityName":depCityName
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
		
		$("input[name='deleteDepCity']").click(function(event){
			if (confirm("添加容易，删除不易，且删且珍惜，确定删除吗？")) {
				var obj = event.target;
				var depCityId = $(obj).parent().prev().prev().text();
				$.ajax({
					url:"DepartureCityAction!ajaxDeleteDepartureCity.action",
					type:"post",
					dataType:"json",
					async:false,
					data:{
						"depCityId":depCityId
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
               		 名称：<input name="depCityName" type="text" id="depCityName">
               	</td>
            	<td>
	            	<input type="button" name="addDepCity" id="addDepCity" value="添加" >
	                <input type="button" name="" value="取消" >
	            </td>
            </tr>
            <s:iterator var="departureCityVO" value="#request.departureCityVOs">
	            <tr class="lines">
		            <td><s:property value="#departureCityVO.getDepCityId()"/></td>
		            <td><s:property value="#departureCityVO.getDepCityName()"/></td>
		            <td>
		            	<input type="button" name="editDepCity"  value="编辑" >
		                <input type="button" name="deleteDepCity" value="删除" >
		            </td>
	            </tr>
            </s:iterator>
         </tbody>
     </table>
</body>
</html>