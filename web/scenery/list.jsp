<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<s:include value="../head.jsp"></s:include>
<div class="container">	
<div class="position">当前位置：<a href="<s:url value="/ToIndex.action"/>">首页</a> &gt; <a href="<s:url value="/SceneryAction.action"/>">景点门票</a> &gt; </div>
	<div id="list_contain">    
    <div class="right">
      <div class="box4">
        <div class="title">最新景点</div>
        <div class="line_img" style="margin:5px 0px;">
        	<ul>
	        	<s:iterator var="sceneryVO" value="#request.sceneryVOs">
		            <li class="list"><a target="_blank" href="SceneryAction!getSceneryById.action?sceneryId=<s:property value="#sceneryVO.getSceneryId()"/>"><img src="<s:url value="%{#sceneryVO.getSceneryThumb()}"/>" border="0" title="<s:property value="#sceneryVO.getSceneryName()"/>"></a><p><a href="SceneryAction!getSceneryById.action?sceneryId=<s:property value="#sceneryVO.getSceneryId()"/>" title="<s:property value="#sceneryVO.getSceneryName()"/>"><s:property value="#sceneryVO.getSceneryName()"/></a></p><p><span class="price"><s:property value="#sceneryVO.getSceneryPrice()"/>元</span><!-- <a class="order" href="javascript:void(0);">预定</a> --></p></li>
	        	</s:iterator>
          	</ul>
          <div class="clear"></div>
        </div>             
      </div>
      <div class="pages">
 			<a href="javascript:void(0);" style="float:left;cursor: default;" >
	      		页 <s:property value="#request.pageVO.getCurrentPage()"/> / <s:property value="#request.pageVO.getTotalPage()"/> 共<s:property value="#request.pageVO.getTotalSize()"/>条
 			</a>
        	<a href="javascript:gotoPage(1);">首页</a>
        	<a href="javascript:gotoPage(<s:property value="#request.pageVO.getPrePage()"/>);">上一页</a>
        	<a href="javascript:gotoPage(<s:property value="#request.pageVO.getNextPage()"/>);">下一页</a> 
 			<a href="javascript:gotoPage(<s:property value="#request.pageVO.getTotalPage()"/>);">尾页</a> 
      </div>
    </div>
  </div>
	<div class="br"></div>  
	<script type="text/javascript">
		function gotoPage(currentPage){
			var param = "?";
			if ( null == currentPage || '' == currentPage || undefined == currentPage) {
				param += "pageVO.currentPage=1";
			}else{
				param += "pageVO.currentPage=" + currentPage;
			}
			window.location.href="SceneryAction.action" + param;
		}
	</script>
</div>
<s:include value="../footer.jsp"></s:include>