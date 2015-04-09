<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<s:include value="../head.jsp"></s:include>
<script type="text/javascript" src="<s:url value="/js/myfocus-2.0.1.min.js"/>"></script>
<link href="<s:url value="/css/mF_games_tb.css"/>" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="<s:url value="/js/mF_games_tb.js"/>"></script>
<script type="text/javascript" src="<s:url value="/js/htmlDecode.js"/>"></script>
<style type="text/css">
#myFocus{ width:450px; height:283px;}
#allmap {width: 940px;height: 940px;overflow: hidden;margin:0;font-family:"微软雅黑";}
#result {width:100%;font-size:12px;}
dl,dt,dd,ul,li{
	margin:0;
	padding:0;
	list-style:none;
}
dt{
	font-size:14px;
	font-family:"微软雅黑";
	font-weight:bold;
	border-bottom:1px dotted #000;
	padding:5px 0 5px 5px;
	margin:5px 0;
}
dd{
	padding:5px 0 0 5px;
}
li{
	line-height:28px;
}
</style>
<script type="text/javascript">
	myFocus.set({
		id:'myFocus',//ID
		pattern:'mF_games_tb',//风格
		loadIMGTimeout:0
	});

	$().ready(function(){
		$("#content_2_1").html(HTMLDecode('<s:property value="#request.sceneryVO.getSceneryIntroduce()"/>'));
	});
</script>
<div class="container">	
<div class="position">当前位置：<a href="<s:url value="/ToIndex.action"/>">首页</a> &gt; <a href="<s:url value="/SceneryAction.action"/>">景点门票</a> &gt;</div>
<div class="show_title"><h1><s:property value="#request.sceneryVO.getSceneryName()"/></h1></div>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody><tr>
    <td width="466" valign="top">
      <div class="mF_games_tb_wrap"><div id="myFocus" class=" mF_games_tb mF_games_tb_myFocus">
        <div class="pic">
          <!--图片列表-->
          <ul>
            <li style="display: block; opacity: 1;">
            	<a href="<s:url value="/upload/20130922213357875.jpg"/>" target="_blank">
            		<img src="<s:url value="/upload/20130922213357875.jpg"/>" thumb="" alt="第1张">
            	</a>
            </li>
            <li style="display: none; opacity: 1;">
            	<a href="<s:url value="/upload/20130922213358031.jpg"/>" target="_blank">
            		<img src="<s:url value="/upload/20130922213358031.jpg"/>" thumb="" alt="第2张">
            	</a>
            </li><li style="display: none; opacity: 1;">
            	<a href="<s:url value="/upload/20130922213358218.jpg"/>" target="_blank">
            		<img src="<s:url value="/upload/20130922213358218.jpg"/>" thumb="" alt="第3张">
            	</a>
            </li>
            <li style="display: none; opacity: 1;">
	            <a href="<s:url value="/upload/20130922213358359.jpg"/>" target="_blank">
	            	<img src="<s:url value="/upload/20130922213358359.jpg"/>" thumb="" alt="第4张">
	            </a>
	        </li>
          </ul>
        </div>
      <div class="txt">
      	<ul>
      		<li style="bottom: 86px; display: block;">
      			<a href="<s:url value="/upload/20130922213357875.jpg"/>" target="_blank">第1张</a>
      			<p>null</p><b></b>
      		</li>
      		<li style="bottom: 86px; display: none;">
      			<a href="<s:url value="/upload/20130922213358031.jpg"/>" target="_blank">第2张</a>
      			<p>null</p><b></b>
      		</li>
      		<li style="bottom: 86px; display: none;">
      			<a href="<s:url value="/upload/20130922213358218.jpg"/>" target="_blank">第3张</a>
      			<p>null</p><b></b>
      		</li>
      		<li style="bottom: 86px; display: none;">
      			<a href="<s:url value="/upload/20130922213358359.jpg"/>" target="_blank">第4张</a>
      			<p>null</p><b></b>
      		</li>
      	</ul>
      </div>
      <div class="thumb" style="width: 418px; height: 86px; left: 16px;"><ul style="width: 420px; left: 0px;"><li class="current" style="width: 105px;"><a><img src="http://tour.totcms.com/upload/2013-09-22/20130922213357875.jpg" style="height: 60px;"></a><b></b></li><li class="" style="width: 105px;"><a><img src="http://tour.totcms.com/upload/2013-09-22/20130922213358031.jpg" style="height: 60px;"></a><b></b></li><li class="" style="width: 105px;"><a><img src="http://tour.totcms.com/upload/2013-09-22/20130922213358218.jpg" style="height: 60px;"></a><b></b></li><li class="" style="width: 105px;"><a><img src="http://tour.totcms.com/upload/2013-09-22/20130922213358359.jpg" style="height: 60px;"></a><b></b></li></ul></div><div class="prev"><a href="javascript:;">‹</a></div><div class="next"><a href="javascript:;">›</a></div></div></div></td>
    <td width="7"></td>
    <td valign="top">
    <div class="show_blackbox">
    	<p>线路价格：¥ <span class="price"><s:property value="#request.sceneryVO.getSceneryPrice()"/></span> 元</p>
    	<p>地址：<s:property value="#request.sceneryVO.getSceneryAddr()"/></p>
    	<p>取票地点：<s:property value="#request.sceneryVO.getSceneryTicketsAddr()"/></p>
    	<p>联系方式：<s:property value="#request.sceneryVO.getSceneryTel()"/></p>
      	<p>点击：<s:property value="#request.sceneryVO.getSceneryHits()"/> 次</p>
    	<p>更新日期：<s:property value="#request.sceneryVO.getSceneryUpdateDate()"/></p>
    	
    </div>
    <%-- <form action="javascript:void(0);" method="post" enctype="application/x-www-form-urlencoded">
    <div class="show_orderbox">
    <input type="hidden" name="id" value="26">
    <input type="image" src="<s:url value="/images/order.gif"/>">
    <a href="javascript:void(0);" title="添加到收藏夹"><img src="<s:url value="/images/favorite.gif"/>" alt="add to cart" border="0"></a>
    </div>
    </form> --%>
    </td>
  </tr>
