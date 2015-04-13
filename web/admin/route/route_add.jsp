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
<script charset="utf-8" src="<s:url value="/DatePicker/WdatePicker.js"/>"></script>
<script type="text/javascript" src="<s:url value="/admin/js/ajaxfileupload.js"/>"></script>
<script type="text/javascript">
	$().ready(function(){
		$("#Button1").click(function(){
			var route_name = $("input[name='route_name']").val();
			if ( !route_name ) {
				alert("线路名称不能为空！");
				return false;
			}
			var route_number = $("input[name='route_number']").val();
			var route_type = $("select[name='route_type']").val();
			var route_title = $("input[name='route_title']").val();
			var route_days = $("input[name='route_days']").val();
			var route_thumb = $("input[name='route_thumb']").val();
			var route_destination_city = $("select[name='route_destination_city']").val();
			var route_departure_city = $("select[name='route_departure_city']").val();
			var route_transport_mode = $("input[name='route_transport_mode']").val();
			var route_departure_date = $("input[name='route_departure_date']").val();
			var route_price = $("input[name='route_price']").val();
			var route_destine_days = $("input[name='route_destine_days']").val();
			var route_recommend = $("#route_recommend").is( ":checked" );
			var route_summary = $("#route_summary").text();//特色说明
			var route_feature_desc = editor1.html();//特色说明
			var route_booking_policy = editor2.html();//费用说明
			var route_tips = editor3.html();//温馨提示
			var route_itinerary = editor4.html();//行程
			var route_advisory = editor5.html();//线路咨询
			var route_strategy = editor6.html();//旅游攻略
			var topicsList = new Array();
			$("input[name='topics']:checked").each(function(){
				topicsList.push($(this).val());
			});
			var data = {};
			data['routeVO.routeName']=route_name;
			data['routeVO.routeNumber']=route_number;
			data['routeVO.routeType']=route_type;
			data['routeVO.routeTitle']=route_title;
			data['routeVO.routeDays']=route_days;
			data['routeVO.routeThumb']=route_thumb;
			data['routeVO.routeDestinationCity']=route_destination_city;
			data['routeVO.routeDepartureCity']=route_departure_city;
			data['routeVO.routeTransportMode']=route_transport_mode;
			data['routeVO.routeDepartureDate']=route_departure_date;
			data['routeVO.routePrice']=route_price;
			data['routeVO.routeDestineDays']=route_destine_days;
			data['routeVO.routeSummary']=route_summary;
			data['routeVO.routeFeatureDesc']=route_feature_desc;
			data['routeVO.routeBookingPolicy']=route_booking_policy;
			data['routeVO.routeTips']=route_tips;
			data['routeVO.routeItinerary']=route_itinerary;
			data['routeVO.routeAdvisory']=route_advisory;
			data['routeVO.routeStrategy']=route_strategy;
			data['routeVO.routeRecommend']=route_recommend;
			if ( topicsList.length > 0 ) {
				data['routeVO.topics']=topicsList;
			}
			$.ajax({
				type:"post",
				url:"RouteManagerAction!ajaxAddRoute.action",
				async:false,
				dataType:"json",
				data:data,
				traditional: true,
				success:function(data){
					if ( data.code == 90000 ) {
						alert("线路添加成功!");
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
			url:"FileUploadAction!ajaxUploadRouteImage.action",
			secureuri:false,
			fileElementId:'image',
			dataType: 'json',
			success:function(data){
				if (data.code == 90000) {
					$("#route_thumb").val(data.uploadImagePath);
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
	
	function checkFileSize(fileSize) {
	    if( fileSize > (2 * 1024 * 1024 ) ) {
	        alert("您上传的文件过大,请上传小于2M的图片！");
	        return false;
	    }
	    return true;
	}
</script>
<title>线路添加</title>
</head>
<body>
	<table style="width:100%;" border="0" cellpadding="0" cellspacing="1" class="black_border">
     		<tbody>
     			<tr class="suphead">
		        <td colspan="2">添加线路</td>
		    </tr>
   			<tr>
     				<td class="fields_text">线路名称：</td>
			    <td class="fields_input">
		          <input name="route_name" type="text" id="route_name" class="input_long">
		          <span id="RequiredFieldValidator1" style="color:Red;">(*)</span>
			                编号：<input name="route_number" type="text" id="route_number" class="input_normal">
			    </td>
   			</tr>
		   	<tr>
		     	<td class="fields_text">标&nbsp; 题：</td>
		     	<td class="fields_input">
		     		<input name="route_title" type="text" id="route_title" class="input_long">
		     	</td>
		   	</tr>
		   	<tr>
		      	<td class="fields_text"> 线路专题：</td>
		      	<td class="fields_input">
		      		<s:iterator var="topicsVO" value="#request.topicsVOs" status="s" >
				      	<input name="topics" id="topics<s:property value="#s.index"/>" type="checkbox" value="<s:property value="#topicsVO.getTopicsId()"/>"/>
				      	<label for="topics<s:property value="#s.index"/>"><s:property value="#topicsVO.getTopicsName()"/></label>
		      		</s:iterator>
			  	</td>
		  	</tr>
		    <tr>
		      	<td class="fields_text"> 线路类型：</td>
		      	<td class="fields_input">
		        <select name="route_type" id="route_type">
		        	<s:iterator var="routeTypeVO" value="#request.routeTypeVOs">
						<option value="<s:property value="#routeTypeVO.getRouteTypeId()"/>"><s:property value="#routeTypeVO.getRouteTypeName()"/></option>
		        	</s:iterator>
				</select>
				&nbsp;天数：<input name="route_days" type="text" value="1" id="route_days" class="input_mini">天
			  	</td>
		  	</tr>
		    <tr>
		      <td class="fields_text">缩略图：</td>
		      <td class="fields_input">
		        <input name="image" type="file" id="image" class="input_middle">
		        <input name="UpLoad" type="button" id="UpLoad" value="上传" onclick="uploadImage()" class="btn-general">
		        <label id="fileUploadStatus" style="display: none;"></label>
		        <input name="route_thumb" id="route_thumb" type="hidden" />
		        <img id="tempimg" dynsrc="" src="" style="display:none" />
		      </td>
		    </tr>
		    <tr>
		      <td class="fields_text">目的城市：</td>
		      <td class="fields_input">          
		          <select name="route_destination_city" id="route_destination_city">
		          	<s:iterator var="destinationCityVO" value="#request.destinationCityVOs">
						<option value="<s:property value="#destinationCityVO.getDesCityId()"/>"><s:property value="#destinationCityVO.getDesCityName()"/></option>
		        	</s:iterator>
		          </select>
		          &nbsp;交通方式：<input name="route_transport_mode" type="text" id="route_transport_mode" class="input_normal">
		          &nbsp;出发日期：<input name="route_departure_date" type="text" id="route_departure_date" class="input_middle Wdate" readonly="readonly" onclick="WdatePicker()">
		          </td>
		    </tr>
		    <tr>
		      <td class="fields_text">价格：</td>
		      <td class="fields_input">
			  	<input name="route_price" type="text" value="0.00" id="route_price" class="input_mini" style="width:51px;"> 元
		      </td>
		    </tr>
		    <tr>
		      <td class="fields_text">出发城市：</td>
		      <td class="fields_input">
		        <select name="route_departure_city" id="route_departure_city">
					<s:iterator var="departureCityVO" value="#request.departureCityVOs">
						<option value="<s:property value="#departureCityVO.getDepCityId()"/>"><s:property value="#departureCityVO.getDepCityName()"/></option>
		        	</s:iterator>
				</select>
		        &nbsp;至少提前<input name="route_destine_days" type="text" id="route_destine_days" class="input_mini">天预定</td>
		    </tr>
		    <tr>
		      <td class="fields_text">
		                    摘要：</td>
		      <td class="fields_input">
		        <textarea name="route_summary" rows="2" cols="20" id="route_summary" class="text_content"></textarea>
		      </td>
		    </tr>
		    <tr>
		      <td class="fields_text" valign="top">特色说明：</td>
		      <td class="fields_input">
		        <div class="ke-container ke-container-default" style="width: 100%;">
		        	<div style="display: block; height: 238px;" class="ke-edit">
		        		<textarea class="ke-edit-textarea" name="route_feature_desc" hidefocus="true" style="width: 100%; height: 238px;"></textarea>
		        		<script>
							var editor1;
							KindEditor.ready(function(K) {
								editor1 = K.create('textarea[name="route_feature_desc"]', {
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
		      <td class="fields_text" valign="top">
		                    费用说明：</td>
		      <td class="fields_input">
		        <div class="ke-container ke-container-default" style="width: 100%;">
		        	<div style="display: block; height: 238px;" class="ke-edit">
		        		<textarea class="ke-edit-textarea" name="route_booking_policy" hidefocus="true" style="width: 100%; height: 238px;"></textarea>
		        		<script>
							var editor2;
							KindEditor.ready(function(K) {
								editor2 = K.create('textarea[name="route_booking_policy"]', {
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
		      <td class="fields_text" valign="top">
		                    温馨提示：</td>
		      <td class="fields_input">
		        <div class="ke-container ke-container-default" style="width: 100%;">
		        	<div style="display: block; height: 238px;" class="ke-edit">
		        		<textarea class="ke-edit-textarea" name="route_tips" hidefocus="true" style="width: 100%; height: 238px;"></textarea>
		        		<script>
							var editor3;
							KindEditor.ready(function(K) {
								editor3 = K.create('textarea[name="route_tips"]', {
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
		      <td class="fields_text" valign="top">
		                    行程：</td>
		      <td class="fields_input">
		        <div class="ke-container ke-container-default" style="width: 100%;">
		        	<div style="display: block; height: 238px;" class="ke-edit">
		        		<textarea class="ke-edit-textarea" name="route_itinerary" hidefocus="true" style="width: 100%; height: 238px;"></textarea>
		        		<script>
							var editor4;
							KindEditor.ready(function(K) {
								editor4 = K.create('textarea[name="route_itinerary"]', {
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
		      <td class="fields_text" valign="top">
		                    线路咨询：</td>
		      <td class="fields_input">
		        <div class="ke-container ke-container-default" style="width: 100%;">
		        	<div style="display: block; height: 238px;" class="ke-edit">
		        		<textarea class="ke-edit-textarea" name="route_advisory" hidefocus="true" style="width: 100%; height: 238px;"></textarea>
		        		<script>
							var editor5;
							KindEditor.ready(function(K) {
								editor5 = K.create('textarea[name="route_advisory"]', {
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
		      <td class="fields_text" valign="top">
		                    旅游攻略：</td>
		      <td class="fields_input">
		        <div class="ke-container ke-container-default" style="width: 100%;">
		        	<div style="display: block; height: 238px;" class="ke-edit">
		        		<textarea class="ke-edit-textarea" name="route_strategy" hidefocus="true" style="width: 100%; height: 238px;"></textarea>
		        		<script>
							var editor6;
							KindEditor.ready(function(K) {
								editor6 = K.create('textarea[name="route_strategy"]', {
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
		      <td class="fields_text">设置：</td>
		      <td align="left" height="30" class="fields_input">
                   <input id="cbCheck" type="checkbox" checked="checked" disabled="disabled" name="cbCheck"><label for="cbCheck">审核</label>
                   <input id="route_recommend" type="checkbox" name="route_recommend"><label for="route_recommend">推荐</label>
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