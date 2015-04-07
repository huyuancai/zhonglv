<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<s:if test="#session.userVO == null">
	<jsp:forward page="/admin/login.jsp"></jsp:forward>
</s:if>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<s:url value="/admin/route/css/global.css"/>" rel="stylesheet" type="text/css">
<link href="<s:url value="/admin/dropzone/dropzone.min.css"/>" rel="stylesheet" type="text/css">
<link href="<s:url value="/admin/dropzone/basic.min.css"/>" rel="stylesheet" type="text/css">
<style type="text/css">
	.ptlist{ margin:10px 0px; border:1px solid #eee; padding:10px;position: absolute;width: 97%;}
  	.ptlist ul{ margin:0px; padding:0px;}
  	.ptlist li{ float:left; margin:5px; padding:5px 0px; width:150px; text-align:center; list-style:none; border:1px solid #ffffff;}
   	.ptlist li:hover{ border:1px solid #ff0000;}
  	.ptlist h2{ text-align:center; margin:0px; padding:0px; font-size:12px; line-height:22px;}
  	.ptlist p{ margin:0px; padding:0px; text-align:center;}
</style>
<script type="text/javascript" src="<s:url value="/js/jquery-1.4.4.min.js"/>"></script>
<script type="text/javascript" src="<s:url value="/admin/dropzone/dropzone.js"/>"></script>
<script type="text/javascript">
	//Dropzone的初始化，myDropzone为form的id
    Dropzone.options.myDropzone = {
        //指定上传图片的路径
        url: "/zhonglv/RouteImageAction!ajaxUploadImages.action",
        method: "post",
        //添加上传取消和删除预览图片的链接，默认不添加
        addRemoveLinks: true,
        //关闭自动上传功能，默认会true会自动上传
        //也就是添加一张图片向服务器发送一次请求
        autoProcessQueue: true,
        //文件最大上传大小(MB)
        maxFilesize: 3,
        dictDefaultMessage: "文件拖放到此处进行上传",
        paramName: "image",
        //允许上传多个照片
        uploadMultiple: true,
        //每次上传的最多文件数，经测试默认为2，坑啊
        //记得修改web.config 限制上传文件大小的节
        parallelUploads: 10,
        init: function () {
            myDropzone = this; // closure
            //当上传完成后的事件，接受的数据为JSON格式
            this.on("complete", function (data) {
                if (this.getUploadingFiles().length === 0 && this.getQueuedFiles().length === 0) {
                    var res = eval('(' + data.xhr.responseText + ')');
                    var msg;
                    if (res.code == 90000 ) {
                        msg = "恭喜，已成功上传" + res.Count + "张照片！";
                    }
                    else {
                        msg = "上传失败，失败的原因是：" + res.errMsg;
	                    alert(msg);
                    }
                }
            });

            //删除图片的事件，当上传的图片为空时，使上传按钮不可用状态
            this.on("removedfile", function () {
                if (this.getAcceptedFiles().length === 0) {
                    $("#submit-all").attr("disabled", true);
                }
            });
        }
    };
	
	function deleteImage(imageId){
		if (confirm("确定删除吗？")) {
			$.ajax({
				url:"/zhonglv/RouteImageAction!ajaxDeleteRouteImage.action",
				type:"post",
				dataType:"json",
				data:{
					imageId:imageId
				},
				success:function(data){
					if ( data.code == 90000 ) {
						window.location.reload();
					}else{
						alert(data.errMsg);
					}
				}
			});
		}
	}
</script>
<title>Upload Image</title>
</head>
<body>
	<table cellpadding="0" cellspacing="1" border="0" width="100%" class="black_border">
      <tbody><tr class="suphead">
        <td colspan="4">
           	 线路图片管理
          </td>
      </tr>
    </tbody></table>
	<form action="/zhonglv/RouteImageAction!ajaxUploadImages.action" class="dropzone" method="post" enctype="multipart/form-data" id="myDropzone">
	</form>
	<form action="/zhonglv/RouteImageAction!saveRouteImages.action" method="post" name="saveImageForm">
		<input type="hidden" name="routeId" value="<s:property value="#request.routeId"/>">
		<input type="submit" value="确定" class="btn-submit">
	</form>
	<div class="ptlist">
		<ul>
			<s:iterator var="routeImageVO" value="#request.routeImageVOs">
				<li>
					<a href="<s:url value="%{#routeImageVO.getImagePath() }"/>" target="_blank">
						<img src="<s:url value="%{#routeImageVO.getImagePath() }"/>" width="120" height="100" border="0" alt="<s:property value="#routeImageVO.getImageAlias()"/>" title="<s:property value="#routeImageVO.getImageAlias()"/>">
					</a>
					<h2><s:property value="#routeImageVO.getImageAlias()"/></h2>
					<p>     
		          		<input type="submit" name="routeImageEdit" value="编辑" id="routeImageEdit">
		          		<input type="submit" name="routeImageDelete" value="删除" onclick="deleteImage(<s:property value="#routeImageVO.getImageId()"/>)" id="routeImageDelete">
		          	</p>
				</li>
			</s:iterator>
		</ul>
	</div>
</body>
</html>