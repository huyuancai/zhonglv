<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<s:include value="../head.jsp"></s:include>
<link href="<s:url value="/css/show.css"/>" rel="stylesheet" type="text/css"/>
<div class="container">						
			<div class="position">
				<span class="col_right"></span>现在位置：<a href="<s:url value="/ToIndex.action"/>">首页</a>&gt; <a href="<s:url value="/TourismStrategyAction.action"/>">旅游攻略</a> 
</div>
			<div class="listtitle">
						旅游攻略</div>
<div><img src=""><br></div>
					<div class="rowslist">
						<ul>
							<s:iterator var="tourismStrategyVO" value="#request.tourismStrategyVOs" status="s">
								<li>
									<span class="col_right"><s:property value="#tourismStrategyVO.getStrategyCreateTime()"/></span>
									<a href="TourismStrategyAction!getTourismStrategyById.action?strategyId=<s:property value="#tourismStrategyVO.getStrategyId()"/>" target="_blank" title="<s:property value="#tourismStrategyVO.getStrategyName()"/>">
										<s:property value="#tourismStrategyVO.getStrategyName()"/>
									</a>
									<s:if test="(#s.index+1)%5==0"><hr></s:if>
								</li>
							</s:iterator>
						</ul>
					</div>
					<div style="line-height:30px; text-align:center;">
			      		页 <s:property value="#request.pageVO.getCurrentPage()"/> / <s:property value="#request.pageVO.getTotalPage()"/> 共<s:property value="#request.pageVO.getTotalSize()"/>条
			        	<a href="javascript:gotoPage(1);">首页</a>
			        	<a href="javascript:gotoPage(<s:property value="#request.pageVO.getPrePage()"/>);">上一页</a>
			        	<a href="javascript:gotoPage(<s:property value="#request.pageVO.getNextPage()"/>);">下一页</a> 
			 			<a href="javascript:gotoPage(<s:property value="#request.pageVO.getTotalPage()"/>);">尾页</a>
					</div>
			<div class="br">
				&nbsp;</div>
</div>
<script type="text/javascript">
		function gotoPage(currentPage){
			var param = "?";
			if ( !currentPage ) {
				param += "pageVO.currentPage=1";
			}else{
				param += "pageVO.currentPage=" + currentPage;
			}
			window.location.href="TourismStrategyAction.action" + param;
		}
	</script>
<s:include value="../footer.jsp"></s:include>
