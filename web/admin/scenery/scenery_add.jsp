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
<link href="<s:url value="/jquery-easyui/themes/default/easyui.css"/>" rel="stylesheet" type="text/css">
<link href="<s:url value="/jquery-easyui/themes/icon.css"/>" rel="stylesheet" type="text/css">
<link href="<s:url value="/jquery-easyui/themes/demo.css"/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="<s:url value="/admin/kindeditor/themes/default/default.css"/>" />
<script charset="utf-8" src="<s:url value="/admin/kindeditor/kindeditor-min.js"/>"></script>
<script charset="utf-8" src="<s:url value="/admin/kindeditor/lang/zh_CN.js"/>"></script>
<script type="text/javascript" src="<s:url value="/js/jquery-1.4.4.min.js"/>"></script>
<script type="text/javascript" src="<s:url value="/jquery-easyui/jquery.easyui.min.js"/>"></script>
<script type="text/javascript" src="<s:url value="/admin/js/ajaxfileupload.js"/>"></script>
<script type="text/javascript">
	$().ready(function(){
		$("#markerPosition").click(function(){
			$("#markerPositionMap").show();
			$("#markerPositionMap").dialog({
				title:"标注位置",
				modal : true,
				width : "80%",
				height : "500px"
			});
		});
		
		$("#Button1").click(function(){
			var scenery_name = $("input[name='scenery_name']").val();
			if ( scenery_name == null || scenery_name =="" || scenery_name == undefined  ) {
				alert("景点名称不能为空！");
				return false;
			}
			var scenery_level = $("select[name='scenery_level']").val();
			var scenery_title = $("input[name='scenery_title']").val();
			var scenery_type = $("select[name='scenery_type']").val();
			var scenery_thumb = $("input[name='scenery_thumb']").val();
			var scenery_city = $("select[name='scenery_city']").val();
			var scenery_addr = $("input[name='scenery_addr']").val();
			var scenery_lng = $("input[name='scenery_lng']").val();
			var scenery_lat = $("input[name='scenery_lat']").val();
			var scenery_price = $("input[name='scenery_price']").val();
			var scenery_tickets_addr = $("input[name='scenery_tickets_addr']").val();
			var scenery_tel = $("input[name='scenery_tel']").val();
			var scenery_summary = $("#scenery_summary").text();//摘要
			var scenery_introduce = editor1.html();//景点介绍
			var scenery_recommend = $("#scenery_recommend").is( ":checked" );
			var data = {};
			data['sceneryVO.sceneryName']=scenery_name;
			data['sceneryVO.sceneryLevel']=scenery_level;
			data['sceneryVO.sceneryTitle']=scenery_title;
			data['sceneryVO.sceneryType']=scenery_type;
			data['sceneryVO.sceneryThumb']=scenery_thumb;
			data['sceneryVO.sceneryCity']=scenery_city;
			data['sceneryVO.sceneryAddr']=scenery_addr;
			data['sceneryVO.sceneryLng']=scenery_lng;
			data['sceneryVO.sceneryLat']=scenery_lat;
			data['sceneryVO.sceneryPrice']=scenery_price;
			data['sceneryVO.sceneryTicketsAddr']=scenery_tickets_addr;
			data['sceneryVO.sceneryTel']=scenery_tel;
			data['sceneryVO.scenerySummary']=scenery_summary;
			data['sceneryVO.sceneryIntroduce']=scenery_introduce;
			data['sceneryVO.sceneryRecommend']=scenery_recommend;
			$.ajax({
				type:"post",
				url:"SceneryManagerAction!ajaxAddScenery.action",
				async:false,
				dataType:"json",
				data:data,
				success:function(data){
					if ( data.code == 90000 ) {
						alert("景点添加成功!");
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
			url:"FileUploadAction!ajaxUploadSceneryImage.action",
			secureuri:false,
			fileElementId:'image',
			dataType: 'json',
			success:function(data){
				if (data.code == 90000) {
					$("#scenery_thumb").val(data.uploadImagePath);
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
	
	function markerMapLngLat(){
		if ( marker ) {
			var lng = marker.point.lng;
			var lat = marker.point.lat;
			$("#scenery_lng").val(lng);
			$("#scenery_lat").val(lat);
		}
		$('#markerPositionMap').dialog('close');
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
		        <td colspan="2">添加景点</td>
		    </tr>
		    <tr>
      			<td class="fields_text">景点名称：</td>
      			<td class="fields_input">
          			<input name="scenery_name" type="text" id="scenery_name" class="input_long">
          			<span id="RequiredFieldValidator1" style="color:Red;display:inline-block;">(*)</span>
	                &nbsp;级别：
	                <select name="scenery_level" id="scenery_level">
						<option value="AA">AA</option>
						<option value="AAA">AAA</option>
						<option value="AAAA">AAAA</option>
						<option value="AAAAA">AAAAA</option>
					</select>
                </td>
    		</tr>
    		<tr>
		     	<td class="fields_text">标&nbsp; 题：</td>
		     	<td class="fields_input">
		     		<input name="scenery_title" type="text" id="scenery_title" class="input_long">
		     	</td>
		   	</tr>
		   	<tr>
		      <td class="fields_text">缩略图：</td>
		      <td class="fields_input">
		        <input name="image" type="file" id="image" class="input_middle">
		        <input name="UpLoad" type="button" id="UpLoad" value="上传" onclick="uploadImage()" class="btn-general">
		        <label id="fileUploadStatus" style="display: none;"></label>
		        <input name="scenery_thumb" id="scenery_thumb" type="hidden" />
		        <img id="tempimg" dynsrc="" src="" style="display:none" />
		      </td>
		    </tr>
		    <tr>
      			<td class="fields_text">所处城市：</td>
      			<td class="fields_input">          
          			<select name="scenery_city" id="scenery_city">
          				<option value="0">--请选择--</option>
          				<s:iterator var="destinationCityVO" value="#request.destinationCityVOs">
				            <option value="<s:property value="#destinationCityVO.getDesCityId()"/> "><s:property value="#destinationCityVO.getDesCityName()"/> </option>
          				</s:iterator>
			        </select>
					&nbsp;地址 ：<input name="scenery_addr" type="text" id="scenery_addr" class="input_middle">
	          		&nbsp;地图坐标：<input name="scenery_lng" type="text" readonly="readonly" value="0.00" id="scenery_lng" class="input_normal">
		          <input name="scenery_lat" type="text" readonly="readonly" value="0.00" id="scenery_lat" class="input_normal">
		          <input name="map_marker" type="button" id="markerPosition" value="标注位置" class="btn-general">
		        </td>
		    </tr>
		    <tr>
      			<td class="fields_text">价格：</td>
      			<td class="fields_input">
					<input name="scenery_price" type="text" value="0.00" id="scenery_price" class="input_mini" style="width:51px;">
          			元<span id="RegularExpressionValidator1" style="color:Red;visibility:hidden;">限数字</span>
          			&nbsp;取票地址：<input name="scenery_tickets_addr" type="text" id="scenery_tickets_addr" class="input_middle">
         			 &nbsp;电话：<input name="scenery_tel" type="text" id="scenery_tel" class="input_normal">
          		</td>
    		</tr>
    		<tr>
		    	<td class="fields_text">摘要：</td>
		      	<td class="fields_input">
		        	<textarea name="scenery_summary" rows="2" cols="20" id="scenery_summary" class="text_content"></textarea>
		      	</td>
		    </tr>
    		<tr>
		      <td class="fields_text" valign="top">景点介绍：</td>
		      <td class="fields_input">
		        <div class="ke-container ke-container-default" style="width: 100%;">
		        	<div style="display: block; height: 238px;" class="ke-edit">
		        		<textarea class="ke-edit-textarea" name="scenery_feature_desc" hidefocus="true" style="width: 100%; height: 238px;"></textarea>
		        		<script>
							var editor1;
							KindEditor.ready(function(K) {
								editor1 = K.create('textarea[name="scenery_feature_desc"]', {
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
                   <input id="scenery_recommend" type="checkbox" name="scenery_recommend"><label for="scenery_recommend">推荐</label>
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
	
	<div id="markerPositionMap" style="display:none;" data-options="iconCls: 'icon-save',toolbar: '#dlg-toolbar',buttons: '#dlg-buttons'">
		<div id="allmap"></div>
		<style type="text/css">
			#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}
		</style>
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=A4048d5fb40020591c9d7e8b144cc80b"></script>
		<script type="text/javascript">
			// 百度地图API功能
			var map = new BMap.Map("allmap");    // 创建Map实例
			var point = new BMap.Point(112.454, 34.675);
			map.centerAndZoom( point , 12);  // 初始化地图,设置中心点坐标和地图级别
			map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
			
			//定位当前IP所在的城市
			function myFun(result){
				var cityName = result.name;
				map.setCenter(cityName);
			}
			var myCity = new BMap.LocalCity();
			myCity.get(myFun);
			
			var marker;			
			map.addEventListener("click",function(e){
				if ( !marker ) {
					marker = new BMap.Marker(e.point);// 创建标注
					map.addOverlay(marker); // 将标注添加到地图中
					marker.enableDragging();// 可拖拽
				}				
			});
			var local = new BMap.LocalSearch(map, {
				renderOptions:{map: map},
				onSearchComplete:function(results){
					//可以得到搜索结果且搜索结果不为空 
					if(local.getStatus() == BMAP_STATUS_SUCCESS){
						console.log(results);
						for (var i = 0; i < results.getCurrentNumPois(); i++){ 
							var poi = results.getPoi(i);
							console.log(poi);
						}
					}
				}
			});
			$().ready(function(){
				$("#mapSearch").searchbox({
					searcher:function(value,name){
						local.search(value);
				    }
				});
			});
		</script>
		<!-- <div id="dlg-toolbar" style="padding:2px 0">
			<input class="easyui-searchbox" name="mapSearch" id="mapSearch" data-options="prompt:'搜索'" style="width:150px"/>
		</div> -->
		<div id="dlg-buttons">
			<a href="javascript:void(0);" class="easyui-linkbutton" onclick="javascript:markerMapLngLat()">确定</a>
			<a href="javascript:void(0);" class="easyui-linkbutton" onclick="javascript:$('#markerPositionMap').dialog('close')">关闭</a>
		</div>
	</div>
</body>
</html>