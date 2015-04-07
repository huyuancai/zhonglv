<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html >
<html>
<head>
	<title>洛阳中旅旅行社，洛阳旅行社，洛阳旅游网，洛阳旅游，国内旅游，省内旅游，境外旅游，纯玩旅游，老年旅游---</title>
	<meta name="keywords" content="洛阳中旅旅行社，洛阳旅行社，洛阳旅游网，洛阳旅游，国内旅游，省内旅游，境外旅游，纯玩旅游，老年旅游" />
	<meta name="description" content="洛阳中旅旅行社" />
	<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=9">	
	<meta name="baidu-site-verification" content="XEptrtJiFV" />
	<link href="<s:url value="/css/style.css"/>" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="<s:url value="/js/jquery-1.4.4.min.js"/>"></script>
	<script type="text/javascript" src="<s:url value="/js/L_slide.js"/>"></script>
	<script type="text/javascript" src="<s:url value="/js/commen.js"/>"></script>
	<script type="text/javascript">
		function getPathName(){
			return window.location.pathname;
		}
		$(document).ready(function(){
			$('#nav_my').hover(
				function(){$(this).addClass('nav_my_on');},
				function(){$(this).removeClass('nav_my_on');}
			);
			$('.cats_off').hover(
				function(){$(this).addClass('cats_on');},
				function(){$(this).removeClass('cats_on');}
			);
			$(".af1").slide({
				affect:1,
				time:3000,
				speed:400,
				dot_text:false,
			});
			
			//affect:2
			$(".af2").slide({
				affect:2,
				time:3000,
				speed:400,
			});
			
			//affect:3
			$(".af3").slide({
				affect:3,
				time:3000,
				speed:400,
			});
			
			//affect:4
			$(".af4").slide({
				affect:4,
				time:3000,
				speed:400,
			});
			$.ajax({
				url:"/zhonglv/RouteTypeAction!ajaxGetAllRouteType.action",
				type:"post",
				dataType: "json",
				success:function(data){
					if ( data ) {
						var nav_home = $("#nav_home");
						for ( var routeTypeVO in data) {
							nav_home.after('<a href="/zhonglv/RouteAction.action?routeTypeId='+ data[routeTypeVO].routeTypeId +'" id="nav_'+ data[routeTypeVO].routeTypeId +'" title="'+ data[routeTypeVO].routeTypeName +'">'+ data[routeTypeVO].routeTypeName +'</a>');
						}
						var pathName = getPathName();
						var typeid='<s:property value="#request.routeTypeId"/>';
						if( typeid ){
							$('#nav_'+typeid+'').addClass('on');
						}else {
							if ( pathName.indexOf("VisaAction") > 0 ) {
								$('#nav_qz').addClass('on');
							}else if ( pathName.indexOf("SceneryAction") > 0 ) {
								$('#nav_jd').addClass('on');
							}else if ( pathName.indexOf("TourismStrategyAction") > 0 ) {
								$('#nav_gl').addClass('on');
							}else if ( pathName.indexOf("TourismNewsAction") > 0 ) {
								$('#nav_zx').addClass('on');
							}else if ( pathName.indexOf("about") > 0 ) {
								$('#nav_zl').addClass('on');
							}else{
								$('#nav_home').addClass('on');
							}
							
						}
					}
				}
			});
			var weekDayArr = new Array("星期天","星期一","星期二","星期三","星期四","星期五","星期六");
			setInterval(function(){
				var time = new Date();
				var year = time.getFullYear();
				var month = time.getMonth() + 1;
				var date = time.getDate();
				var hour = time.getHours();
				var minute = time.getMinutes();
				var seconds = time.getSeconds();
				var weekDay = time.getDay();
				month = getTwoNumber(month);
				date = getTwoNumber(date);
				hour = getTwoNumber(hour);
				minute = getTwoNumber(minute);
				seconds = getTwoNumber(seconds);
				$("#time").html("今天是：" + year + "年" + month + "月" + date + "日 " + hour + ":" + minute + ":" + seconds + " " + weekDayArr[weekDay]);
			},1000);
		});
		function getTwoNumber(num){
			if ( num < 10 ) {
				return "0"+num;
			}
			return num;
		}
	</script>
</head>
<body>
<div id="head">
	<!-- JiaThis Button BEGIN -->
	<script type="text/javascript" >
		var jiathis_config={
			summary:"",
			showClose:false,
			shortUrl:true,
			hideMore:false
		};
	</script>
	<script type="text/javascript" src="http://v3.jiathis.com/code/jiathis_r.js?type=left&btn=l.gif&move=1" charset="utf-8"></script>
