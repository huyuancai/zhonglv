<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<s:include value="head.jsp"></s:include>
<link href="<s:url value="/css/show.css"/>" rel="stylesheet" type="text/css"/>
<div class="container">
  <div class="position">现在位置：<a href="<s:url value="/ToIndex.action"/>">首页</a>&gt; <a href="javascript:void(0);">网站信息</a> 
</div>
   <div class="show_container">
			<div style="padding:10px; margin:0px 0px 10px 0px; border:1px solid #ddd;">
			<div class="title">联系我们</div>
			<div class="titleparas">作者： 日期：2013-09-26 出处： 点击:<span id="content_hits">19</span></div>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tbody><tr>
                <td class="content">
				  <p>&nbsp;</p>
				  <p>公司名称：洛阳市中国旅行社有限公司</p>
				  <p>&nbsp;</p>
				  <p> 网址：<a href="http://www.luoyangzhonglv.com">http://www.luoyangzhonglv.com</a></p>
				  <p>&nbsp;</p>
				  <p>地址：洛阳市凯旋东路玻璃厂路口西60米（实验小学斜对面）</p>
				  <p>电话：13623793613（王东） 13523612208（张丽）18637977228（王莹）</p>
				  <p>&nbsp;</p>
				  <br>
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
</div>
<s:include value="footer.jsp"></s:include>
