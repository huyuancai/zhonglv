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
	<!-- 分页查询部分 -->
    <div class="PagerContainerTable">
	<table cellpadding="3" cellspacing="1" border="0" align="center">
		<tbody><tr>
			<td class="PagerInfoCell">页 <s:property value="#request.pageVO.getCurrentPage()"/> / <s:property value="#request.pageVO.getTotalPage()"/> 共<s:property value="#request.pageVO.getTotalSize()"/>条</td>
			<td class="PagerCurrentPageCell">
				&nbsp;
				<a href="javascript:gotoPage(1,'<s:property value="#request.slideVO.getSlideName()"/>');">首页</a>
				<a href="javascript:gotoPage(<s:property value="#request.pageVO.getPrePage()"/>,'<s:property value="#request.slideVO.getSlideName()"/>');">上一页</a>
				<a href="javascript:gotoPage(<s:property value="#request.pageVO.getNextPage()"/>,'<s:property value="#request.slideVO.getSlideName()"/>');">下一页</a>
				<a href="javascript:gotoPage(<s:property value="#request.pageVO.getTotalPage()"/>,'<s:property value="#request.slideVO.getSlideName()"/>');">末页</a>
				&nbsp;
				第<input name="gotoPage" id="gotoPage" style="width:20px;"/>页&nbsp;<button name="goto" onclick="customPage()">go</button>
			</td>
		</tr>
	</tbody></table>
	<script type="text/javascript">
		function gotoPage(currentPage,slideName){
			var param = "?";
			if ( !currentPage ) {
				param += "pageVO.currentPage=1";
			}else{
				param += "pageVO.currentPage=" + currentPage;
			}
			if ( slideName ) {
				param += "&slideVO.slideName=" + slideName;
			}
			window.location.href="SlideManagerAction.action" + param;
		}
		function customPage(){
			var page = $("#gotoPage").val();
			if ( !page ) {
				page = 1;
			}
			if ( isNaN(page) ){
				page = 1;
			}
			gotoPage(page);
		}
		
		function deleteSlide(slideId){
			if ( confirm('添加容易，删除不易，且删且珍惜，确定删除吗？') ) {
				$.ajax({
					type:"post",
					url:"SlideManagerAction!ajaxDeleteSlide.action",
					async:false,
					dataType:"json",
					data:{
						'slideVO.slideId':slideId
					},
					success:function(data){
						if ( data.code == 90000 ) {
							alert("滑块删除成功!");
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
			}
		}
		
		function invertSelection(){
			var slideIds = $("input[name='slide_id']");
			slideIds.each(function(idx,obj){
				if (obj.checked) {
					obj.checked = false;
				}else{
					obj.checked = true;
				}
			});
		}
		
		function execute(){
			var action = '';
			var batRunType = $("select[name='BatRunType']").val();
			var slideIds = new Array();
			$("input[name='slide_id']:checked").each(function(){
				slideIds.push($(this).val());
			});
			if( slideIds.length <= 0 ){
				alert("请选择要执行操作的景点！");
				return false;
			}
			if ( 'delete' == batRunType ) {
				action = 'SlideManagerAction!ajaxDeleteSlideByIds.action';
			}else{
				alert("请选择要执行的操作！");
				return false;
			}
			console.log("slideIds=" + slideIds.join('|'));
			if ( confirm("确定执行吗？") ) {
				$.ajax({
					type:"post",
					url:action,
					dataType:"json",
					data:"slideIds=" + slideIds.join('|'),
					success:function(data){
						if ( data.code == 90000 ) {
							alert("操作成功!");
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
			}
		}
	</script>
</div>
</body>
</html>