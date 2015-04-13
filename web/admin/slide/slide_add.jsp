<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<s:if test="#session.userVO == null">
	<jsp:forward page="/admin/login.jsp"></jsp:forward>
</s:if>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<s:url value="/admin/css/global.css"/>" rel="stylesheet" type="text/css">
<link href="<s:url value="/admin/css/slide.css"/>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<s:url value="/js/jquery-1.4.4.min.js"/>"></script>
<title>滚动图片管理</title>
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="black_border">
      <tbody>
      	<tr class="suphead">
	        <td colspan="2">添加滑块</td>
	    </tr>
	    <tr>
	    	<td>
	    		<div class="wds_box wds_slides_box wds_active">
	    			<table>
	    				<thead><tr><td colspan="4">&nbsp;</td></tr></thead>
	    				<tbody style="width: 98%; display: block;">
							<tr>
								<td class="spider_label">
									<label for="name">滑块名称: <span style="color:#FF0000;">*</span></label>
									<input type="text" id="name" name="name" value="" size="39">
									<input type="hidden" name="typepr1" id="typepr1" value="image">
									<a href="javascript:void(0);" class="button-primary thickbox thickbox-preview" title="添加图片" onclick="return false;" style="color: #fff;">
		                              	添加图片
		                            </a>
								</td>
							</tr>	
							<tr>
								<td colspan="4" style="display: block;">
									<div class="wds_box wds_slidepr1 wds_sub_active">
										<table class="ui-sortablepr1 ui-sortable">
											<tbody>
												<tr>
						                          <td colspan="4">
						                            <div id="wds_preview_wrapper_pr1" class="wds_preview_wrapper" style="width: 800px; height: 300px;">
						                              <div class="wds_preview" style="overflow: hidden; position: absolute; width: inherit; height: inherit; background-color: transparent; background-image: none; display: block;">
						                                <div id="wds_preview_imagepr1" class="wds_preview_imagepr1" style="background-color: rgba(0, 0, 0, 0.00);
						                                            background-image: url(&quot;?date=2015-04-13 08:05:19&quot;);
						                                            background-position: center center;
						                                            background-repeat: no-repeat;
						                                            background-size: cover;
						                                            width: inherit;
						                                            height: inherit;
						                                            /*position: relative;*/">
						                                                                </div>
						                              </div>
						                            </div>
						                          </td>
						                        </tr>
						                        <tr id="trlinkpr1">
						                          <td class="spider_label">
						                            <label for="linkpr1">链接地址: </label>
						                          </td>
						                          <td>
						                            <input id="linkpr1" type="text" size="39" value="" name="linkpr1">
						                          </td>
						                        </tr>
						                        <tr>
						                          <td colspan="4">
						                            <input type="button" class="button-primary button button-small" value="保存" style="color:white;">
						                          </td>
						                        </tr>
											</tbody>
										</table>
									</div>
								</td>
							</tr>    				
	    				</tbody>
	    			</table>
	    		</div>
	    	</td>
	    </tr>  
     </tbody>
	</table>
	<script type="text/javascript">
	</script>
</div>
</body>
</html>