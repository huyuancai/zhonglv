<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
	<head>		
		<title>在线客服</title>
		<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
		<style type="text/css">
			.service{
				width: 40px;
				height: 200px;
				background: url(<s:url value="/kefu/images/kefu.png"/>) no-repeat;
				position: fixed;
				right: 0px;
				top: 275px;
				z-index: 9999;
				cursor: pointer;
			}
			.cn{
				position:fixed;				
				width:180px;
				height:340px;
				right:-180px;
				top:200px;
				background-color:#41BAE6;
				z-index: 9999;
			}
			.back{
				margin:5px;
				background-color:#FFF;
				border-radius:5px;
			}
			.back p{
				margin-top: 5px;
				text-align: center;
			}
			.titZx{
				font-size: 16px;
				color: #FFF;
				padding: 5px 0px;
				text-align: center;
				margin: 5px;
			}
			.cn ul{
				list-style:none;
				margin:0px;
				padding:0px;				
			}				
			.cn ul li{
				padding-left:10px;
				line-height:38px;
				border-bottom: solid 1px #E6E4E4;
			}
			.cn ul li span {
				color: #777;
				font-size:13px;
			}
		</style>
		<script type="text/javascript">
			$().ready(function(){
				$(".service").mouseover(function(){
					$(this).animate({right:'180px'});
					$(".cn").animate({right:'0px'});
				});
				$(".service").click(function(){
					$(this).animate({right:'0px'});
					$(".cn").animate({right:'-180px'});
				});
			});
		</script>
	</head>
	<body>
		<div class="service">
		</div>
		<div class="cn">
			<h3 class="titZx">在线客服</h3>
			<div class="back">					
				<ul>
					<li>
						<span>洛阳周边王莹</span>
						<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2219450241&amp;site=qq&amp;menu=yes">
							<img border="0" src="<s:url value="/kefu/images/online.png"/>" alt="点击这里给我发消息" title="点击这里给我发消息">
						</a> 
					</li>
					<li>
						<span>出境咨询王东</span>
						<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=530406048&amp;site=qq&amp;menu=yes">
							<img border="0" src="<s:url value="/kefu/images/online.png"/>" alt="点击这里给我发消息" title="点击这里给我发消息">
						</a>
					</li>
					<li>
						<span>国内咨询张丽</span>
						<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&amp;uin=2394999081&amp;site=qq&amp;menu=yes">
							<img border="0" src="<s:url value="/kefu/images/online.png"/>" alt="点击这里给我发消息" title="点击这里给我发消息">
						</a>
					</li>										
				</ul>
				<p>
					<img src="<s:url value="/kefu/images/weixin.jpg"/>" width="120" height="120" class="weixin"><br>						
					<b>扫码关注微网站</b><br>
					<b>客户服务热线</b><br>
					<span style="font-size:14px;color:#CC0000;font-weight:bold;">0379-63630577</span>
				</p>					
			</div>
		</div>
	</body>
</html>