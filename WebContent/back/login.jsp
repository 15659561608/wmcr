<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>点菜宝贝，后台管理系统</title>
    <meta name="keywords" content="点菜宝贝，后台管理系统">
    <meta name="description" content="点菜宝贝，后台管理系统">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/frame.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/merchant.css">
    <link rel="stylesheet" href="css/addClass.css">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <a href="login.jsp"><img class="login-logo" src="img/logo.png"></a>
    <div class="login-title default"></div>
   <div class="login-name">管理员登录</div>
   <form action="Lg.do" method="post">
   <input type="hidden" name="op" value="loginhou">
    <div class="login-form-area">
         
        <div class="login-input">
   
            <label for="">账&nbsp;&nbsp;&nbsp;号：</label>
            <input class="ob-form login-form-user" type="text" name="adAccount">
        </div>
        <div class="login-input">
            <label for="">密&nbsp;&nbsp;&nbsp;码：</label>
            <input class="ob-form login-form-user" type="password" name="adPwd">
        </div>
        
        <button class="btn order-food-menu-btn login-btn " type="submit">登录</button>
     

    </div>
    </form>
    <div class="login-footer clearfix">Copyright © 2018 点菜宝贝 Diancai Baobei.com  All Rights Reserved. <img class="ybs" style="cursor: pointer;" src="img/login_jj.jpg" width="57" height="42" alt=""></div>
</body>
<script src="plugin/jquery/jquery.js"></script>
<script>
    $('.login-register').click(function () {
        var _this = $(this);
        $(this).addClass('active');
        setTimeout(function () {
            _this.removeClass('active');
        },100);
    });
   /* $(".login-btn").click(function(event) {
       
        location.href="index.html";
    }); */
     $(".ybs").click(function(event) {
        /* Act on the event */
        location.href="login.html";
    });
</script>
</html>
