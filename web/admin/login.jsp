<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<s:if test="#session.userVO != null">
	<jsp:forward page="/admin/index.jsp"></jsp:forward>
</s:if>	
<title>网站管理员登陆 - 洛阳中旅</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #1D3647;
}
.error_txt{
	color: red;
	font-size: 12px;
	display: none;
}
-->
</style>
<link href="<s:url value="/admin/images/skin.css"/>" rel="stylesheet" type="text/css">
<script type="text/javascript" src="<s:url value="/js/jquery-1.4.4.min.js"/>"></script>
<script type="text/javascript" src="<s:url value="/js/jquery.md5.js"/>"></script>
<body>
<table width="100%" height="166" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="42" valign="top"><table width="100%" height="42" border="0" cellpadding="0" cellspacing="0" class="login_top_bg">
      <tr>
        <td width="1%" height="21">&nbsp;</td>
        <td height="42">&nbsp;</td>
        <td width="17%">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="top"><table width="100%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg">
      <tr>
        <td width="49%" align="right"><table width="91%" height="532" border="0" cellpadding="0" cellspacing="0" class="login_bg2">
            <tr>
              <td height="138" valign="top"><table width="89%" height="427" border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td height="149">&nbsp;</td>
                </tr>
                <tr>
                  <td height="80" align="right" valign="top"><img src="<s:url value="/admin/images/logo.png"/>" width="279" height="68"></td>
                </tr>
                <tr>
                  <td height="198" align="right" valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="35%">&nbsp;</td>
                      <td height="25" colspan="2" class="left_txt"><p>1- 地区商家信息网门户站建立的首选方案...</p></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="25" colspan="2" class="left_txt"><p>2- 一站通式的整合方式，方便用户使用...</p></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="25" colspan="2" class="left_txt"><p>3- 强大的后台系统，管理内容易如反掌...</p></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td width="30%" height="40"><img src="<s:url value="/admin/images/icon-demo.gif"/>" width="16" height="16"><a href="javascript:void(0);" target="_blank" class="left_txt3"> 使用说明</a> </td>
                      <td width="35%"><img src="<s:url value="/admin/images/icon-login-seaver.gif"/>" width="16" height="16"><a href="javascript:void(0);" class="left_txt3"> 在线客服</a></td>
                    </tr>
                  </table></td>
                </tr>
              </table></td>
            </tr>
            
        </table></td>
        <td width="1%" >&nbsp;</td>
        <td width="50%" valign="bottom"><table width="100%" height="59" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td width="4%">&nbsp;</td>
              <td width="96%" height="38"><span class="login_txt_bt">登陆信息网后台管理</span></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td height="21"><table cellSpacing="0" cellPadding="0" width="100%" border="0" id="table211" height="328">
                  <tr>
                    <td height="164" colspan="2" align="middle"><form name="myform" action="javascript:void(0);" method="post">
                        <table cellSpacing="0" cellPadding="0" width="100%" border="0" height="143" id="table212">
                          <tr>
                            <td width="13%" height="38" class="top_hui_text"><span class="login_txt">管理员：&nbsp;&nbsp; </span></td>
                            <td width="33%" height="38" colspan="2" class="top_hui_text"><input name="userName" class="editbox4" value="" size="20"></td>
                            <td width="67%" height="38" colspan="2" class="top_hui_text"><span class="error_txt" id="userNameError">管理员：&nbsp;&nbsp; </span></td>
                          </tr>
                          <tr>
                            <td height="35" class="top_hui_text"><span class="login_txt"> 密 码： &nbsp;&nbsp; </span></td>
                            <td height="35" colspan="2" class="top_hui_text"><input class="editbox4" type="password" size="20" name="password">
                              <img src="<s:url value="/admin/images/luck.gif"/>" width="19" height="18"> </td>
                            <td height="38" colspan="2" class="top_hui_text"><span class="error_txt" id="passwordError">管理员：&nbsp;&nbsp; </span></td>
                          </tr>
                          <tr>
                            <td height="35" ><span class="login_txt">验证码：</span></td>
                            <td height="35" colspan="2" class="top_hui_text">
                            	<input class="wenbenkuang" name="verifyCode" type="text" value="" maxLength=4 size=10>
                            	<img id="captcha" height="20" width="65" style="cursor:pointer;vertical-align: middle;"/>
                            </td>
                            <td height="38" colspan="2" class="top_hui_text"><span class="error_txt" id="verifycodeError">管理员：&nbsp;&nbsp; </span></td>
                          </tr>
                          <tr>
                            <td height="35" >&nbsp;</td>
                            <td height="35" ><input name="Submit" type="submit" class="button" id="submit" value="登 陆"> </td>
                            <td class="top_hui_text"><input name="cs" type="button" class="button" id="cs" value="取 消" onClick="javascript:window.close()"></td>
                          </tr>
                        </table>
                        <br>
                    </form></td>
                  </tr>
                  <tr>
                    <td width="433" height="164" align="right" valign="bottom"><img src="<s:url value="/admin/images/login-wel.gif"/>" width="242" height="138"></td>
                    <td width="57" align="right" valign="bottom">&nbsp;</td>
                  </tr>
              </table></td>
            </tr>
          </table>
          </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="20"><table width="100%" border="0" cellspacing="0" cellpadding="0" class="login-buttom-bg">
      <tr>
        <td align="center"><span class="login-buttom-txt">Copyright &copy; 2009-2015 洛阳中旅旅行社有限公司</span></td>
      </tr>
    </table></td>
  </tr>
  
