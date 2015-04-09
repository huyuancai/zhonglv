<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<s:include value="../head.jsp"></s:include>
<script type="text/javascript" src="<s:url value="/js/myfocus-2.0.1.min.js"/>"></script>
<link href="<s:url value="/css/mF_games_tb.css"/>" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="<s:url value="/js/mF_games_tb.js"/>"></script>
<script type="text/javascript" src="<s:url value="/js/htmlDecode.js"/>"></script>
<style type="text/css">
#myFocus{ width:450px; height:283px;}
</style>
<script type="text/javascript">
	myFocus.set({
		id:'myFocus',//ID
		pattern:'mF_games_tb',//风格
		loadIMGTimeout:0
	});
	
	$().ready(function(){
		$("#content_2_1").html(HTMLDecode('<s:property value="#request.routeVO.getRouteItinerary()"/>'));
		$("#content_2_2").html(HTMLDecode('<s:property value="#request.routeVO.getRouteFeatureDesc()"/>'));
		$("#content_2_3").html(HTMLDecode('<s:property value="#request.routeVO.getRouteBookingPolicy()"/>'));
		$("#content_2_4").html(HTMLDecode('<s:property value="#request.routeVO.getRouteTips()"/>'));
		$("#content_2_5").html(HTMLDecode('<s:property value="#request.routeVO.getRouteAdvisory()"/>'));
		$("#content_2_6").html(HTMLDecode('<s:property value="#request.routeVO.getRouteStrategy()"/>'));
	});
</script>
<div class="container">	
<div class="position">当前位置：<a href="<s:url value="/ToIndex.action"/>">首页</a> &gt; <a href="javascript:void(0);">旅游线路</a> &gt;<a href="javascript:void(0);">周边游</a> &gt; <!-- <a href="javascript:void(0);">普吉岛</a> --></div>
<div class="show_title"><h1><s:property value="#request.routeVO.getRouteName()"/></h1></div>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody><tr>
    <td width="466" valign="top">
      <div id="myFocus" class=" mF_games_tb mF_games_tb_myFocus">
        <div class="pic">
          <!--图片列表-->
          <ul>
          	<s:if test="#request.routeVO.routeImageVOs==null">
          		<li style="display: block; opacity: 1;">
	            	<a href="<s:url value="/images/nophoto.jpg"/>" target="_blank">
	            		<img src="<s:url value="/images/nophoto.jpg"/>" thumb="" title="暂无图片" width="450" height="280">
	            	</a>
            	</li>
          	</s:if>
          	<s:else>
	          	<s:iterator var="routeImageVO" value="#request.routeVO.routeImageVOs" status="s">
	          		<s:if test="#s.index==0">
			            <li style="display: block; opacity: 1;">
			            	<a href="<s:url value="%{#routeImageVO.getImagePath()}"/>" target="_blank">
			            		<img src="<s:url value="%{#routeImageVO.getImagePath()}"/>" thumb="" title="<s:property value="#routeImageVO.getImageAlias()"/>" width="450" height="280">
			            		<%-- <s:property value="#routeImageVO.getImageAlias()"/> --%>
			            	</a>
			            </li>
	          		</s:if>
	          		<s:else>
	          			<li style="display: none; opacity: 1;">
			            	<a href="<s:url value="%{#routeImageVO.getImagePath()}"/>" target="_blank">
			            		<img src="<s:url value="%{#routeImageVO.getImagePath()}"/>" thumb="" title="<s:property value="#routeImageVO.getImageAlias()"/>" width="450" height="280">
			            		<%-- <s:property value="#routeImageVO.getImageAlias()"/> --%>
			            	</a>
			            </li>
	          		</s:else>
	          	</s:iterator>
          	</s:else>
          </ul>
        </div>
     </div>
    </td>
    <td width="7"></td>
    <td valign="top">
    <div class="show_blackbox">
    	<p>线路编号：<s:property value="#request.routeVO.getRouteNumber()"/></p>
    	<p>线路价格：¥ <span class="price"><s:property value="#request.routeVO.getRoutePrice()"/></span> 元</p>
    	<p>出发城市：<s:property value="#request.routeVO.getRouteDepartureCityName()"/></p>
    	<p>预订须知：请提前<s:property value="#request.routeVO.getRouteDestineDays()"/>天预订</p>
    	<p>往返交通：<s:property value="#request.routeVO.getRouteTransportMode()"/></p>
      	<p>行程天数：<s:property value="#request.routeVO.getRouteDays()"/> 天</p>
    	<p>付款方式：电话预定后到前台付款</p>
    	
    </div>
    <%-- <form action="javascript:void(0);" method="post" enctype="application/x-www-form-urlencoded">
    <div class="show_orderbox">
    <input type="hidden" name="id" value="26">
    <input type="image" src="<s:url value="/images/order.gif"/>">
    <a href="javascript:setHome()" title="添加到收藏夹"><img src="<s:url value="/images/favorite.gif"/>" alt="add to cart" border="0"></a>
    </div>
    </form> --%>
    </td>
  </tr>
</tbody></table>
<div class="show_hintbox">
  <strong>提示：<s:property value="#request.routeVO.getRouteSummary()"/></strong>
</div>
<div class="tab_show" style="padding-left:10px;">
  <ul>
    <li class="on" id="nav_2_1" onclick="javascript:htab(2,1,6);">线路行程 </li>
    <li class="off" id="nav_2_2" onclick="javascript:htab(2,2,6);">线路特色 </li>
    <li class="off" id="nav_2_3" onclick="javascript:htab(2,3,6);">费用说明 </li>
    <li class="off" id="nav_2_4" onclick="javascript:htab(2,4,6);">温馨提示 </li>
    <li class="off" id="nav_2_5" onclick="javascript:htab(2,5,6);">线路咨询 </li>
    <li class="off" id="nav_2_6" onclick="javascript:htab(2,6,6);">旅游攻略 </li>              
  </ul>
</div>
<div class="tab_show_cnt">
  <div id="content_2_1" style="display: block;"></div>
  <div id="content_2_2" style="display: none;"></div>
  <div id="content_2_3" style="display: none;"></div>
  <div id="content_2_4" style="display: none;"></div>
  <div id="content_2_5" style="display: none;"></div>            
  <div id="content_2_6" style="display: none;"></div>
</div>          
<div class="br"></div>
</div>
<s:include value="../footer.jsp"></s:include>