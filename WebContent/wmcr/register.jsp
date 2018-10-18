<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta property="wb:webmaster" content="239d3d1dbdde1b2c" />
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
    <link rel="stylesheet" href="css/common.css"/>
    
    <link rel="stylesheet" href="css/login.css"/>
    <title>注册</title>
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
                    <span class="page-name"> | 注册</span>
                </section>
                
            
        </div>
    </header>
    
    <section class="main">
        <div class="common-width">
            
    <div class="main-inner">
        
    <div class="log-box" id="registerPageBox">
        <form ng-controller="registerCtrl" class="register-form" action="/wmcr/urs.do?op=register" method="post" acname="registerForm" id = "registerForm" onsubmit = " return checkform()">
        <div class="form-group mb10">
            <label for="">手机号码</label>
            <div>
                <input type="text"  id = "account1"  name = "account1" value=""  onblur="checkMobile()"  maxlength="11" placeholder="请输入您的手机号码" ng-model="user.username"/>
                <div id = "mobile_prompt" style="color:#F00"></div>
            </div>
        </div>
        <div class="form-group captcha-wrap">
            <div class="clearfix captcha-box">
                <div class="fl form-group captcha-item">
                    <div class="fl w50p">
                    </div>
                    <button class="fs12 fr w40p btn btn-pink" ng-click="getCaptcha()" ng-disabled="captchaDisabled" ng-bind="captchaVal"></button>
                </div>
                <div class="fl form-group captcha-item">
                   <div class="form-group captcha clearfix">
                             <input type="text" id="captcha2" name="captcha2"  value = ""  onblur="checkYzm ()" class="form-text" placeholder="短信验证码"/>
                             <div id = "yzm_prompt" style="color:#F00"></div>
                             <input type="button" id="getCaptcha11"  value="获取短信验证码" onclick="settime(this)"/>
                        </div>
                        <div class="form-error-message"></div>
                </div>
                	
            </div>
        </div>
        <div class="form-group mb10">
            <label for="">登录密码</label>
            <div><input type="password" id = "pwd1" name = "pwd1" value = ""  onblur="checkPwd()" ng-class="{error:user.passwordMessage}" ng-focus="user.passwordMessage=''"  maxlength="10" onpaste="return false" placeholder="密码由英文字母和数字组成的4-10位字符" ng-model="user.password" />
                <div id = "pwd_prompt" style="color:#F00"></div>
            </div>
        </div>
        <div class="form-group mb10">
            <div><input type="password"  id = "repwd" name = "repwd"  value = ""  onblur="checkRepwd()" ng-class="{error:user.password2Message}" ng-focus="user.password2Message=''" maxlength="10" onpaste="return false" placeholder="密码由英文字母和数字组成的4-10位字符" ng-model="user.password2"/>
                 <div id = "repwd_prompt" style="color:#F00"></div>
                <span class="vaildate-error" ng-if="user.password2Message">
                    <span ng-bind="user.password2Message"></span>
                </span>
            </div>
        </div>
        <div class="clearfix mb10">
            <dh-checkbox model="user.remember" title="我同意外卖超人" class="fl"></dh-checkbox>
            <a href="/terms-and-conditions/" target="_blank" class="fs12 fl link"> " 注册条款 "</a>
        </div>
        <button ng-disabled="!user.remember || registerBtnDisabled" ng-click=""  type = "submit" class="big-btn btn-green btn mb10" ng-bind="registerBtn">确认注册</button>
    </form>
        
    </div>

    </div>

        </div>
    </section>
    <footer id="footer">
        <div class="footer-first gray">
            <div class="company-info clearfix fs14 gray">
                <a href="/about_us/" target="_blank"  rel="nofollow">关于我们</a>
                <a href="/help/" target="_blank"  rel="nofollow">帮助中心</a>
                <a href="/terms-and-conditions/" target="_blank"  rel="nofollow">法律声明</a>
                <a href="/jobs/" target="_blank"  rel="nofollow">人才招聘</a>
                <a href="/contact/" class="last" target="_blank"  rel="nofollow">联系我们</a>
                <a href="/restaurant/list/shanghai/1/" class="last" target="_blank" style="display:none">上海餐厅导航</a>
            </div>
        </div>
        <div class="footer-last">
            <a target="_blank" class="foot-logo-1 base-logo" href="index.html"></a>
            <div class="tc fs14 light-gray mb10">
              ©2014 waimaichaoren.com All Rights Reserved - 沪ICP备11019908号
            </div>
        </div>
    </footer>
    
    
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    
    <script>
        // use new sms code url
        var ajax_customer_user_register_start = '/ajax/customer_user_register_start/';
        var common_sms_code = '/ajax/common_sms_code/';
        var common_validate_sms_code = '/ajax/common_validate_sms_code/';
        var ajax_customer_user_register_register = '/ajax/customer_user_register_register/';
    </script>
<script type="text/javascript" src="js/loginVaildate.js"></script>

    <!-- Baidu Analytics -->

<!-- End Baidu Tracking Code -->

<!-- Baidu Remarketing code -->
<script type="text/javascript">
<!--
(function (d) {
window.bd_cpro_rtid="rHDzrHT";
var s = d.createElement("script");s.type = "text/javascript";s.async = true;s.src = location.protocol + "//cpro.baidu.com/cpro/ui/rt.js";
var s0 = d.getElementsByTagName("script")[0];s0.parentNode.insertBefore(s, s0);
})(document);
//-->
</script>
<!-- End Baidu Remarketing code -->

<!-- Google Analytics Code -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-33138478-1', 'waimaichaoren.com');
  ga('send', 'pageview');
  ga('require', 'ecommerce', 'ecommerce.js');
</script>
<!-- End Google Analytics Code -->
<script type="text/javascript" src = "${pageContext.request.contextPath}/wmcr/js/check.js"></script>
  </script>
<!-- 验证码倒计时 ，AJAX请求验证码-->  
<script type="text/javascript"> 
var countdown=60; 
function settime(obj) { 
    if (countdown == 0) { 
        obj.removeAttribute("disabled");    
        obj.value="免费获取验证码"; 
        countdown = 60; 
        return;
    } else { 
        obj.setAttribute("disabled", true); 
        obj.value="重新发送(" + countdown + ")"; 
        countdown--; 
    } 
setTimeout(function() { 
    settime(obj) }
    ,1000) 
}

$(function () {
	$("#getCaptcha11").click(function() {
		//console.log($("#captcha2").val());
		$.get("/wmcr/urs.do", "op=yzm&account1=" + $("#account1").val(), function(data, status) {
		
			$("#account1").text(data);
		});

		/* location.href="Rp.do?op=yzm&account="+document.getElementById("phone").value;  */
	});

})
</script>

</body>
</html>