</table>
<script type="text/javascript">
	$().ready(function(){
		getCaptcha();
		$("#captcha").click(function(){
			getCaptcha();
		});
		$("#submit").click(function(){
			var userName = $("input[name='userName']").val();
			var password = $("input[name='password']").val();
			var verifyCode = $("input[name='verifyCode']").val();
			if ( null == userName || "" == userName || undefined == userName  ) {
				$("#userNameError").html("用户名不能为空！");
				$("#userNameError").show();
				return false;
			}else{
				$("#userNameError").hide();
			}
			if ( null == password || "" == password || undefined == password  ) {
				$("#passwordError").html("密码不能为空！");
				$("#passwordError").show();
				return false;
			}else{
				$("#passwordError").hide();
			}
			if ( null == verifyCode || "" == verifyCode || verifyCode == password  ) {
				$("#verifycodeError").html("验证码不能为空！");
				$("#verifycodeError").show();
				return false;
			}else{
				$("#verifycodeError").hide();
			}
			$.ajax({
				url:"LoginAction!ajaxLogin.action",
				type:"post",
				async:false,
				data: {
					'userVO.userName':userName,
					'userVO.userPassword':$.md5(password),
					'userVO.verifyCode':verifyCode
				},
				dataType: "json",
				success:function(data){
					if (data.code == 90000 ) {
						window.location.reload();
					}else{
						if ( data.code == 91001 ) {
							$("#userNameError").html(data.errMsg);
							$("#userNameError").show();
						}
						if ( data.code == 91002 ) {
							$("#passwordError").html(data.errMsg);
							$("#passwordError").show();
						}
						if ( data.code == 91003 ) {
							$("#userNameError").html(data.errMsg);
							$("#userNameError").show();
						}
						if ( data.code == 91005 ) {
							$("#verifycodeError").html(data.errMsg);
							$("#verifycodeError").show();
						}
						if ( data.code == 91006 ) {
							$("#verifycodeError").html(data.errMsg);
							$("#verifycodeError").show();
							getCaptcha();
						}
						return false;
					}
				}
			});
		});
		
		function getCaptcha(){
			$.ajax({
				type:'post',
				url:'LoginAction!ajaxGetCaptcha.action',
				async:false,
				dataType: "json",
				success:function(data){
					if ( data.code == 90000 ) {
						$("#captcha").attr("src",data.captcha);
					}else{
						//alert(data.errMsg);
					}
				}
			});
		}
	});
</script>