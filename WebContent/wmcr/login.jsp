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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/wmcr/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wmcr/css/common.css"/>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wmcr/css/login.css"/>
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
               	 <h1 class="fl">
                        <a class="logo base-logo" href="index.html">外卖超人</a>
                    </h1>
                </section>
                
            
        </div>
    </header>
    
    <section class="main" style="height:750px;">
        <div class="common-width">
            
    <div class="main-inner">
        
            <div class="log-box" id="loginPageBox">
                <form class="login-form" action="${pageContext.request.contextPath}/uls.do?op=login"  method="post" novalidate name="loginForm" ng-controller="loginCtrl" onsubmit = " return checkform2()">
        <div class="form-group">
            <label for="">手机号码</label>
            <div>
                <input  id  = "account"  name = "account" maxlength="11" type="text" class="form-text" placeholder="输入您的手机号码"/><div id="accountStatus" style="color:#0c0"></div></label>
                <span class="vaildate-error" ng-if="user.usernameMessage">
                    <span ng-bind="user.usernameMessage"></span>
                </span>
             <!--    <span class="vaildate-error" ng-if="user.isLogined">
                    该手机号码尚未注册！<a href="javascript:;" ng-click="locationRegister()" class="link">立即注册</a>
                </span> -->
            </div>
        </div>
        <div class="form-group mb10">
            <label for="">登录密码</label>
            <div>
                <input type="password" id = "pwd" name = "pwd" maxlength="10" type="password" class="form-text" onpaste="return false" placeholder="请输入登录密码"/><div id="pwdStatus" style="color:#0c0"></div></label>
                <span class="vaildate-error" ng-if="user.passwordMessage">
                    <span ng-bind="user.passwordMessage"></span>
                </span>
            </div>
        </div>
        <div class="clearfix mb10">
            <input id="lRemember" type="checkbox" value="true"> 记住我
                   
                    <span class="fr fs12"><a class="yo" target="_black" href="pwd_forget.jsp">忘记密码</a></span>
        </div>
         <button class="form-btn" id="loginPageBtn">登录</button>
        <div class="clearfix">
            <span class="fr fs12">
                没有账号?
                <a href="javascript:void(0)" ng-click="locationRegister()" class="link">立即注册</a>
            </span>
        </div>
    </form>
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
    
    
    <script type="text/javascript" src="${pageContext.request.contextPath }/wmcr/js/jquery-1.7.2.min.js"></script>
    
    <script>
    var userVaildate = '/ajax/user_login/';
    </script>
<script type="text/javascript" src="${pageContext.request.contextPath }/wmcr/js/loginVaildate.js"></script>

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

<!-- 登陆AJAX异步传输 -->
   <script language="javascript">
   $(document).ready(function(){
	   $("#account").blur(function(event) {
	     $.ajax({
	       type:"post",
	       url:"/wmcr/uls.do?op=zh&account="+$("#account").val(),
	       dataTypes:"text",
	       success:function(msg){
	         $("#accountStatus").html(msg);
	       }
	     });
	   });
	  
	   $("#pwd").blur(function(event) {
	     $.ajax({
	       type:"post",
	       url:"/wmcr/uls.do?op=chaxun",
	       dataTypes:"text",
	       data:"pwd="+$("#pwd").val(),
	       success:function(msg){
	         $("#pwdStatus").html(msg);
	       }
	     });
	   });
	 }); 
  </script>
  <script type="text/javascript" src = "${pageContext.request.contextPath}/wmcr/js/check.js"></script>
</body>
</html>