<!-- JiaThis Button END -->
	<div class="container">	
  	<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tbody><tr>
      <td width="290" height="38" style="padding-left:10px; line-height:25px;"><div class="left"><a href="javascript:void(0);">会员注册</a> &nbsp; <a href="javascript:void(0);">会员登录</a> &nbsp;</div></td>
      <td align="center">
      	<label id="time"></label>
      </td>
      <td width="261" align="right"><div class="toplist">
        <ul>
          <li style="background:url(<s:url value="/images/t1.jpg"/>) 0px 2px no-repeat"><a href="#" onclick="this.style.behavior='url(#default#homepage)';this.setHomePage(document.location);">设为首页</a></li>
          <li style="background:url(<s:url value="/images/t2.jpg"/>) 0px 2px no-repeat"><a href="#" class="l1" onclick="javascript:window.external.AddFavorite(location.href,document.title);">加入收藏</a></li>
          <li style="background:url(<s:url value="/images/t3.jpg"/>) 0px 2px no-repeat"><a href="<s:url value="/contact.jsp"/>">联系我们</a></li>
        </ul>
      </div></td>
      <td width="3" align="right">&nbsp;</td>
    </tr>
  </tbody></table>
  	<table width="960" border="0" cellpadding="0" cellspacing="0">
  	  <tbody><tr>
  	    <td width="237" height="106" align="left"><a href="/"><img src="<s:url value="/images/logo.jpg"/>" border="0" width="230" height="100"></a></td>
  	    <td width="552"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
  	      <tbody><tr>
  	        <td>
            <div class="tab_area" style="padding-left:10px;">
            <ul>
              <li class="on" id="nav_1_1" onclick="javascript:htab(1,1,4);"><a href="#">线路</a> </li>
              <li class="off" id="nav_1_2" onclick="javascript:htab(1,2,4);"><a href="#">景点</a> </li>
              <li class="off" id="nav_1_3" onclick="javascript:htab(1,3,4);"><a href="#">攻略</a> </li>
              <li class="off" id="nav_1_4" onclick="javascript:htab(1,4,4);"><a href="#">资讯</a> </li>
            </ul>
            </div>
            </td>
	        </tr>
  	      <tr>
  	        <td height="52" style="border:2px solid #21ACE5; padding:5px 10px;">
            <div id="content_1_1" style="display: block">    
              <form method="get" action="javascript:void(0);">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tbody><tr>
                    <td width="22"><img src="<s:url value="/images/s_left.gif"/>" width="22" height="28"></td>
                    <td background="<s:url value="/images/s_mid.gif"/>"><input name="key" type="text" class="search_input" id="route_key"></td>
                    <td><input type="submit" name="button" id="button" value=" " class="search_btn"></td>
                  </tr>
                </tbody></table>
              </form>
              <div class="search_hints">推荐：<a href="javascript:void(0);">张家界公园、黄龙洞、天门山、猛洞河漂流 四日游1</a></div>
            </div>
            <div id="content_1_2" style="display: none">    
            	<form method="get" action="javascript:void(0);">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tbody><tr>
                    <td width="22"><img src="<s:url value="/images/s_left.gif"/>" width="22" height="28"></td>
                    <td background="<s:url value="/images/s_mid.gif"/>"><input name="key" type="text" class="search_input" id="hotel_key"></td>
                    <td><input type="submit" name="button" id="button" value=" " class="search_btn"></td>
                  </tr>
                </tbody></table>
              </form>
              <div class="search_hints">推荐：<a href="javascript:void(0);">张家界公园、黄龙洞、天门山、猛洞河漂流 四日游2</a></div>        
            </div>
            <div id="content_1_3" style="display: none">   
            	<form method="get" action="javascript:void(0);">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tbody><tr>
                    <td width="22"><img src="<s:url value="/images/s_left.gif"/>" width="22" height="28"></td>
                    <td background="<s:url value="/images/s_mid.gif"/>"><input name="key" type="text" class="search_input" id="jd_key"></td>
                    <td><input type="submit" name="button" id="button" value=" " class="search_btn"></td>
                  </tr>
                </tbody></table>
              </form>
              <div class="search_hints">推荐：<a href="javascript:void(0);">张家界公园、黄龙洞、天门山、猛洞河漂流 四日游3</a></div>         
            </div>
            <div id="content_1_4" style="display: none">   
            	<form method="get" action="javascript:void(0);">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tbody><tr>
                    <td width="22"><img src="<s:url value="/images/s_left.gif"/>" width="22" height="28"></td>
                    <td background="<s:url value="/images/s_mid.gif"/>"><input name="key" type="text" class="search_input" id="car_key"></td>
                    <td><input type="submit" name="button" id="button" value=" " class="search_btn"></td>
                  </tr>
                </tbody></table>
              </form>
              <div class="search_hints">推荐：<a href="javascript:void(0);">张家界公园、黄龙洞、天门山、猛洞河漂流 四日游4</a></div>         
            </div>
            </td>
	        </tr>
	      </tbody></table></td>
  	    <td width="171"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  	      <tbody><tr>
  	        <td height="26" align="center">在线客服：0379-63630577</td>
	        </tr>
  	      <tr>
  	        <td height="26" align="center">王莹：<span class="price">18637977228</span></td>
	        </tr>
			<tr>
  	        <td height="26" align="center">王东：<span class="price">13623793613</span></td>
	        </tr>
			<tr>
  	        <td height="26" align="center">张丽：<span class="price">13523612208</span></td>
	        </tr>
	      </tbody></table></td>
	    </tr>
	  </tbody></table>
    <table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
      <tbody><tr>
        <td><div id="nav">
        <a href="<s:url value="/ToIndex.action"/>" id="nav_home">首页</a>
        <a href="<s:url value="/VisaAction.action"/>" id="nav_qz" title="旅游签证">旅游签证</a>
        <a href="<s:url value="/SceneryAction.action"/>" id="nav_jd" title="景点门票">景点门票</a>
        <a href="<s:url value="/TourismStrategyAction.action"/>" id="nav_gl" title="旅游攻略">旅游攻略</a>
        <a href="<s:url value="/TourismNewsAction.action"/>" id="nav_zx" title="最新资讯">最新资讯</a>
		<a href="<s:url value="/about.jsp"/>" id="nav_zl" title="走进中旅">走进中旅</a> 
        </div></td>
        <td>
        <div id="nav_my" class="nav_my_off">
        	<span class="title">我的帐户</span>
          <div class="content" style="z-index:999;">
            <ul>
              <li><a href="javascript:void(0);">控制中心</a></li>
              <li><a href="javascript:void(0);">我的订单</a></li>
              <li><a href="javascript:void(0);">在线充值</a></li>
              <li><a href="javascript:void(0);">修改密码</a></li>
            </ul>
          </div>
        </div>
        </td>
      </tr>
    </tbody></table>
	</div>
