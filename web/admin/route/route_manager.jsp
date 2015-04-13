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
<title>线路管理</title>
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="black_border">
      <tbody>
      	<tr>
	        <td height="32" bgcolor="#F5F5F5" class="topic">线路管理 <a href="<s:url value="/RouteManagerAction!initAddRoute.action"/>">添加</a></td>
	        <td bgcolor="#F5F5F5">
          		关键字：<input name="routeVO.routeName" id="routeName" type="text" id="tbKey" value="<s:property value="#request.routeVO.getRouteName()"/>">
          		<input type="submit" name="Button2" value="查询" id="Button2" onclick="gotoPage(1,$('#routeName').val(),<s:property value="#request.routeVO.isRouteRecommend()"/>)">
        	</td>
	        <td align="right" bgcolor="#F5F5F5">        
		        <a href="<s:url value="/RouteManagerAction.action"/>">全部</a>        
		        <a href="javascript:gotoPage(1,'<s:property value="#request.routeVO.getRouteName()"/>',true)">推荐</a>
		        <a href="javascript:gotoPage(1,'<s:property value="#request.routeVO.getRouteName()"/>',false)">非推荐</a>
		        <input type="hidden" id="routeRecommend" name="routeRecommend" value="<s:property value="#request.routeVO.isRouteRecommend()"/>"/> 
	        </td>        
      	</tr>   
     </tbody>
	</table>
	
	<!-- 主体部分 -->
	<table cellpadding="0" cellspacing="1" border="0" width="100%">
    	<tbody>
        	<tr class="suphead">
            	<td width="3%">Id</td>
              	<td width="30%">名称</td>
              	<td width="8%">编号</td>
              	<td width="6%">价格</td>
              	<td width="14%">日期</td>
              	<td width="11%">管理</td>
              	<td width="9%">操作</td>
          	</tr>
          	
          	<s:iterator var="routeVO" value="#request.routeVOs" status="s">
	          	<tr class="lines">
	            	<td>
	              		<div id="div_route_id_<s:property value="#s.index+1"/>">
	              			<input id="route_id<s:property value="#s.index+1"/>" type="checkbox" value="<s:property value="#routeVO.getRouteId()"/>" name="route_id">
						</div>
	            	</td>
	            	<td>
	              		<div align="left">&nbsp;<a href="RouteAction!getRouteById.action?routeId=<s:property value="#routeVO.getRouteId()"/>" target="_blank"><s:property value="#routeVO.getRouteName()"/></a>
	              			<s:if test="#routeVO.isRouteRecommend()">
					        	[推荐]			              
	              			</s:if>
			            </div>
	            	</td>
	            	<td><s:property value="#routeVO.getRouteNumber()"/></td>
	            	<td><s:property value="#routeVO.getRoutePrice()"/></td>
		            <td><s:property value="#routeVO.getRouteCreateDate()"/></td>
		            <td>
		              <a href="RouteImageAction.action?routeId=<s:property value="#routeVO.getRouteId()"/>">图片</a>
		            </td>
	            	<td>
			            <a href="RouteManagerAction!editRouteById.action?routeVO.routeId=<s:property value="#routeVO.getRouteId()"/>">编辑</a>
						      |
				      	<a onclick="deleteRoute(<s:property value="#routeVO.getRouteId()"/>)" href="javascript:void(0);">删除</a>			
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
				<a href="javascript:gotoPage(1,'<s:property value="#request.routeVO.getRouteName()"/>',<s:property value="#request.routeVO.isRouteRecommend()"/>);">首页</a>
				<a href="javascript:gotoPage(<s:property value="#request.pageVO.getPrePage()"/>,'<s:property value="#request.routeVO.getRouteName()"/>',<s:property value="#request.routeVO.isRouteRecommend()"/>);">上一页</a>
				<a href="javascript:gotoPage(<s:property value="#request.pageVO.getNextPage()"/>,'<s:property value="#request.routeVO.getRouteName()"/>',<s:property value="#request.routeVO.isRouteRecommend()"/>);">下一页</a>
				<a href="javascript:gotoPage(<s:property value="#request.pageVO.getTotalPage()"/>,'<s:property value="#request.routeVO.getRouteName()"/>',<s:property value="#request.routeVO.isRouteRecommend()"/>);">末页</a>
				&nbsp;
				第<input name="gotoPage" id="gotoPage" style="width:20px;"/>页&nbsp;<button name="goto" onclick="customPage()">go</button>
			</td>
		</tr>
	</tbody></table>
	<script type="text/javascript">
		function gotoPage(currentPage,routeName,routeRecommend){
			var param = "?";
			if ( !currentPage ) {
				param += "pageVO.currentPage=1";
			}else{
				param += "pageVO.currentPage=" + currentPage;
			}
			if ( routeName ) {
				param += "&routeVO.routeName=" + routeName;
			}
			if ( routeRecommend || routeRecommend == false ) {
				param += "&routeVO.routeRecommend=" + routeRecommend;
			}
			window.location.href="RouteManagerAction.action" + param;
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
		
		function deleteRoute(routeId){
			if ( confirm('添加容易，删除不易，且删且珍惜，确定删除吗？') ) {
				$.ajax({
					type:"post",
					url:"RouteManagerAction!ajaxDeleteRoute.action",
					async:false,
					dataType:"json",
					data:{
						'routeId':routeId
					},
					success:function(data){
						if ( data.code == 90000 ) {
							alert("线路删除成功!");
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
			var routeIds = $("input[name='route_id']");
			routeIds.each(function(idx,obj){
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
			var routeIds = new Array();
			$("input[name='route_id']:checked").each(function(){
				routeIds.push($(this).val());
			});
			if( routeIds.length <= 0 ){
				alert("请选择要执行操作的线路！");
				return false;
			}
			if ( 'rem' == batRunType ) {
				action = "RouteManagerAction!ajaxUpdateRouteRecommend.action";
			} else if ( 'unrem' == batRunType ) {
				action = "RouteManagerAction!ajaxUpdateCancelRouteRecommend.action";
			} else if ( 'delete' == batRunType ) {
				action = 'RouteManagerAction!ajaxDeleteRouteByIds.action';
			}else{
				alert("请选择要执行的操作！");
				return false;
			}
			console.log("routeIds=" + routeIds.join('|'));
			if ( confirm("确定执行吗？") ) {
				$.ajax({
					type:"post",
					url:action,
					dataType:"json",
					data:"routeIds=" + routeIds.join('|'),
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