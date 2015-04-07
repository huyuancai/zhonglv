<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<s:include value="../head.jsp"></s:include>
<div class="container">	
<div class="position">当前位置：首页 &gt; <a href="<s:url value="/VisaAction.action"/>">旅游签证</a> &gt; <a href="/zhonglv/VisaAction.action?routeTypeId=<s:property value="#request.routeTypeId"/>"><s:property value="#request.routeTypeName"/></a> </div>
	<div id="list_contain_visa">  
	<div class="left">
        <div class="box4">
        	<div class="title">分类</div>          
          <div class="col3">
          	<h2>国家</h2>
            <ul>     
            	<s:iterator var="visaCountryVO" value="#request.visaCountryVOs">
            		<li>
            			<a href="/zhonglv/VisaAction.action?visaVO.visaCountry=<s:property value="#visaCountryVO.getCountryId()"/>">
            				<s:property value="#visaCountryVO.getCountryName()"/>
            			</a>
            		</li>
            	</s:iterator>       	
            </ul>
          </div>          
          <div class="col3">
          	<h2>类型</h2>
            <ul>
            	<s:iterator var="visaTypeVO" value="#request.visaTypeVOs">
            		<li>
            			<a href="/zhonglv/VisaAction.action?visaVO.visaType=<s:property value="#visaTypeVO.getTypeId()"/>">
            				<s:property value="#visaTypeVO.getTypeName()"/>
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
        <div class="title">旅游签证</div>
        <div class="line_img" style="margin:5px 0px;">
        	<ul>
	        	<s:iterator var="visaVO" value="#request.visaVOs">
		            <li class="list">
		            	<a target="_blank" href="/zhonglv/VisaAction!getVisaById.action?visaId=<s:property value="#visaVO.getVisaId()"/>">
		            		<img src="<s:url value="%{#visaVO.getVisaThumb()}"/>" border="0" title="<s:property value="#visaVO.getVisaName()"/>">
		            	</a>
		            	<p>
		            		<a href="/zhonglv/VisaAction!getVisaById.action?visaId=<s:property value="#visaVO.getVisaId()"/>" title="<s:property value="#visaVO.getVisaName()"/>">
		            			<s:property value="#visaVO.getVisaName()"/>
		            		</a>
		            	</p>
		            	<p>
		            		<span class="price">
		            		<s:property value="#visaVO.getVisaPrice()"/>元</span>
		            		<!-- <a class="order" href="javascript:void(0);">预定</a> -->
		            	</p>
		            </li>
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
			var visaCountry = '<s:property value="#request.visaVO.getVisaCountry()"/>';
			var visaType = '<s:property value="#request.visaVO.getVisaType()"/>';
			if ( visaCountry ) {
				param += '&visaVO.visaCountry=' + visaCountry;
			}
			if ( visaType ) {
				param += '&visaVO.visaType=' + visaType;
			}
			window.location.href="/zhonglv/VisaAction.action" + param;
		}
	</script>
</div>
<s:include value="../footer.jsp"></s:include>