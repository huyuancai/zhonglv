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
<title>线路管理</title>
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="black_border">
      <tbody>
      	<tr>
	        <td height="32" bgcolor="#F5F5F5" class="topic">签证管理 <a href="<s:url value="/VisaManagerAction!initAddVisa.action"/>">添加</a></td>
        	<td>
				 国家：
			   	<select name="visaCountry" id="visaCountry" style="margin-bottom: 0px">
					<option selected="selected" value="0">...</option>
			   		<s:iterator var="visaCountryVO" value="#request.visaCountryVOs">
						<option value="<s:property value="#visaCountryVO.getCountryId()"/>" <s:if test="#request.visaVO.getVisaCountry() == #visaCountryVO.getCountryId()">selected="selected"</s:if>><s:property value="#visaCountryVO.getCountryName()"/></option>
			   		</s:iterator>
				</select>
			          &nbsp;
			   	 类型：
			   	<select name="visaType" id="visaType">
					<option selected="selected" value="0">...</option>
			   		<s:iterator var="visaTypeVO" value="#request.visaTypeVOs">
						<option value="<s:property value="#visaTypeVO.getTypeId()"/>" <s:if test="#request.visaVO.getVisaType() == #visaTypeVO.getTypeId()">selected="selected"</s:if>><s:property value="#visaTypeVO.getTypeName()"/></option>
			   		</s:iterator>
				</select>
			          &nbsp;	
			  	签发城市：
			  	<select name="visaCity" id="visaCity">
					<option selected="selected" value="0">...</option>
			   		<s:iterator var="visaCityVO" value="#request.visaCityVOs">
						<option value="<s:property value="#visaCityVO.getCityId()"/>" <s:if test="#request.visaVO.getVisaCity() == #visaCityVO.getCityId()">selected="selected"</s:if>><s:property value="#visaCityVO.getCityName()"/></option>
			   		</s:iterator>
				</select>
			  	关键字：<input name="visaVO.visaName" id="visaName" type="text" id="tbKey" value="<s:property value="#request.visaVO.getVisaName()"/>">
          		<input type="submit" name="Button2" value="查询" id="Button2" onclick="gotoPage(1,$('#visaCountry').val(),$('#visaType').val(),$('#visaCity').val(),$('#visaName').val())">
          		<input type="button" name="Button3" value="重置" id="Button3" onclick="reset()">
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
              	<td width="10%">价格</td>
              	<td width="8%">点击</td>
              	<td width="14%">日期</td>
              	<td width="10%">操作</td>
          	</tr>
          	
          	<s:iterator var="visaVO" value="#request.visaVOs" status="s">
	          	<tr class="lines">
	            	<td>
	              		<div id="div_visa_id_<s:property value="#s.index+1"/>">
	              			<input id="visa_id<s:property value="#s.index+1"/>" type="checkbox" value="<s:property value="#visaVO.getVisaId()"/>" name="visa_id">
						</div>
	            	</td>
	            	<td>
	              		<div align="left">&nbsp;<a href="/zhonglv/VisaAction!getVisaById.action?visaId=<s:property value="#visaVO.getVisaId()"/>" target="_blank"><s:property value="#visaVO.getVisaName()"/></a>
			            </div>
	            	</td>
	            	<td><s:property value="#visaVO.getVisaPrice()"/></td>
		            <td><s:property value="#visaVO.getVisaCount()"/></td>
		            <td><s:property value="#visaVO.getVisaCreateTime()"/></td>
	            	<td>
			            <a href="/zhonglv/VisaManagerAction!editVisaById.action?visaVO.visaId=<s:property value="#visaVO.getVisaId()"/>">编辑</a>
						      |
				      	<a onclick="deleteVisa(<s:property value="#visaVO.getVisaId()"/>)" href="javascript:void(0);">删除</a>			
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
				<a href="javascript:gotoPage(1,'<s:property value="#request.visaVO.getVisaName()"/>');">首页</a>
				<a href="javascript:gotoPage(<s:property value="#request.pageVO.getPrePage()"/>,<s:property value="#request.visaVO.getVisaCountry()"/>,<s:property value="#request.visaVO.getVisaType()"/>,<s:property value="#request.visaVO.getVisaCity()"/>,'<s:property value="#request.visaVO.getVisaName()"/>');">上一页</a>
				<a href="javascript:gotoPage(<s:property value="#request.pageVO.getNextPage()"/>,<s:property value="#request.visaVO.getVisaCountry()"/>,<s:property value="#request.visaVO.getVisaType()"/>,<s:property value="#request.visaVO.getVisaCity()"/>,'<s:property value="#request.visaVO.getVisaName()"/>');">下一页</a>
				<a href="javascript:gotoPage(<s:property value="#request.pageVO.getTotalPage()"/>,<s:property value="#request.visaVO.getVisaCountry()"/>,<s:property value="#request.visaVO.getVisaType()"/>,<s:property value="#request.visaVO.getVisaCity()"/>,'<s:property value="#request.visaVO.getVisaName()"/>');">末页</a>
				&nbsp;
				第<input name="gotoPage" id="gotoPage" style="width:20px;"/>页&nbsp;<button name="goto" onclick="customPage(<s:property value="#request.visaVO.getVisaCountry()"/>,<s:property value="#request.visaVO.getVisaType()"/>,<s:property value="#request.visaVO.getVisaCity()"/>,'<s:property value="#request.visaVO.getVisaName()"/>')">go</button>
			</td>
		</tr>
	</tbody></table>
	<script type="text/javascript">
		function gotoPage(currentPage,visaCountry,visaType,visaCity,visaName){
			var param = "?";
			if ( !currentPage ) {
				param += "pageVO.currentPage=1";
			}else{
				param += "pageVO.currentPage=" + currentPage;
			}
			if ( visaCountry ) {
				param += "&visaVO.visaCountry=" + visaCountry;
			}
			if ( visaType ) {
				param += "&visaVO.visaType=" + visaType;
			}
			if ( visaCity ) {
				param += "&visaVO.visaCity=" + visaCity;
			}
			if ( visaName ) {
				param += "&visaVO.visaName=" + visaName;
			}
			window.location.href="/zhonglv/VisaManagerAction.action" + param;
		}
		
		function customPage(visaCountry,visaType,visaCity,visaName){
			var page = $("#gotoPage").val();
			if ( !page ) {
				page = 1;
			}
			if ( isNaN(page) ){
				page = 1;
			}
			gotoPage(page,visaCountry,visaType,visaCity,visaName);
		}
		
		function reset(){
			$('#visaCountry').val(0);
			$('#visaType').val(0);
			$('#visaCity').val(0);
			$('#visaName').val("");
		}
		
		function deleteVisa(visaId){
			if ( confirm('添加容易，删除不易，且删且珍惜，确定删除吗？') ) {
				$.ajax({
					type:"post",
					url:"/zhonglv/VisaManagerAction!ajaxDeleteVisa.action",
					async:false,
					dataType:"json",
					data:{
						'visaId':visaId
					},
					success:function(data){
						if ( data.code == 90000 ) {
							alert("签证删除成功!");
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
			var visaIds = $("input[name='visa_id']");
			visaIds.each(function(idx,obj){
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
			var visaIds = new Array();
			$("input[name='visa_id']:checked").each(function(){
				visaIds.push($(this).val());
			});
			if( visaIds.length <= 0 ){
				alert("请选择要执行操作的签证信息！");
				return false;
			}
			if ( 'delete' == batRunType ) {
				action = '/zhonglv/VisaManagerAction!ajaxDeleteVisaByIds.action';
			}else{
				alert("请选择要执行的操作！");
				return false;
			}
			console.log("visaIds=" + visaIds.join('|'));
			if ( confirm("确定执行吗？") ) {
				$.ajax({
					type:"post",
					url:action,
					dataType:"json",
					data:"visaIds=" + visaIds.join('|'),
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