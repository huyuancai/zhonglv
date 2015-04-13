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
<link rel="stylesheet" href="<s:url value="/admin/kindeditor/themes/default/default.css"/>" />
<script charset="utf-8" src="<s:url value="/admin/kindeditor/kindeditor-min.js"/>"></script>
<script charset="utf-8" src="<s:url value="/admin/kindeditor/lang/zh_CN.js"/>"></script>
<script type="text/javascript" src="<s:url value="/js/jquery-1.4.4.min.js"/>"></script>
<script type="text/javascript" src="<s:url value="/admin/js/ajaxfileupload.js"/>"></script>
<script type="text/javascript">
	$().ready(function(){
		$("#Button1").click(function(){
			var visa_name = $("input[name='visa_name']").val();
			if ( !visa_name  ) {
				alert("签证名称不能为空！");
				return false;
			}
			var visa_country = $("select[name='visa_country']").val();
			var visa_type = $("input[name='visa_type']:checked").val();
			var visa_thumb = $("input[name='visa_thumb']").val();
			var visa_price = $("input[name='visa_price']").val();
			var visa_city = $("select[name='visa_city']").val();
			var visa_validity = $("input[name='visa_validity']").val();
			var visa_process_time = $("input[name='visa_process_time']").val();
			var visa_max_stay = $("input[name='visa_max_stay']").val();
			var visa_immigrants_times = $("input[name='visa_immigrants_times']").val();
			var visa_interview = $("input[name='visa_interview']").val();
			var visa_summary = $("#visa_summary").text();//摘要
			var visa_materials = editor1.html();//所需材料
			var visa_introduction = editor2.html();//介绍
			var visa_count = $("#visa_count").val();
			var data = {};
			data['visaVO.visaName']=visa_name;
			data['visaVO.visaCountry']=visa_country;
			data['visaVO.visaType']=visa_type;
			data['visaVO.visaThumb']=visa_thumb;
			data['visaVO.visaPrice']=visa_price;
			data['visaVO.visaCity']=visa_city;
			data['visaVO.visaValidity']=visa_validity;
			data['visaVO.visaProcessTime']=visa_process_time;
			data['visaVO.visaMaxStay']=visa_max_stay;
			data['visaVO.visaImmigrantsTimes']=visa_immigrants_times;
			data['visaVO.visaInterview']=visa_interview;
			data['visaVO.visaSummary']=visa_summary;
			data['visaVO.visaMaterials']=visa_materials;
			data['visaVO.visaIntroduction']=visa_introduction;
			data['visaVO.visaCount']=visa_count;
			$.ajax({
				type:"post",
				url:"VisaManagerAction!ajaxAddVisa.action",
				async:false,
				dataType:"json",
				data:data,
				success:function(data){
					if ( data.code == 90000 ) {
						alert("签证添加成功!");
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
	
	function uploadImage(){
		var imageFile = document.getElementById("image");
		var imageFileVal = imageFile.value;
		if ( !imageFileVal ) {
			setImageErrMsg("请选择图片先！");
			return false;
		}
		
		var imageFileSuffix = imageFileVal.substring(imageFileVal.lastIndexOf(".")).toLowerCase();
		if ( !checkFileSuffix(imageFileSuffix) ) {
			setImageErrMsg("不允许上传非图片类型的文件！");
			return false;
		}
		
		$.ajaxFileUpload({
			url:"FileUploadAction!ajaxUploadVisaImage.action",
			secureuri:false,
			fileElementId:'image',
			dataType: 'json',
			success:function(data){
				if (data.code == 90000) {
					$("#visa_thumb").val(data.uploadImagePath);
					$("#fileUploadStatus").css("display","inline-block");
					$("#fileUploadStatus").css("color","black");
					$("#fileUploadStatus").text("图片上传成功！");
					
				}else{
					$("#fileUploadStatus").css("display","inline-block");
					$("#fileUploadStatus").css("color","red");
					setImageErrMsg(data.errMsg);
				}
			},
	        error: function (data, status, e)//服务器响应失败处理函数
	        {
	            alert(e);
	        }
		});
	}
	
	function setImageErrMsg (errMsg) {
		$("#fileUploadStatus").css("display","inline-block");
		$("#fileUploadStatus").css("color","red");
		$("#fileUploadStatus").text(errMsg);
	}
	
	function checkFileSuffix(suffix) {
	    if (!suffix.match(/.jpg|.gif|.png|.bmp|.jpeg/i)) {
	        return false;
	    }
	    return true;
	}
	
</script>
</head>
<body>
	<table style="width:100%;" border="0" cellpadding="0" cellspacing="1" class="black_border">
		<tbody>
			<tr class="suphead">
		        <td colspan="2">签证添加</td>
		    </tr>
		    <tr>
		    	<td class="fields_text">名称：</td>
		      	<td class="fields_input">
		          	<input name="visa_name" type="text" id="visa_name" class="input_long">
		          	<span id="RequiredFieldValidator1" style="color:Red;display:inline-block;">(*)</span>
		            &nbsp;国家：
		            <select name="visa_country" id="visa_country">
						<s:iterator var="visaCountryVO" value="#request.visaCountryVOs">
							<option value="<s:property value="#visaCountryVO.getCountryId()"/>" ><s:property value="#visaCountryVO.getCountryName()"/></option>
				   		</s:iterator>
					</select>
		        </td>
		    </tr>
    		<tr>
		      	<td class="fields_text">类型：</td>
		      	<td class="fields_input">
		          	<span id="rbType">
		          		<s:iterator var="visaTypeVO" value="#request.visaTypeVOs" status="s">
			          		<input id="visa_type_<s:property value="#s.index"/>" type="radio" name="visa_type" value="<s:property value="#visaTypeVO.getTypeId()"/>">
		          			<label for="visa_type_<s:property value="#s.index"/>"><s:property value="#visaTypeVO.getTypeName()"/></label>
		          		</s:iterator>
		          	</span>
		         </td>
		    </tr>
		   	<tr>
		      <td class="fields_text">缩略图：</td>
		      <td class="fields_input">
		        <input name="image" type="file" id="image" class="input_middle">
		        <input name="UpLoad" type="button" id="UpLoad" value="上传" onclick="uploadImage()" class="btn-general">
		        <label id="fileUploadStatus" style="display: none;"></label>
		        <input name="visa_thumb" id="visa_thumb" type="hidden" />
		        <img id="tempimg" dynsrc="" src="" style="display:none" />
		      </td>
		    </tr>
		    <tr>
		      	<td class="fields_text" valign="top">价格：</td>
		      	<td class="fields_input">
		        	<input name="visa_price" type="text" value="0.00" id="visa_type" class="input_mini" style="width:51px;">
		        	<span id="RegularExpressionValidator1" style="color:Red;display:inline-block;">限数字</span>
		        </td>
		    </tr>
		    <tr>
		      	<td class="fields_text" valign="top">签发城市：</td>
		      	<td class="fields_input">
			        <select name="visa_city" id="visa_city">
						<s:iterator var="visaCityVO" value="#request.visaCityVOs">
							<option value="<s:property value="#visaCityVO.getCityId()"/>"><s:property value="#visaCityVO.getCityName()"/></option>
				   		</s:iterator>
					</select>
		        </td>
		    </tr>
		    <tr>
		      	<td class="fields_text" valign="top">有效期：</td>
		      	<td class="fields_input">
		        	<input name="visa_validity" type="text" id="visa_validity" class="input_middle">
		        </td>
		    </tr>
    		<tr>
		      	<td class="fields_text" valign="top">办理时长：</td>
		      	<td class="fields_input">
		        	<input name="visa_process_time" type="text" id="visa_process_time" class="input_middle">
		        </td>
		    </tr>
		    <tr>
		      	<td class="fields_text" valign="top">最长停留时间：</td>
		      	<td class="fields_input">
		        	<input name="visa_max_stay" type="text" id="visa_max_stay" class="input_middle">
		        </td>
		    </tr>
		    <tr>
		      	<td class="fields_text" valign="top">入境次数：</td>
		      	<td class="fields_input">
		        	<input name="visa_immigrants_times" type="text" id="visa_immigrants_times" class="input_middle">
		        </td>
		    </tr>
		    <tr>
		      	<td class="fields_text" valign="top">面试：</td>
		      	<td class="fields_input">
		        	<input name="visa_interview" type="text" id="visa_interview" class="input_middle">
		        </td>
		    </tr>
		    <tr>
		    	<td class="fields_text">摘要：</td>
		      	<td class="fields_input">
		        	<textarea name="visa_summary" rows="2" cols="20" id="visa_summary" class="text_content"></textarea>
		      	</td>
		    </tr>
    		<tr>
		      <td class="fields_text" valign="top">所需材料：</td>
		      <td class="fields_input">
		        <div class="ke-container ke-container-default" style="width: 100%;">
		        	<div style="display: block; height: 238px;" class="ke-edit">
		        		<textarea class="ke-edit-textarea" name="visa_materials" hidefocus="true" style="width: 100%; height: 238px;"></textarea>
		        		<script>
							var editor1;
							KindEditor.ready(function(K) {
								editor1 = K.create('textarea[name="visa_materials"]', {
									allowFileManager : true,
									uploadJson : '<s:url value="/admin/kindeditor/jsp/upload_json.jsp" />',
									fileManagerJson : '<s:url value="/admin/kindeditor/jsp/file_manager_json.jsp" />'
								});
							});
						</script>
		        	</div>
			    </div>
		      </td>
		    </tr>
    		<tr>
		      <td class="fields_text" valign="top">介绍：</td>
		      <td class="fields_input">
		        <div class="ke-container ke-container-default" style="width: 100%;">
		        	<div style="display: block; height: 238px;" class="ke-edit">
		        		<textarea class="ke-edit-textarea" name="visa_introduction" hidefocus="true" style="width: 100%; height: 238px;"></textarea>
		        		<script>
							var editor2;
							KindEditor.ready(function(K) {
								editor2 = K.create('textarea[name="visa_introduction"]', {
									allowFileManager : true,
									uploadJson : '<s:url value="/admin/kindeditor/jsp/upload_json.jsp" />',
									fileManagerJson : '<s:url value="/admin/kindeditor/jsp/file_manager_json.jsp" />'
								});
							});
						</script>
		        	</div>
			    </div>
		      </td>
		    </tr>
		    <tr>
		      	<td class="fields_text">
		        	设置：
		       	</td>
		       	<td align="left" height="30" class="fields_input">
					点击：<input name="visa_count" type="text" id="visa_count" class="input_mini" style="width:51px;">
		      	</td>
		    </tr>
		    <tr>
		      <td></td>
		      <td align="left" height="50">
		      	<input type="submit" name="Button1" value="确 定" onclick="" id="Button1" class="btn-submit">
		        &nbsp;<input id="Button2" type="reset" value="取 消" class="btn-cancel" onclick="javascript:history.back();" />
		      </td>
		    </tr>
		</tbody>	
	</table>
</body>
</html>