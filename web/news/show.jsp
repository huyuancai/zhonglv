<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<s:include value="../head.jsp"></s:include>
<link href="<s:url value="/css/show.css"/>" rel="stylesheet" type="text/css"/>
<div class="container">
  <div class="position">现在位置：<a href="<s:url value="/ToIndex.action"/>">首页</a>&gt; <a href="<s:url value="/TourismNewsAction.action"/>">旅游资讯</a> 
</div>
   <div class="show_container">
			<div style="padding:10px; margin:0px 0px 10px 0px; border:1px solid #ddd;">
			<div class="title"><s:property value="#request.tourismNewsVO.getNewsName()"/></div>
			<div class="titleparas">作者： 日期：<s:property value="#request.tourismNewsVO.getNewsCreateTime()"/> 出处： 点击:<span id="content_hits"><s:property value="#request.tourismNewsVO.getNewsCounts()"/></span></div>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody><tr>
                <td class="content">
				</td>
              </tr>
              <tr>
                 <td>
				                 上一篇：<a href="javascript:void(0);">保险？保额多少？</a>
				                 下一篇：<a href="javascript:void(0);">法律声明</a>
                 </td>
              </tr>
        </tbody></table>
			<div class="tools">
				<ul>
				<li><a href="<s:url value="/ToIndex.action"/>">返回首页</a></li>
				<li><a href="javascript:print();">打印本文</a></li>
				<li><a href="#" onclick="window.external.AddFavorite(location.href,document.title);">加入收藏</a></li>
				<li><a href="#">返回顶部</a></li>
				<li><a href="javascript:window.close()">关闭窗口</a></li>
				</ul>
			</div>			  
      </div>
	  </div>
<div class="br"></div>
<script type="text/javascript">
	function HTMLDecode (text) { 
		var temp = document.createElement("div"); 
		temp.innerHTML = text; 
		var output = temp.innerText || temp.textContent; 
		temp = null; 
		return output; 
	}
	$().ready(function(){
		$(".content").html(HTMLDecode('<s:property value="#request.tourismNewsVO.getNewsContent()"/>'));
	});
</script>
</div>
<s:include value="../footer.jsp"></s:include>
