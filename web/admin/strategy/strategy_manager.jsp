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
<title>攻略管理</title>
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="black_border">
      <tbody>
      	<tr>
	        <td height="32" bgcolor="#F5F5F5" class="topic">攻略管理 <a href="<s:url value="/admin/strategy/strategy_add.jsp"/>">添加</a></td>
        	<td>
			  	关键字：<input name="tourismStrategyVO.strategyName" id="strategyName" type="text" id="tbKey" value="<s:property value="#request.tourismStrategyVO.getStrategyName()"/>">
          		<input type="submit" name="Button2" value="查询" id="Button2" onclick="gotoPage(1,$('#strategyName').val())">
			</td>
	        <td align="right" bgcolor="#F5F5F5">        
	        </td>        
      	</tr>   
     </tbody>
	</table>
	
	<!-- 主体部分 -->
	<table cellpadding="0" cellspacing="1" border="0" width="100%">
    	<tbody>
        	<tr class="suphead">
            	<td width="3%">Id</td>
              	<td width="25%">名称</td>
              	<td width="8%">点击</td>
              	<td width="14%">日期</td>
              	<td width="10%">操作</td>
          	</tr>
          	
          	<s:iterator var="tourismStrategyVO" value="#request.tourismStrategyVOs" status="s">
	          	<tr class="lines">
	            	<td>
	              		<div id="div_strategy_id_<s:property value="#s.index+1"/>">
	              			<input id="strategy_id<s:property value="#s.index+1"/>" type="checkbox" value="<s:property value="#tourismStrategyVO.getStrategyId()"/>" name="strategy_id">
						</div>
	            	</td>
	            	<td>
	              		<div align="left">&nbsp;<a href="TourismStrategyAction!getTourismStrategyById.action?strategyId=<s:property value="#tourismStrategyVO.getStrategyId()"/>" target="_blank"><s:property value="#tourismStrategyVO.getStrategyName()"/></a>
			            </div>
	            	</td>
		            <td><s:property value="#tourismStrategyVO.getStrategyCounts()"/></td>
		            <td><s:property value="#tourismStrategyVO.getStrategyCreateTime()"/></td>
	            	<td>
			            <a href="TourismStrategyManagerAction!editTourismStrategyById.action?tourismStrategyVO.strategyId=<s:property value="#tourismStrategyVO.getStrategyId()"/>">编辑</a>
						      |
				      	<a onclick="deleteTourismStrategy(<s:property value="#tourismStrategyVO.getStrategyId()"/>)" href="javascript:void(0);">删除</a>			
				    </td>
	          	</tr>
          	</s:iterator>
	        <tr>
	          <td colspan="9" align="center">
	            <input type="submit" name="BtnSelect" value="反选" onclick="invertSelection()" id="BtnSelect">
	            <select name="BatRunType" id="BatRunType">
					<option value="">==选择操作选项==</option>
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
				<a href="javascript:gotoPage(1,'<s:property value="#request.tourismStrategyVO.getStrategyName()"/>');">首页</a>
				<a href="javascript:gotoPage(<s:property value="#request.pageVO.getPrePage()"/>,'<s:property value="#request.tourismStrategyVO.getStrategyName()"/>');">上一页</a>
				<a href="javascript:gotoPage(<s:property value="#request.pageVO.getNextPage()"/>,'<s:property value="#request.tourismStrategyVO.getStrategyName()"/>');">下一页</a>
				<a href="javascript:gotoPage(<s:property value="#request.pageVO.getTotalPage()"/>,'<s:property value="#request.tourismStrategyVO.getStrategyName()"/>');">末页</a>
				&nbsp;
				第<input name="gotoPage" id="gotoPage" style="width:20px;"/>页&nbsp;<button name="goto" onclick="customPage(<s:property value="#request.tourismStrategyVO.getStrategyCountry()"/>,<s:property value="#request.tourismStrategyVO.getStrategyType()"/>,<s:property value="#request.tourismStrategyVO.getStrategyCity()"/>,'<s:property value="#request.tourismStrategyVO.getStrategyName()"/>')">go</button>
			</td>
		</tr>
	</tbody></table>
	<script type="text/javascript">
		function gotoPage(currentPage,strategyName){
			var param = "?";
			if ( !currentPage ) {
				param += "pageVO.currentPage=1";
			}else{
				param += "pageVO.currentPage=" + currentPage;
			}
			if ( strategyName ) {
				param += "&tourismStrategyVO.strategyName=" + strategyName;
			}
			window.location.href="TourismStrategyManagerAction.action" + param;
		}
		
		function customPage(strategyName){
			var page = $("#gotoPage").val();
			if ( !page ) {
				page = 1;
			}
			if ( isNaN(page) ){
				page = 1;
			}
			gotoPage(page,strategyName);
		}
		
		function deleteTourismStrategy(strategyId){
			if ( confirm('添加容易，删除不易，且删且珍惜，确定删除吗？') ) {
				$.ajax({
					type:"post",
					url:"TourismStrategyManagerAction!ajaxDeleteTourismStrategy.action",
					async:false,
					dataType:"json",
					data:{
						'strategyId':strategyId
					},
					success:function(data){
						if ( data.code == 90000 ) {
							alert("攻略删除成功!");
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
			var strategyIds = $("input[name='strategy_id']");
			strategyIds.each(function(idx,obj){
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
			var strategyIds = new Array();
			$("input[name='strategy_id']:checked").each(function(){
				strategyIds.push($(this).val());
			});
			if( strategyIds.length <= 0 ){
				alert("请选择要执行操作的攻略信息！");
				return false;
			}
			if ( 'delete' == batRunType ) {
				action = 'TourismStrategyManagerAction!ajaxDeleteTourismStrategyByIds.action';
			}else{
				alert("请选择要执行的操作！");
				return false;
			}
			console.log("strategyIds=" + strategyIds.join('|'));
			if ( confirm("确定执行吗？") ) {
				$.ajax({
					type:"post",
					url:action,
					dataType:"json",
					data:"strategyIds=" + strategyIds.join('|'),
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