</div>
<div class="br"></div>
<%-- <table width="960" border="0" align="center" cellpadding="0" cellspacing="0" style="margin:0px auto;">
  <tbody><tr>
    <td width="32"><img src="<s:url value="/images/jptj.gif"/>" width="32" height="72"></td>
    <td style="border-bottom:1px solid #FFDDAB;border-top:1px solid #FFDDAB;border-right:1px solid #FFDDAB;">
    <div id="jptj">
    <ul>
      <li><a href="javascript:void(0);" target="_blank">长沙市内一日游</a>&nbsp;￥118</li>
      <li><a href="javascript:void(0);" target="_blank">韶山、花明楼一日游</a>&nbsp;￥135</li>
      <li><a href="javascript:void(0);" target="_blank">衡山、南岳大庙一日游</a>&nbsp;￥328</li>
      <li><a href="javascript:void(0);" target="_blank">岳阳楼、君山岛一日游</a>&nbsp;￥248</li>
      <li><a href="javascript:void(0);" target="_blank">凤凰古城、苗寨二日游</a>&nbsp;￥368</li>
      <li><a href="javascript:void(0);" target="_blank">崀山二日游</a>&nbsp;￥428</li>
    </ul>
      <ul>
        <li><a href="javascript:void(0);" target="_blank">宁乡金太阳温泉一日游</a>&nbsp;￥198</li>
        <li><a href="javascript:void(0);" target="_blank">猛洞河漂流一日游</a>&nbsp;￥218</li>
        <li><a href="javascript:void(0);" target="_blank">茅岩河+九天洞一日游</a>&nbsp;￥188</li>
        <li><a href="javascript:void(0);" target="_blank">天门山一日游</a>&nbsp;￥268</li>
        <li><a href="javascript:void(0);" target="_blank">芷江、洪江古城二日游</a>&nbsp;￥268</li>
        <li><a href="javascript:void(0);" target="_blank">凤凰古城二日游</a>&nbsp;￥308</li>
      </ul>
      </div>
      </td>
  </tr>
</tbody></table> --%>
<div class="br"></div>
<s:include value="kefu/kefu.jsp"/>
