<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<s:include value="head.jsp"/>
<script type="text/javascript">
(function($) {
    jQuery.fn.ellipsis = function(maxwidth) {                        
        this.each(function() {        
            if ($(this).text().length > maxwidth) {
                $(this).text($(this).text().trim().substring(0, maxwidth));
                $(this).html($(this).html() + '...');
            }
        });
    };
})(jQuery);

$().ready(function(){
	var route_name_price = $(".route_name_price");
	route_name_price.each(function(idx,obj){
		var value = $(obj).text().trim();
		var entryLen=value.length;
		var cnChar=value.match(/[^\x00-\x80]/g);//利用match方法检索出中文字符并返回一个存放中文的数组
		if( cnChar!=null ){//表示是中文
			$(obj).ellipsis(10);
		}else{
			$(obj).ellipsis(20);
		}
	});
});
</script>
<div class="container">
	<table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
	  <tbody><tr>	   	    
	    <td width="960" valign="top">
			<div class="wrap af3">
				<ul class="slidebox">
					<li><a href="javascript:void(0);"><img src="<s:url value="/images/slider1.jpg"/>" /></a></li>
					<li><a href="javascript:void(0);"><img src="<s:url value="/images/slider2.jpg"/>" /></a></li>
					<li><a href="javascript:void(0);"><img src="<s:url value="/images/slider3.jpg"/>" /></a></li>
					<li><a href="javascript:void(0);"><img src="<s:url value="/images/slider4.jpg"/>" /></a></li>
					<li><a href="javascript:void(0);"><img src="<s:url value="/images/slider5.jpg"/>" /></a></li>
					<li><a href="javascript:void(0);"><img src="<s:url value="/images/slider6.jpg"/>" /></a></li>
				</ul>
			</div>
      </td>
    </tr>
  </tbody></table>
  <s:iterator var="routeTypeVO" value="#request.routeTypeVOs" status="s">
	  <div class="bigbr"></div>
	  <div class="box3">
	  	<div class="title"><s:property value="#s.index+1"/>F.<s:property value="#routeTypeVO.getRouteTypeName()"/></div>
	      <div class="txts"><a target="_blank" href="/zhonglv/RouteAction.action?routeTypeId=<s:property value="#routeTypeVO.getRouteTypeId()"/>">更多&gt;&gt;</a></div>
	  </div>
	  <table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
		  <tbody>
		  	<tr>
			    <td width="223" valign="top">
				    <div class="box2">
				      <div class="topic">★推荐线路</div>
				      <div class="content">
					      <s:set name="isFirstRoute" value="true" scope="request"/>
					      <s:iterator var="routeVO" value="#request.routeVOs">
		            		<s:if test="#routeTypeVO.getRouteTypeName().equals(#routeVO.getRouteTypeName()) && #routeVO.isRouteRecommend()">
	            				<s:if test="#request.isFirstRoute">
		            				<div class="topimg">
							        	<a target="_blank" href="/zhonglv/RouteAction!getRouteById.action?routeId=<s:property value="#routeVO.getRouteId()"/>">
							        		<img src="<s:url value="%{#routeVO.getRouteThumb()}"/>" width="200" height="119" border="0" title="<s:property value="#routeVO.getRouteTitle()"/>"/>
							        	</a>
							        	<p>
							        		<a target="_blank" class="route_name_price" href="/zhonglv/RouteAction!getRouteById.action?routeId=<s:property value="#routeVO.getRouteId()"/>" title="<s:property value="#routeVO.getRouteName()"/>">
								        		<s:property value="#routeVO.getRouteName()"/>
							        		</a>
							        		<span style="color:#C00;font-weight:bold;float:right;margin-right:5px;">
												<s:property value="#routeVO.getRoutePrice()"/>元
											</span>
							        	</p>
								    </div>
								    <s:set name="isFirstRoute" value="false" scope="request"/>
							    </s:if>
							    <s:else>
									<li>
										<p>
											<a target="_blank" class="route_name_price" href="/zhonglv/RouteAction!getRouteById.action?routeId=<s:property value="#routeVO.getRouteId()"/>" title="<s:property value="#routeVO.getRouteName()"/>">
												<s:property value="#routeVO.getRouteName()"/>
											</a>
											<span style="color:#C00;font-weight:bold;float:right;margin-right:5px;">
												<s:property value="#routeVO.getRoutePrice()"/>元
											</span>
										</p>
									</li>							    	
							    </s:else>
		            		</s:if>
			              </s:iterator>
		              </div>
			      </div>
			  	</td>	    
	      		<td width="6"></td>
		    	<td valign="top">
		      	<div class="box2">
		          <div class="topic">最新线路</div>
		          <div class="br"></div>
		          <div class="line_img">
		            <ul style="margin:0px 0px 12px 0px;">
		            	<s:iterator var="routeVO" value="#request.routeVOs">
		            		<s:if test="#routeTypeVO.getRouteTypeName().equals(#routeVO.getRouteTypeName()) && !#routeVO.isRouteRecommend()">
								<li>
									<a target="_blank" href="/zhonglv/RouteAction!getRouteById.action?routeId=<s:property value="#routeVO.getRouteId()"/>">
										<img src="<s:url value="%{#routeVO.getRouteThumb()}"/>" border="0" title="<s:property value="#routeVO.getRouteTitle()"/>">
									</a>
									<p><a target="_blank" href="/zhonglv/RouteAction!getRouteById.action?routeId=<s:property value="#routeVO.getRouteId()"/>" title="<s:property value="#routeVO.getRouteTitle()"/>"><s:property value="#routeVO.getRouteName()"/></a></p>
									<p><span class="price"><s:property value="#routeVO.getRoutePrice()"/>元</span><!-- <a class="order" href="javascript:;">预定</a> --></p></li>		            		
		            		</s:if>
		            	</s:iterator>
		            </ul>
		          </div>
		          <div class="clear"></div>
		        </div>      	
	      	</td>
	    </tr>
	  </tbody></table>
  </s:iterator>
  <div class="bigbr"></div>
  <div class="box3">
    <div class="title">景点/门票</div>
    <div class="txts"><a target="_blank" href="<s:url value="/SceneryAction.action"/>">更多&gt;&gt;</a></div>
  </div>
  <table width="960" border="0" align="center" cellpadding="0" cellspacing="0">
	  <tbody><tr>
	    <td width="223" valign="top">
	    	<div class="box2">
		      <div class="topic">★推荐景点</div>
		      <div class="content">
		      	<s:set name="isFirstScenery" value="true" scope="request"/>
		      	<s:iterator var="sceneryVO" value="#request.sceneryVOs">
		      		<s:if test="#sceneryVO.isSceneryRecommend()">
			      		<s:if test="#request.isFirstScenery">
					        <div class="topimg">
					        	<a target="_blank" href="<s:url value="/scenery/show.jsp"/>">
					        		<img src="<s:url value="%{#sceneryVO.getSceneryThumb()}"/>" width="200" height="119" border="0" title="<s:property value="#sceneryVO.getSceneryTitle()"/>">
					        	</a>
					        </div>
			      			<s:set name="isFirstScenery" value="false" scope="request"/>
			      		</s:if>
			      		<s:else>
							<li><a target="_blank" href="<s:url value="/scenery/show.jsp"/>"><s:property value="#sceneryVO.getSceneryName()"/></a></li>
			      		</s:else>
			      	</s:if>
		      	</s:iterator>
		      </div>
	      	</div>
	      </td>
       <td width="6"></td>
	    <td valign="top">
      <div class="box2">
          <div class="topic">最新景点</div>
          <div class="br"></div>
          <div class="line_img">
            <ul style="margin:0px 0px 12px 0px;">
            	<s:iterator var="sceneryVO" value="#request.sceneryVOs">
            		<s:if test="!#sceneryVO.isSceneryRecommend()">
	              		<li><a href="<s:url value="/scenery/show.jsp"/>"><img src="<s:url value="%{#sceneryVO.getSceneryThumb()}"/>" border="0" title="<s:property value="#sceneryVO.getSceneryTitle()"/>"></a><p><a href="/Scenery/Show.aspx?id=7" title="<s:property value="#sceneryVO.getSceneryTitle()"/>"><s:property value="#sceneryVO.getSceneryName()"/></a></p><p><span class="price"><s:property value="#sceneryVO.getSceneryPrice()"/>元</span><!-- <a class="order" href="javascript:void(0);">预定</a> --></p></li>
	              	</s:if>
            	</s:iterator>
            </ul>
          </div>
          <div class="clear"></div>
        </div>
      </td>
    </tr>
  </tbody></table>
<div class="bigbr"></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>
	    	<td valign="top">
	    		<div class="box1">
	      			<div class="topic">旅游签证</div>
	      			<div class="content3">
	        			<ul>
	        				<s:iterator var="visaVO" value="#request.visaVOs">
		          				<li><a target="_blank" href="/zhonglv/VisaAction!getVisaById.action?visaId=<s:property value="#visaVO.getVisaId()"/>"><img src="<s:url value="%{#visaVO.getVisaThumb()}"/>" title="<s:property value="#visaVO.getVisaName()"/>" width="90" height="70"><p><s:property value="#visaVO.getVisaName()"/></p></a></li>
	        				</s:iterator>
	          			</ul>
            			<div class="clear"></div>
	        		</div>
      			</div>
      		</td>
		    <td width="7"></td>
		    <td width="310" valign="top">
		    	<div class="box1">
		      		<div class="topic">旅游资讯</div>
		      		<div class="content">
				        <ul>
				        	<s:iterator var="tourismNewsVO" value="#request.tourismNewsVOs">
				        		<li>
				        			<a href="/zhonglv/TourismNewsAction!getTourismNewsById.action?newsId=<s:property value="#tourismNewsVO.getNewsId()"/>" target="_blank" title="<s:property value="#tourismNewsVO.getNewsName()"/>">
				        				<s:property value="#tourismNewsVO.getNewsName()"/>
				        			</a>
				        		</li>
				        	</s:iterator>
				    	</ul>
	            		<div class="clear"></div>
		        	</div>
      			</div>
      		</td>
      		<td width="7"></td>
		    <td width="310" valign="top">
		    	<div class="box1">
		      		<div class="topic">旅游攻略</div>
		      		<div class="content">
			        	<ul>
					    	<s:iterator var="tourismStrategyVO" value="#request.tourismStrategyVOs">
				        		<li>
				        			<a href="/zhonglv/TourismStrategyAction!getTourismStrategyById.action?strategyId=<s:property value="#tourismStrategyVO.getStrategyId()"/>" target="_blank" title="<s:property value="#tourismStrategyVO.getStrategyName()"/>">
				        				<s:property value="#tourismStrategyVO.getStrategyName()"/>
				        			</a>
				        		</li>
				        	</s:iterator>
				    	</ul>
				    	<div class="clear"></div>
		        	</div>
    			</div>
      		</td>
    	</tr>
  	</tbody>
</table>
</div>
<s:include value="footer.jsp"></s:include>