</tbody></table>
<div class="show_hintbox">
  <strong>提示：<s:property value="#request.sceneryVO.getScenerySummary()"/></strong>
</div>
<div class="tab_show" style="padding-left:10px;">
  <ul>
    <li class="on" id="nav_2_1" onclick="javascript:htab(2,1,2);">景点介绍 </li>
    <li class="off" id="nav_2_2" onclick="javascript:htab(2,2,2);">电子地图</li>
  </ul>
</div>
<div class="tab_show_cnt">
  <div id="content_2_1" style="display: block;"></div>
  <div id="content_2_2" style="display: none;"><div id="allmap"></div></div>
</div>          
<div class="br"></div>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=A4048d5fb40020591c9d7e8b144cc80b"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.js"></script>
	<link rel="stylesheet" href="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.css" />
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");    // 创建Map实例
	var lng = '<s:property value="#request.sceneryVO.getSceneryLng()"/>';
	var lat = '<s:property value="#request.sceneryVO.getSceneryLat()"/>';
	var point = new BMap.Point(lng, lat);
	map.centerAndZoom( point , 16);  // 初始化地图,设置中心点坐标和地图级别
	map.enableScrollWheelZoom();   //开启鼠标滚轮缩放
	var content = '<div style="margin:0;line-height:20px;padding:2px;">' +
    '<img src="<s:url value="%{#request.sceneryVO.getSceneryThumb()}"/>" alt="" style="float:right;zoom:1;overflow:hidden;width:100px;height:100px;margin-left:3px;"/>' +
    '地址：<s:property value="#request.sceneryVO.getSceneryAddr()"/><br/>电话：<s:property value="#request.sceneryVO.getSceneryTel()"/><br/></div>';
    var searchInfoWindow = null;
	searchInfoWindow = new BMapLib.SearchInfoWindow(map, content, {
			title  : '<s:property value="#request.sceneryVO.getSceneryName()"/>',      //标题
			width  : 290,             //宽度
			height : 105,              //高度
			panel  : "panel",         //检索结果面板
			enableAutoPan : true,     //自动平移
			searchTypes   :[
				BMAPLIB_TAB_SEARCH,   //周边检索
				BMAPLIB_TAB_TO_HERE,  //到这里去
				BMAPLIB_TAB_FROM_HERE //从这里出发
			]
		});
	var marker = new BMap.Marker(point);// 创建标注
	map.addOverlay(marker); // 将标注添加到地图中
	marker.disableDragging();// 不可拖拽
 	marker.addEventListener("click", function(e){
	    searchInfoWindow.open(marker);
    });
 	map.addOverlay(marker); //在地图中添加marker
</script>
</div>
<s:include value="../footer.jsp"></s:include>