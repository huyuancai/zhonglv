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
		$("#addVisaCountry").click(function(){
			var countryName = $("#countryName").val();
			if( !countryName ){
				alert("签证国家名称不能为空！");
				return false;
			}
			
			$.ajax({
				url:"/zhonglv/VisaCountryManagerAction!ajaxAddVsiaCountry.action",
				type:"post",
				dataType:"json",
				async:false,
				data:{
					"countryName":countryName
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
		
		$("input[name='editVisaCountry']").click(function(event){
			var obj = event.target;
			$("input[name='editVisaCountry']").unbind("click");
			$(obj).val("确定");
			$(obj).next().val("取消");
			var $countryName = $(obj).parent().prev();
			var countryNameVal = $countryName.text();
			var inputHTML = "<input type='text' name='visaCountry' value='"+countryNameVal+"'>";
			$countryName.text("");
			$countryName.append(inputHTML);
			$(obj).click(function(){
				var countryName = $(this).parent().prev().children().val();
				var countryId = $(this).parent().prev().prev().text();
				if( !countryName ){
					alert("签证国家名称不能为空！");
					return false;
				}
				$.ajax({
					url:"/zhonglv/VisaCountryManagerAction!ajaxUpdateVisaCountry.action",
					type:"post",
					dataType:"json",
					async:false,
					data:{
						"countryId":countryId,
						"countryName":countryName
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
		
		$("input[name='deleteVisaCountry']").click(function(event){
			if (confirm("是否真的删除?")) {
				var obj = event.target;
				var countryId = $(obj).parent().prev().prev().text();
				$.ajax({
					url:"/zhonglv/VisaCountryManagerAction!ajaxDeleteVisaCountry.action",
					type:"post",
					dataType:"json",
					async:false,
					data:{
						"countryId":countryId
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
	            	<span id="lbTitle">签证国家管理</span>
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
               		 名称：<input name="countryName" type="text" id="countryName">
               	</td>
            	<td>
	            	<input type="button" name="addVisaCountry" id="addVisaCountry" value="添加" >
	                <input type="button" name="" value="取消" >
	            </td>
            </tr>
            <s:iterator var="visaCountryVO" value="#request.visaCountryVOs">
	            <tr class="lines">
		            <td><s:property value="#visaCountryVO.getCountryId()"/></td>
		            <td><s:property value="#visaCountryVO.getCountryName()"/></td>
		            <td>
		            	<input type="button" name="editVisaCountry"  value="编辑" >
		                <input type="button" name="deleteVisaCountry" value="删除" >
		            </td>
	            </tr>
            </s:iterator>
         </tbody>
     </table>
</body>
</html>