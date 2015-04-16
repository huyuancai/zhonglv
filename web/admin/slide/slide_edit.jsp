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
<script type="text/javascript" src="<s:url value="/admin/js/ajaxfileupload.js"/>"></script>
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
									<input type="text" id="slideName" name="slideName" value="<s:property value="#request.slideVO.getSlideName()"/>" size="39">
									<input type="hidden" name="slideImgPath" id="slideImgPath" value="<s:property value="#request.slideVO.getSlideImgPath()"/>">
									<input type="hidden" name="slideId" id="slideId" value="<s:property value="#request.slideVO.getSlideId()"/>">
									<input type="file" name="image" id="image" style="display:none;" >
									<a href="javascript:void(0);" class="button-primary thickbox thickbox-preview" title="修改图片" onclick="$('input[name=image]').click()" style="color: #fff;">
		                              	修改图片
		                            </a>
		                            <span id="errMsg"></span>
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
						                                <div id="showimg"><img alt="" src="<s:url value="%{#request.slideVO.getSlideImgPath()}"/>"></div>
						                              </div>
						                            </div>
						                          </td>
						                        </tr>
						                        <tr id="trlinkpr1">
						                          <td class="spider_label">
						                            <label for="linkpr1">链接地址: </label>
						                          </td>
						                          <td>
						                            <input id="slideHref" type="text" size="80" value="<s:property value="#request.slideVO.getSlideHref()"/>" name="slideHref">
						                          </td>
						                        </tr>
						                        <tr>
						                          <td colspan="4">
						                            <input type="button" id="save" class="button-primary button button-small" value="保存" style="color:white;">
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
		$().ready(function(){
			$("input[name='image']").change(function(){
				var showimg = $('#showimg'); 
				var imageFile = this;
				var imageFileVal = imageFile.value;
				var imageFileSuffix = imageFileVal.substring(imageFileVal.lastIndexOf(".")).toLowerCase();
				if ( !checkFileSuffix(imageFileSuffix) ) {
					alert("不允许上传非图片类型的文件！");
					return false;
				}
				
				$.ajaxFileUpload({
					url:"FileUploadAction!ajaxUploadSlideImage.action",
					secureuri:false,
					fileElementId:'image',
					dataType: 'json',
					success:function(data){
						if (data.code == 90000) {
							var img = "/zhonglv"+data.uploadImagePath; 
							showimg.empty();
			                showimg.html("<img src='"+img+"' width='800' height='300'>"); 
			                $("#slideImgPath").val(data.uploadImagePath);
						}else{
							alert(data.errMsg);
						}
					},
		            error: function (data, status, e)//服务器响应失败处理函数
		            {
		                alert(e);
		            }
				});
			});
			
			$("#save").click(function(){
				var slideId = $("#slideId").val();
				var slideName = $("#slideName").val();
				var slideImgPath = $("#slideImgPath").val();
				var slideHref = $("#slideHref").val();
				
				if ( !slideId ) {
					showErrMsg("滑块Id不能为空！");
					return false;
				}
				if ( !slideName ) {
					showErrMsg("滑块名称不能为空！");
					return false;
				}
				if ( !slideImgPath ) {
					showErrMsg("请上传图片先！");
					return false;
				}
				
				var data = {};
				data['slideVO.slideId']=slideId;
				data['slideVO.slideName']=slideName;
				data['slideVO.slideImgPath']=slideImgPath;
				data['slideVO.slideHref']=slideHref;
				$.ajax({
					type:"post",
					url:"SlideManagerAction!ajaxUpdateSlide.action",
					async:false,
					dataType:"json",
					data:data,
					success:function(data){
						if ( data.code == 90000 ) {
							alert("滑块修改成功!");
							window.location.reload();
						}else{
							alert(data.errMsg);
						}
					},
					error: function (data, status, e)//服务器响应失败处理函数
		            {
		                alert(e);
		            }
				});
				
			});
		});
		
		function showErrMsg(errMsg){
			$("#errMsg").text(errMsg);
			$("#errMsg").css("color","red");
		}
		
		function checkFileSuffix(suffix) {
		    if (!suffix.match(/.jpg|.gif|.png|.bmp|.jpeg/i)) {
		        return false;
		    }
		    return true;
		}
	</script>
</div>
</body>
</html>