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
<script type="text/javascript">
	$().ready(function(){
		$("#Button1").click(function(){
			var news_name = $("input[name='news_name']").val();
			var news_content = editor1.html();//所需材料
			if ( !news_name  ) {
				alert("资讯名称不能为空！");
				return false;
			}
			if ( !news_content  ) {
				alert("资讯内容不能为空！");
				return false;
			}
			var news_counts = $("#news_counts").val();
			
			$.ajax({
				type:"post",
				url:"TourismNewsManagerAction!ajaxAddTourismNews.action",
				async:false,
				dataType:"json",
				data:{
					'tourismNewsVO.newsName':news_name,
					'tourismNewsVO.newsContent':news_content,
					'tourismNewsVO.newsCounts':news_counts
				},
				success:function(data){
					if ( data.code == 90000 ) {
						alert("资讯添加成功!");
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
		        <td colspan="2">资讯添加</td>
		    </tr>
		    <tr>
		    	<td class="fields_text">名称：</td>
		      	<td class="fields_input">
		          	<input name="news_name" type="text" id="news_name" class="input_long">
		          	<span id="RequiredFieldValidator1" style="color:Red;display:inline-block;">(*)</span>
		        </td>
		    </tr>
    		<tr>
		      <td class="fields_text" valign="top">资讯内容：</td>
		      <td class="fields_input">
		        <div class="ke-container ke-container-default" style="width: 100%;">
		        	<div style="display: block; height: 238px;" class="ke-edit">
		        		<textarea class="ke-edit-textarea" name="news_content" hidefocus="true" style="width: 100%; height: 238px;"></textarea>
		        		<script>
							var editor1;
							KindEditor.ready(function(K) {
								editor1 = K.create('textarea[name="news_content"]', {
									allowFileManager : true,
									uploadJson : '<s:url value="/admin/kindeditor/jsp/upload_json.jsp" />',
									fileManagerJson : '<s:url value="/admin/kindeditor/jsp/file_manager_json.jsp" />'
								});
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
					点击：<input name="news_counts" type="text" id="news_counts" class="input_mini" style="width:51px;">
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