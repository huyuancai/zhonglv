<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<s:if test="#session.userVO == null">
	<jsp:forward page="/admin/login.jsp"></jsp:forward>
</s:if>
<!DOCTYPE html >
<html>
<head>
<title>洛阳中旅 - 管理页面</title>
<script type="text/javascript" src="<s:url value="/js/jquery-1.4.4.min.js"/>"></script>
<script type="text/javascript">
function logout(){
	if (confirm("您确定要退出控制面板吗？")){
		$.ajax({
			url:"LoginAction!ajaxLogout.action",
			type:"post",
			dataType: "json",
			async:false,
			success:function(data){
				if (data.code == 90000 ) {
					parent.location.reload();
				}else{
					alert(data.errMsg);
					return false;
				}
			}
		});
	}
	return false;
}
</script>
<script type="text/javascript">
function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
</script>
<meta http-equiv=Content-Type content=text/html;charset=utf-8>
<meta http-equiv="refresh" content="60">
<script type="text/javascript">
function showsubmenu(sid) {
	var whichEl = eval("submenu" + sid);
	var menuTitle = eval("menuTitle" + sid);
	if (whichEl.style.display == "none"){
		eval("submenu" + sid + ".style.display=\"\";");
	}else{
		eval("submenu" + sid + ".style.display=\"none\";");
	}
}
</script>
<base target="main">
<link href="<s:url value="/admin/images/skin.css"/>" rel="stylesheet" type="text/css">
</head>
<body leftmargin="0" topmargin="0">
<table width="100%" height="64" border="0" cellpadding="0" cellspacing="0" class="admin_topbg">
  <tr>
    <td width="61%" height="64"><img src="<s:url value="/admin/images/logo.gif"/>" width="262" height="64"></td>
    <td width="39%" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="74%" height="38" class="admin_txt">管理员：<b>admin</b> 您好,感谢登陆使用！</td>
        <td width="22%"><a href="#" target="_self" onClick="logout();"><img src="<s:url value="/admin/images/out.gif"/>" alt="安全退出" style="margin-top:8px;" width="46" height="20" border="0"></a></td>
        <td width="4%">&nbsp;</td>
      </tr>
      <tr>
        <td height="19" colspan="3">&nbsp;</td>
        </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
