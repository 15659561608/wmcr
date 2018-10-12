<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <title>找回密码</title>
    <script type="text/javascript">
        
        (function(document, screen) {
            if (screen.width < 760) {
                document.location.href="/mobile/";
            }
        }(document, screen));
    </script>
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
                <li class="first done">
                    <span><i>1</i><em>身份验证</em></span>
                </li>
                <li class="middle ">
                    <span><i>2</i><em>重设登录密码</em></span>
                </li>
                <li class="last ">
                    <span><i>3</i><em>完成</em></span>
                </li>
            </ol>
        </div>
    
<form action="Rp.do" method="post">
<input type="hidden" name="op" value="first">
    <div class="fill-data-box" id="phoneStep">
        <div class="fill-data">
            <div class="title">手机号码：</div>                         
            <div class="form-group w275">
                <input type="text" maxlength="11" id="phone" name="phone" value="" class="form-text" placeholder="输入您常用的手机号码"/>
            </div>
            <div class="form-error-message"></div>
            <div class="captcha-wrap">
                <div class="captcha-box" id="captchaBox" style="margin-left: -300px">
                    <div class="captcha-item">
                        <div class="form-group captcha clearfix">
                           
                             <input type="text" id="imgCaptcha" disabled="disabled" maxlength="4" class="form-text" placeholder="输入验证码"/>
                            <span style="float:left"><img id="phoneCaptchaImg" _src="/captcha/" src="images/yzm.gif" alt="验证码" width="100"/></span>
                       
                        </div>
                        <div class="form-error-message"></div>
                    </div>
                    <div class="captcha-item">
                        <div class="form-group captcha clearfix">
                             <input type="text" id="captcha2" name="captcha2"  class="form-text" placeholder="短信验证码"/>
                             <input type="button" id="getCaptcha"  value="获取短信验证码"/>
                        </div>
                        <div class="form-error-message"></div>
                    </div>
                </div>
            </div>
            <div>
                <button class="form-btn"  type="submit">下一步</button>
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
                <a href="about.html" target="_blank">关于我们</a>
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
 <script type="text/javascript">
$(function(){
	
	$("#getCaptcha").click(function(){
		

		location.href="Rp.do?op=yzm&account="+document.getElementById("phone").value;
	})
	
	
	
	
})

</script> 

</body>
</html>