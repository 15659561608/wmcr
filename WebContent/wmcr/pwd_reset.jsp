<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.etc.entity.Users"%>
<%
	Users uu = null;
	if (session.getAttribute("users") == null) {

		response.sendRedirect("pwd_forget.jsp");
		return;
	} else {

		uu = (Users) session.getAttribute("users");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta property="wb:webmaster" content="239d3d1dbdde1b2c" />
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
    <link rel="stylesheet" href="css/common.css"/>
    
    <link rel="stylesheet" href="css/forget_passwd.css"/>

    <!--[if lt IE 9]><link rel="stylesheet" type="text/css" href="css/frontPage-ie8-fix.css" /><![endif]-->
    <!--[if lte IE 10]><script>document.createElement('footer');document.createElement('header');document.createElement('nav');document.createElement('section');document.createElement('article');</script><![endif]-->
    <!--[if lte IE 7]><script>window.onload=function(){location.href="/ie6warning/"}</script><![endif]-->
    <title>密码重置</title>
    <!-- <script type="text/javascript">
        
        (function(document, screen) {
            if (screen.width < 760) {
                document.location.href="/mobile/";
            }
        }(document, screen));
    </script> -->
</head>
<body>
    
    <header id="header" class="">
        <div class="common-width">
            
                <section class="clearfix">
                    <h1 class="logo" title="外卖超人">
                        <a href="index.html"></a>
                    </h1>
                    <span class="page-name"> | 找回密码</span>
                </section>
                
            
        </div>
    </header>
    
    <section class="main">
        <div class="common-width">
            
    <div class="main-inner">
        <div class="passwd-nav-box">
            <ol class="passwd-nav">
                <li class="first ">
                    <span><i>1</i><em>身份验证</em></span>
                </li>
                <li class="middle done">
                    <span><i>2</i><em>重设登录密码</em></span>
                </li>
                <li class="last ">
                    <span><i>3</i><em>完成</em></span>
                </li>
            </ol>
        </div>
    
<form action="Rp.do" method="post">

    <div class="fill-data-box" id="passStep">
        <div class="fill-data">
            <div class="title txt-center">您正在为账号${sessionScope.users.account}设置密码</div>
            <div class="form-group w275">
            <input type="hidden" name="op" value="second"/> 
                <input type="password" maxlength="10" id="pass" name="pass" class="form-text" placeholder="请输入6-10位的新密码"/>
            </div>
            <div class="form-error-message"></div>
            <div class="form-group w275">
                <input type="password" maxlength="10" id="pass2" name="pass2"  class="form-text" placeholder="请再次输入新密码"/>
            </div>
            <div class="form-error-message"></div>
            <div>
                <button class="form-btn"  type="submit">确认</button>
            </div>
        </div>
    </div>
</form>

    </div>

        </div>
    </section>
     <br><br><br><br><br><br><br><br><br><br><br><br><br>
    <footer id="footer">
        <div class="footer-first gray">
            <div class="company-info clearfix fs14 gray">
                <a href="about.html" target="_blank"  rel="nofollow">关于我们</a>
                <a href="help.html" target="_blank"  rel="nofollow">帮助中心</a>
              
                <a href="jobs.html" target="_blank"  rel="nofollow">人才招聘</a>
                <a href="contact.html" class="last" target="_blank"  rel="nofollow">联系我们</a>
                <a href="/restaurant/list/shanghai/1/" class="last" target="_blank" style="display:none">上海餐厅导航</a>
            </div>
        </div>
        <div class="footer-last">
            <a target="_blank" class="foot-logo-1 base-logo" href="index.html"></a>
            <div class="tc fs14 light-gray mb10">
              ©2018 waimaichaoren.com All Rights Reserved - 沪ICP备11019908号
            </div>
        </div>
    </footer>
    
    
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    
    <script>
        var mobile_validate_url = '/ajax/common_validate_sms_code/',
            email_validate_url = '',
            finish_send_mail_url = '',
            password_reset_url = '/account/password/reset_page/',

            password_timeout_url = '/account/password/request_timeout/',
            reset_password_url = '/ajax/password_reset_via_mobile_reset/',
            password_reset_done = '/account/password/reset_done/',

            captcha_url = '/captcha/',

            ajax_password_reset_via_mobile_start = '/ajax/password_reset_via_mobile_start/',
            common_sms_code = '/ajax/common_sms_code/'
    </script>
    <script src="js/forget_passwd.js"></script>

    <!-- Baidu Analytics -->

<!-- End Baidu Tracking Code -->


</body>
</html>