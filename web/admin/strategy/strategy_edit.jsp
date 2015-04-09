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
<link rel="stylesheet" href="<s:url value="/admin/kindeditor/themes/default/default.css"/>" />
<script charset="utf-8" src="<s:url value="/admin/kindeditor/kindeditor-min.js"/>"></script>
<script charset="utf-8" src="<s:url value="/admin/kindeditor/lang/zh_CN.js"/>"></script>
<script type="text/javascript" src="<s:url value="/js/jquery-1.4.4.min.js"/>"></script>
<script type="text/javascript" src="<s:url value="/js/htmlDecode.js"/>"></script>
<script type="text/javascript">
	$().ready(function(){
		$("#Button1").click(function(){
			var strategy_id = $("input[name='strategy_id']").val();
			var strategy_name = $("input[name='strategy_name']").val();
			var strategy_content = editor1.html();//所需材料
			if ( !strategy_name  ) {
				alert("攻略名称不能为空！");
				return false;
			}
			if ( !strategy_content  ) {
				alert("攻略内容不能为空！");
				return false;
			}
			var strategy_counts = $("#strategy_counts").val();
			
			$.ajax({
				type:"post",
				url:"TourismStrategyManagerAction!ajaxUpdateTourismStrategy.action",
				async:false,
				dataType:"json",
				data:{
					'tourismStrategyVO.strategyId':strategy_id,
					'tourismStrategyVO.strategyName':strategy_name,
					'tourismStrategyVO.strategyContent':strategy_content,
					'tourismStrategyVO.strategyCounts':strategy_counts
				},
				success:function(data){
					if ( data.code == 90000 ) {
						alert("攻略编辑成功!");
						window.location.reload();
					}else{
						alert(data.errMsg);
					}
				},
				error: function (data, status, e)//服务器响应失败处理函数
	            {
	                alert(e);
	            }
			});
			
		});
		
	});
	
	function setImageErrMsg (errMsg) {
		$("#fileUploadStatus").css("display","inline-block");
		$("#fileUploadStatus").css("color","red");
		$("#fileUploadStatus").text(errMsg);
	}
	
</script>
</head>
<body>
	<table style="width:100%;" border="0" cellpadding="0" cellspacing="1" class="black_border">
		<tbody>
			<tr class="suphead">
		        <td colspan="2">攻略添加</td>
		    </tr>
		    <tr>
		    	<td class="fields_text">名称：</td>
		      	<td class="fields_input">
		          	<input name="strategy_id" type="hidden" id="strategy_id" value="<s:property value="#request.tourismStrategyVO.getStrategyId()"/>">
		          	<input name="strategy_name" type="text" id="strategy_name" class="input_long" value="<s:property value="#request.tourismStrategyVO.getStrategyName()"/>">
		          	<span id="RequiredFieldValidator1" style="color:Red;display:inline-block;">(*)</span>
		        </td>
		    </tr>
    		<tr>
		      <td class="fields_text" valign="top">攻略内容：</td>
		      <td class="fields_input">
		        <div class="ke-container ke-container-default" style="width: 100%;">
		        	<div style="display: block; height: 238px;" class="ke-edit">
		        		<textarea class="ke-edit-textarea" name="strategy_content" hidefocus="true" style="width: 100%; height: 238px;"></textarea>
		        		<script>
							var editor1;
							KindEditor.ready(function(K) {
								editor1 = K.create('textarea[name="strategy_content"]', {
									allowFileManager : true,
									uploadJson : '<s:url value="/admin/kindeditor/jsp/upload_json.jsp" />',
									fileManagerJson : '<s:url value="/admin/kindeditor/jsp/file_manager_json.jsp" />'
								});
								editor1.html(HTMLDecode('<s:property value="#request.tourismStrategyVO.getStrategyContent()"/>'));
							});
						</script>
		        	</div>
			    </div>
		      </td>
		    </tr>
		    <tr>
		      	<td class="fields_text">
		        	设置：
		       	</td>
		       	<td align="left" height="30" class="fields_input">
					点击：<input name="strategy_counts" type="text" id="strategy_counts" value="<s:property value="#request.tourismStrategyVO.getStrategyCounts()"/>" class="input_mini" style="width:51px;">
		      	</td>
		    </tr>
		    <tr>
		      <td></td>
		      <td align="left" height="50">
		      	<input type="submit" name="Button1" value="确 定" onclick="" id="Button1" class="btn-submit">
		        &nbsp;<input id="Button2" type="reset" value="取 消" class="btn-cancel" onclick="javascript:history.back();" />
		      </td>
		    </tr>
		</tbody>	
	</table>
</body>
</html>