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
<title>景点管理</title>
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="black_border">
      <tbody>
      	<tr>
	        <td height="32" bgcolor="#F5F5F5" class="topic">景点管理 <a href="<s:url value="/SceneryManagerAction!initAddScenery.action"/>">添加</a></td>
	        <td bgcolor="#F5F5F5">
          		关键字：<input name="sceneryVO.sceneryName" id="sceneryName" type="text" id="tbKey" value="<s:property value="#request.sceneryVO.getSceneryName()"/>">
          		<input type="submit" name="Button2" value="查询" id="Button2" onclick="gotoPage(1,$('#sceneryName').val(),<s:property value="#request.SceneryVO.isSceneryRecommend()"/>)">
        	</td>
	        <td align="right" bgcolor="#F5F5F5">        
		        <a href="<s:url value="/SceneryManagerAction.action"/>">全部</a>        
		        <a href="javascript:gotoPage(1,'<s:property value="#request.sceneryVO.getSceneryName()"/>',true)">推荐</a>
		        <input type="hidden" id="sceneryRecommend" name="sceneryRecommend" value="<s:property value="#request.sceneryVO.isSceneryRecommend()"/>"/> 
	        </td>        
      	</tr>   
     </tbody>
	</table>
	
	<!-- 主体部分 -->
	<table cellpadding="0" cellspacing="1" border="0" width="100%">
    	<tbody>
        	<tr class="suphead">
            	<td width="3%">Id</td>
              	<td width="20%">名称</td>
              	<td width="5%">级别</td>
              	<td width="8%">价格</td>
              	<td width="6%">点击</td>
              	<td width="20%">地址</td>
              	<td width="14%">日期</td>
              	<td width="11%">管理</td>
              	<td width="9%">操作</td>
          	</tr>
          	
          	<s:iterator var="sceneryVO" value="#request.sceneryVOs" status="s">
	          	<tr class="lines">
	            	<td>
	              		<div id="div_scenery_id_<s:property value="#s.index+1"/>">
	              			<input id="scenery_id<s:property value="#s.index+1"/>" type="checkbox" value="<s:property value="#sceneryVO.getSceneryId()"/>" name="scenery_id">
						</div>
	            	</td>
	            	<td>
	              		<div align="left">&nbsp;<a href="javascript:void(0);" target="_blank"><s:property value="#sceneryVO.getSceneryName()"/></a>
	              			<s:if test="#sceneryVO.isSceneryRecommend()">
					        	[推荐]			              
	              			</s:if>
			            </div>
	            	</td>
	            	<td><s:property value="#sceneryVO.getSceneryLevel()"/></td>
	            	<td><s:property value="#sceneryVO.getSceneryPrice()"/></td>
	            	<td><s:property value="#sceneryVO.getSceneryHits()"/></td>
	            	<td><s:property value="#sceneryVO.getSceneryAddr()"/></td>
		            <td><s:property value="#sceneryVO.getSceneryCreateDate()"/></td>
		            <td>
		              <a href="javascript:void(0);">图片</a>
		            </td>
	            	<td>
			            <a href="/zhonglv/SceneryManagerAction!editSceneryById.action?sceneryVO.sceneryId=<s:property value="#sceneryVO.getSceneryId()"/>">编辑</a>
						      |
				      	<a onclick="deleteScenery(<s:property value="#sceneryVO.getSceneryId()"/>)" href="javascript:void(0);">删除</a>			
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
				<a href="javascript:gotoPage(1,'<s:property value="#request.sceneryVO.getSceneryName()"/>',<s:property value="#request.sceneryVO.isSceneryRecommend()"/>);">首页</a>
				<a href="javascript:gotoPage(<s:property value="#request.pageVO.getPrePage()"/>,'<s:property value="#request.sceneryVO.getSceneryName()"/>',<s:property value="#request.sceneryVO.isSceneryRecommend()"/>);">上一页</a>
				<a href="javascript:gotoPage(<s:property value="#request.pageVO.getNextPage()"/>,'<s:property value="#request.sceneryVO.getSceneryName()"/>',<s:property value="#request.sceneryVO.isSceneryRecommend()"/>);">下一页</a>
				<a href="javascript:gotoPage(<s:property value="#request.pageVO.getTotalPage()"/>,'<s:property value="#request.sceneryVO.getSceneryName()"/>',<s:property value="#request.sceneryVO.isSceneryRecommend()"/>);">末页</a>
				&nbsp;
				第<input name="gotoPage" id="gotoPage" style="width:20px;"/>页&nbsp;<button name="goto" onclick="customPage()">go</button>
			</td>
		</tr>
	</tbody></table>
	<script type="text/javascript">
		function gotoPage(currentPage,sceneryName,sceneryRecommend){
			var param = "?";
			if ( null == currentPage || '' == currentPage || undefined == currentPage) {
				param += "pageVO.currentPage=1";
			}else{
				param += "pageVO.currentPage=" + currentPage;
			}
			if (null != sceneryName && "" != sceneryName && undefined != sceneryName) {
				param += "&sceneryVO.sceneryName=" + sceneryName;
			}
			if ( null != sceneryRecommend && "" != sceneryRecommend && undefined != sceneryRecommend ) {
				param += "&sceneryVO.sceneryRecommend=true";
			}
			window.location.href="/zhonglv/SceneryManagerAction.action" + param;
		}
		function customPage(){
			var page = $("#gotoPage").val();
			if ( null == page || "" == page || undefined == page ) {
				page = 1;
			}
			if ( isNaN(page) ){
				page = 1;
			}
			gotoPage(page);
		}
		
		function deleteScenery(sceneryId){
			if ( confirm('添加容易，删除不易，且删且珍惜，确定删除吗？') ) {
				$.ajax({
					type:"post",
					url:"/zhonglv/SceneryManagerAction!ajaxDeleteScenery.action",
					async:false,
					dataType:"json",
					data:{
						'sceneryId':sceneryId
					},
					success:function(data){
						if ( data.code == 90000 ) {
							alert("景点删除成功!");
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
			var sceneryIds = $("input[name='scenery_id']");
			sceneryIds.each(function(idx,obj){
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
			var sceneryIds = new Array();
			$("input[name='scenery_id']:checked").each(function(){
				sceneryIds.push($(this).val());
			});
			if( sceneryIds.length <= 0 ){
				alert("请选择要执行操作的景点！");
				return false;
			}
			if ( 'rem' == batRunType ) {
				action = "/zhonglv/SceneryManagerAction!ajaxUpdateSceneryRecommend.action";
			} else if ( 'unrem' == batRunType ) {
				action = "/zhonglv/SceneryManagerAction!ajaxUpdateCancelSceneryRecommend.action";
			} else if ( 'delete' == batRunType ) {
				action = '/zhonglv/SceneryManagerAction!ajaxDeleteSceneryByIds.action';
			}else{
				alert("请选择要执行的操作！");
				return false;
			}
			console.log("sceneryIds=" + sceneryIds.join('|'));
			if ( confirm("确定执行吗？") ) {
				$.ajax({
					type:"post",
					url:action,
					dataType:"json",
					data:"sceneryIds=" + sceneryIds.join('|'),
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