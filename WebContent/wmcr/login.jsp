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
    <title>登录</title>
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
                    <span class="page-name"> | 登录</span>
                </section>
                
            
        </div>
    </header>
    
    <section class="main">
        <div class="common-width">
            
    <div class="main-inner">
        
            <div class="log-box" id="loginPageBox">
                <div class="form-group w275">
                    <label for="lPhone">手机号码</label>
                    <span class="fs12 fr">没有注册 ？ <a href="register.jsp" class="yo">立即注册</a></span>
                    <input id="lPhone" maxlength="11" type="text" class="form-text" placeholder="输入您的手机号码"/></label>
                </div>
                <div class="form-error-message"></div>
                <div class="form-group w275">
                    <label  for="lPass" >登录密码</label>
                    <input id="lPass" maxlength="10" type="password" class="form-text" onpaste="return false" placeholder="请输入登录密码"/></label>
                </div>
                <div class="form-error-message"></div>
                
                    <div class="form-group captcha clearfix">
                
                    <input id="lCaptcha" type="text" class="form-text" placeholder="请输入验证码"/>
                    <span><img id="captchaImg" _src="/captcha/" src="/captcha/" alt="验证码"/></span>
                </div>
                <div class="form-error-message"></div>
<<<<<<< HEAD
                
                    <label class="fl fs12">
=======
                <div class="form-group checkbox clearfix">
                    
>>>>>>> branch 'master' of https://github.com/15659561608/wmcr.git
                        <input id="lRemember" type="checkbox" value="true"> 记住我
<<<<<<< HEAD
                    </label>
                    <span class="fr fs12"><a class="yo" target="_black" href="pwd_forget.jsp">忘记密码</a></span>
               
=======
                   
                    <span class="fr fs12"><a class="yo" target="_black" href="/account/password/reset_via_mobile/">忘记密码</a></span>
                </div>
>>>>>>> branch 'master' of https://github.com/15659561608/wmcr.git
                <div>
                    <button class="form-btn" id="loginPageBtn">登录</button>
                </div>
          
            </div>
        
    </div>

        </div>
    </section>
    <br>
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
              ©2018 waimaichaoren.com All Rights Reserved - 沪ICP备11019908号
            </div>
        </div>
    </footer>
    
    
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    
    <script>
    var userVaildate = '/ajax/user_login/';
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
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;
  m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-33138478-1', 'waimaichaoren.com');
  ga('send', 'pageview');
  ga('require', 'ecommerce', 'ecommerce.js');
</script>
<!-- End Google Analytics Code -->

</body>
</html>