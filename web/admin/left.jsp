<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8"
	contentType="text/html; charset=utf-8"%>
<s:if test="#session.userVO == null">
	<jsp:forward page="/admin/login.jsp"></jsp:forward>
</s:if>	
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理页面</title>

<script src="<s:url value="/admin/js/prototype.lite.js"/>" type="text/javascript"></script>
<script src="<s:url value="/admin/js/moo.fx.js"/>" type="text/javascript"></script>
<script src="<s:url value="/admin/js/moo.fx.pack.js"/>" type="text/javascript"></script>
<style>
body {
	font: 12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
}

#container {
	width: 182px;
}

H1 {
	font-size: 12px;
	margin: 0px;
	width: 182px;
	cursor: pointer;
	height: 30px;
	line-height: 20px;
}

H1 a {
	display: block;
	width: 182px;
	color: #000;
	height: 30px;
	text-decoration: none;
	moz-outline-style: none;
	background-image: url(<s:url value="/admin/images/menu_bgs.gif"/>);
	background-repeat: no-repeat;
	line-height: 30px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}

.content {
	width: 182px;
	height: 26px;
}

.MM ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	display: block;
}

.MM li {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	list-style-type: none;
	display: block;
	text-decoration: none;
	height: 26px;
	width: 182px;
	padding-left: 0px;
}

.MM {
	width: 182px;
	margin: 0px;
	padding: 0px;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
	clip: rect(0px, 0px, 0px, 0px);
}

.MM a:link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(<s:url value="/admin/images/menu_bg1.gif"/>);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}

.MM a:visited {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(<s:url value="/admin/images/menu_bg1.gif"/>);
	background-repeat: no-repeat;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}

.MM a:active {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(<s:url value="/admin/images/menu_bg1.gif"/>);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}

.MM a:hover {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #006600;
	background-image: url(<s:url value="/admin/images/menu_bg2.gif"/>);
	background-repeat: no-repeat;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
</style>
</head>

<body>
	<table width="100%" height="280" border="0" cellpadding="0"
		cellspacing="0" bgcolor="#EEF2FB">
		<tr>
			<td width="182" valign="top"><div id="container">
					<h1 class="type">
						<a href="javascript:void(0)">首页</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="images/menu_topline.gif" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="<s:url value="/admin/right.jsp"/>" target="main">首页</a></li>
							
						</ul>
					</div>
					<h1 class="type">
						<a href="javascript:void(0)">线路管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="images/menu_topline.gif" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="<s:url value="/RouteManagerAction!initAddRoute.action"/>" target="main">线路添加</a></li>
							<li><a href="<s:url value="/RouteManagerAction.action"/>" target="main">管理线路</a></li>
							<li><a href="<s:url value="/TopicsManagerAction.action"/>" target="main">线路专题</a></li>
							<li><a href="<s:url value="/RouteTypeManagerAction.action"/>" target="main">线路类型</a></li>
							<li><a href="<s:url value="/DestinationCityAction.action"/>" target="main">目的城市</a></li>
							<li><a href="<s:url value="/DepartureCityAction.action"/>" target="main">出发城市</a></li>
						</ul>
					</div>
					<h1 class="type">
						<a href="javascript:void(0)">景点管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="<s:url value="/admin/images/menu_topline.gif"/>" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="<s:url value="/SceneryManagerAction!initAddScenery.action"/>" target="main">添加景点</a></li>
							<li><a href="<s:url value="/SceneryManagerAction.action"/>" target="main">景点管理</a></li>
						</ul>
					</div>
					<h1 class="type">
						<a href="javascript:void(0)">签证管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="<s:url value="/admin/images/menu_topline.gif"/>" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="<s:url value="/VisaManagerAction!initAddVisa.action"/>" target="main">添加签证</a></li>
							<li><a href="<s:url value="/VisaManagerAction.action"/>" target="main">管理签证</a></li>
							<li><a href="<s:url value="/VisaCountryManagerAction.action"/>" target="main">签证国家</a></li>
							<li><a href="<s:url value="/VisaTypeManagerAction.action"/>" target="main">签证类型</a></li>
							<li><a href="<s:url value="/VisaCityManagerAction.action"/>" target="main">签发城市</a></li>
						</ul>
					</div>
					<h1 class="type">
						<a href="javascript:void(0);">攻略管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="images/menu_topline.gif" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="<s:url value="/admin/strategy/strategy_add.jsp"/>" target="main">攻略添加</a></li>
							<li><a href="<s:url value="/TourismStrategyManagerAction.action"/>" target="main">管理攻略</a></li>
						</ul>
					</div>
					<h1 class="type">
						<a href="javascript:void(0);">资讯管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="<s:url value="/admin/images/menu_topline.gif"/>" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="<s:url value="/admin/news/news_add.jsp"/>" target="main">资讯添加</a></li>
							<li><a href="<s:url value="TourismNewsManagerAction.action"/>" target="main">管理资讯</a></li>
						</ul>
					</div>
					<h1 class="type">
						<a href="javascript:void(0);">滑块管理</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td><img src="<s:url value="/admin/images/menu_topline.gif"/>" width="182"
									height="5" /></td>
							</tr>
						</table>
						<ul class="MM">
							<li><a href="<s:url value="/admin/slide/slide_add.jsp"/>" target="main">添加滑块</a></li>
							<li><a href="<s:url value="SlideManagerAction.action"/>" target="main">管理滑块</a></li>
						</ul>
					</div>
				</div> <script type="text/javascript">
					var contents = document.getElementsByClassName('content');
					var toggles = document.getElementsByClassName('type');

					var myAccordion = new fx.Accordion(toggles, contents, {
						opacity : true,
						duration : 400
					});
					myAccordion.showThisHideOpen(contents[0]);
				</script></td>
		</tr>
	</table>
</body>
</html>
