<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<s:include value="../head.jsp"></s:include>
<div class="container">	
<div class="position">当前位置：<a href="<s:url value="/ToIndex.action"/>">首页</a> &gt; <a href="javascript:void(0);">线路</a> &gt; <a href="RouteAction.action?routeTypeId=<s:property value="#request.routeTypeId"/>"><s:property value="#request.routeTypeName"/></a> </div>
	<div id="list_contain_route">   
	<div class="left">
        <div class="box4">
        	<div class="title">分类</div>          
          <div class="col3">
          	<h2>主题</h2>
            <ul>     
            	<s:iterator var="topicsVO" value="#request.topicsVOs">
            		<li>
            			<a href="RouteAction.action?routeTypeId=<s:property value="#request.routeTypeId"/>&topicsId=<s:property value="#topicsVO.getTopicsId()"/>">
            				<s:property value="#topicsVO.getTopicsName()"/>
            			</a>
            		</li>
            	</s:iterator>       	
            </ul>
          </div>          
          <div class="col3">
          	<h2>天数</h2>
            <ul>
           		<li>
           			<a href="RouteAction.action?routeTypeId=<s:property value="#request.routeTypeId"/>">不限</a>
           		</li>
           		<li>
           			<a href="RouteAction.action?routeTypeId=<s:property value="#request.routeTypeId"/>&days=1">一日游</a>
           		</li>
           		<li>
           			<a href="RouteAction.action?routeTypeId=<s:property value="#request.routeTypeId"/>&days=2">二日游</a>
           		</li>
           		<li>
           			<a href="RouteAction.action?routeTypeId=<s:property value="#request.routeTypeId"/>&days=3">三日游</a>
           		</li>
           		<li>
           			<a href="RouteAction.action?routeTypeId=<s:property value="#request.routeTypeId"/>&days=4">四日游</a>
           		</li>
           		<li>
           			<a href="RouteAction.action?routeTypeId=<s:property value="#request.routeTypeId"/>&days=5">五日游</a>
           		</li>
           		<li>
           			<a href="RouteAction.action?routeTypeId=<s:property value="#request.routeTypeId"/>&days=6">六日游</a>
           		</li>
           		<li>
           			<a href="RouteAction.action?routeTypeId=<s:property value="#request.routeTypeId"/>&days=7">七日游</a>
           		</li>
           		<li>
           			<a href="RouteAction.action?routeTypeId=<s:property value="#request.routeTypeId"/>&days=8">七日以上</a>
           		</li>
            </ul>
          </div>
          <div class="col3">
          	<h2>目的地</h2>
            <ul>
            	<s:iterator var="destinationCityVO" value="#request.destinationCityVOs">
            		<li>
            			<a href="RouteAction.action?routeTypeId=<s:property value="#request.routeTypeId"/>&desCityId=<s:property value="#destinationCityVO.getDesCityId()"/>">
            				<s:property value="#destinationCityVO.getDesCityName()"/>
            			</a>
            		</li>
            	</s:iterator> 
            </ul>
          </div>
          <div class="clear"></div>        
        </div>
    </div>  
    <div class="right">
      <div class="box4">
        <div class="title"><s:property value="#request.routeTypeName"/></div>
        <div class="line_img" style="margin:5px 0px;">
        	<ul>
	        	<s:iterator var="routeVO" value="#request.routeVOs">
		            <li class="list"><a target="_blank" href="RouteAction!getRouteById.action?routeId=<s:property value="#routeVO.getRouteId()"/>"><img src="<s:url value="%{#routeVO.getRouteThumb()}"/>" border="0" title="<s:property value="#routeVO.getRouteTitle()"/>"></a><p><a href="RouteAction!getRouteById.action?routeId=<s:property value="#routeVO.getRouteId()"/>" title="<s:property value="#routeVO.getRouteTitle()"/>"><s:property value="#routeVO.getRouteName()"/></a></p><p><span class="price"><s:property value="#routeVO.getRoutePrice()"/>元</span><!-- <a class="order" href="javascript:void(0);">预定</a> --></p></li>
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
			if ( !currentPage ) {
				param += "pageVO.currentPage=1";
			}else{
				param += "pageVO.currentPage=" + currentPage;
			}
			param += '&routeTypeId=<s:property value="#request.routeTypeId"/>';
			var topicsId = '<s:property value="#request.topicsId"/>';
			var days = '<s:property value="#request.days"/>';
			var desCityId = '<s:property value="#request.desCityId"/>';
			if ( topicsId ) {
				param += '&topicsId=' + topicsId;
			}
			if ( days ) {
				param += '&days=' + days;
			}
			if ( desCityId ) {
				param += '&desCityId=' + desCityId;
			}
			window.location.href="RouteAction.action" + param;
		}
	</script>
</div>
<s:include value="../footer.jsp"></s:include>