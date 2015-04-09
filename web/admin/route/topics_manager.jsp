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
		$("#addTopics").click(function(){
			var topicsName = $("#topicsName").val();
			if( !topicsName ){
				alert("类型名称不能为空！");
				return false;
			}
			$.ajax({
				url:"TopicsManagerAction!ajaxAddTopics.action",
				type:"post",
				dataType:"json",
				async:false,
				data:{
					"topicsName":topicsName
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
		
		$("input[name='editTopics']").click(function(event){
			var obj = event.target;
			$("input[name='editTopics']").unbind("click");
			$(obj).val("确定");
			$(obj).next().val("取消");
			var $topicsName = $(obj).parent().prev();
			var topicsNameVal = $topicsName.text();
			var inputHTML = "<input type='text' name='topics' value='"+topicsNameVal+"'>";
			$topicsName.text("");
			$topicsName.append(inputHTML);
			$(obj).click(function(){
				var topicsName = $(this).parent().prev().children().val();
				var topicsId = $(this).parent().prev().prev().text();
				if( !topicsName ){
					alert("专题名称不能为空！");
					return false;
				}
				$.ajax({
					url:"TopicsManagerAction!ajaxUpdateTopics.action",
					type:"post",
					dataType:"json",
					async:false,
					data:{
						"topicsId":topicsId,
						"topicsName":topicsName
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
		
		$("input[name='deleteTopics']").click(function(event){
			if (confirm("是否真的删除?")) {
				var obj = event.target;
				var topicsId = $(obj).parent().prev().prev().text();
				$.ajax({
					url:"TopicsManagerAction!ajaxDeleteTopics.action",
					type:"post",
					dataType:"json",
					async:false,
					data:{
						"topicsId":topicsId
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
               		 名称：<input name="topicsName" type="text" id="topicsName">
               	</td>
            	<td>
	            	<input type="button" name="addTopics" id="addTopics" value="添加" >
	                <input type="button" name="" value="取消" >
	            </td>
            </tr>
            <s:iterator var="topicsVO" value="#request.topicsVOs" status="s">
	            <tr class="lines">
		            <td><s:property value="#topicsVO.getTopicsId()"/></td>
		            <td><s:property value="#topicsVO.getTopicsName()"/></td>
		            <td>
		            	<input type="button" name="editTopics" id="editTopics<s:property value="#s.index"/>" value="编辑" >
		                <input type="button" name="deleteTopics" value="删除" >
		            </td>
	            </tr>
            </s:iterator>
         </tbody>
     </table>
</body>
</html>