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
	$().ready(function(){
		$("#content_2_1").html(HTMLDecode('<s:property value="#request.visaVO.getVisaMaterials()"/>'));
		$("#content_2_2").html(HTMLDecode('<s:property value="#request.visaVO.getVisaIntroduction()"/>'));
	});
</script>
<div class="container">	
<div class="position">当前位置：<a href="/">首页</a> &gt; <a href="/Route/">旅游签证</a> &gt;<a href="javascript:void(0);">美国</a> &gt;</div>
<div class="show_title"><h1><s:property value="#request.visaVO.getVisaName()"/></h1></div>
<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
  <tbody><tr>
    <td width="466" valign="top">
      <div id="myFocus">
        <div class="pic"> 
        	<a href="<s:url value="%{#request.visaVO.getVisaThumb()}"/>" target="_blank">
        		<img src="<s:url value="%{#request.visaVO.getVisaThumb()}"/>" width="450" height="283" border="0">
        	</a>
        </div>
      </div>
    <td width="7"></td>
    <td valign="top">
    <div class="show_blackbox">
    	<p>国家：<s:property value="#request.visaVO.getVisaCountryName()"/></p>
    	<p>签发城市：<s:property value="#request.visaVO.getVisaCityName()"/></p>
    	<p>价格：¥ <span class="price"><s:property value="#request.visaVO.getVisaPrice()"/></span> 元</p>
    	<p>类型：<s:property value="#request.visaVO.getVisaTypeName()"/></p>
    	<p>有效期：<s:property value="#request.visaVO.getVisaValidity()"/></p>
    	<p>办理时长：<s:property value="#request.visaVO.getVisaProcessTime()"/></p>
      	<p>最长停留时间：<s:property value="#request.visaVO.getVisaMaxStay()"/></p>
    	<p>入境次数：<s:property value="#request.visaVO.getVisaImmigrantsTimes()"/></p>
    	<p>面试：<s:property value="#request.visaVO.getVisaInterview()"/></p>
    	<p>点击：<s:property value="#request.visaVO.getVisaCount()"/>次</p>
    	<p>更新日期：<s:property value="#request.visaVO.getVisaUpdateTime()"/></p>
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
  <strong>提示：<s:property value="#request.visaVO.getVisaSummary()"/></strong>
</div>
<div class="tab_show" style="padding-left:10px;">
  <ul>
    <li class="on" id="nav_2_1" onclick="javascript:htab(2,1,2);">所需材料</li>
    <li class="off" id="nav_2_2" onclick="javascript:htab(2,2,2);">详细介绍</li>
  </ul>
</div>
<div class="tab_show_cnt">
  <div id="content_2_1" style="display: block;"></div>
  <div id="content_2_2" style="display: none;"></div>
</div>          
<div class="br"></div>
</div>
<s:include value="../footer.jsp"></s:include>