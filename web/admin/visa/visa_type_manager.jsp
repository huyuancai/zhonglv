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
		$("#addVisaType").click(function(){
			var typeName = $("#typeName").val();
			if( !typeName ){
				alert("签证类型名称不能为空！");
				return false;
			}
			
			$.ajax({
				url:"/zhonglv/VisaTypeManagerAction!ajaxAddVsiaType.action",
				type:"post",
				dataType:"json",
				async:false,
				data:{
					"typeName":typeName
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
		
		$("input[name='editVisaType']").click(function(event){
			var obj = event.target;
			$("input[name='editVisaType']").unbind("click");
			$(obj).val("确定");
			$(obj).next().val("取消");
			var $typeName = $(obj).parent().prev();
			var typeNameVal = $typeName.text();
			var inputHTML = "<input type='text' name='visaType' value='"+typeNameVal+"'>";
			$typeName.text("");
			$typeName.append(inputHTML);
			$(obj).click(function(){
				var typeName = $(this).parent().prev().children().val();
				var typeId = $(this).parent().prev().prev().text();
				if( !typeName ){
					alert("签证类型名称不能为空！");
					return false;
				}
				$.ajax({
					url:"/zhonglv/VisaTypeManagerAction!ajaxUpdateVisaType.action",
					type:"post",
					dataType:"json",
					async:false,
					data:{
						"typeId":typeId,
						"typeName":typeName
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
		
		$("input[name='deleteVisaType']").click(function(event){
			if (confirm("是否真的删除?")) {
				var obj = event.target;
				var typeId = $(obj).parent().prev().prev().text();
				$.ajax({
					url:"/zhonglv/VisaTypeManagerAction!ajaxDeleteVisaType.action",
					type:"post",
					dataType:"json",
					async:false,
					data:{
						"typeId":typeId
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
	            	<span id="lbTitle">签证类型管理</span>
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
               		 名称：<input name="typeName" type="text" id="typeName">
               	</td>
            	<td>
	            	<input type="button" name="addVisaType" id="addVisaType" value="添加" >
	                <input type="button" name="" value="取消" >
	            </td>
            </tr>
            <s:iterator var="visaTypeVO" value="#request.visaTypeVOs">
	            <tr class="lines">
		            <td><s:property value="#visaTypeVO.getTypeId()"/></td>
		            <td><s:property value="#visaTypeVO.getTypeName()"/></td>
		            <td>
		            	<input type="button" name="editVisaType"  value="编辑" >
		                <input type="button" name="deleteVisaType" value="删除" >
		            </td>
	            </tr>
            </s:iterator>
         </tbody>
     </table>
</body>
</html>