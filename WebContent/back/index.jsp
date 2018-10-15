<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.etc.entity.Administor"%>
    <%
	Administor uu = null;
	if (session.getAttribute("administor") == null) {

		response.sendRedirect("login.jsp");
		return;
	} else {

		uu = (Administor) session.getAttribute("administor");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>点菜宝贝，后台管理系统</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/frame.css">
    <link rel="stylesheet" href="css/addClass.css">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <!-- common-head -->
    <div class="common-head clearfix">
        <a class="logo" href="index.jsp">
            <img src="img/logo.png" alt="">
        </a>
        
        <div class="right pull-right text-right" id="hovpad">
            <dl class="user-wrapper">
                <dt><span class="time">欢迎您</span>${sessionScope.administor.account}<img src="img/headjt.png" alt=""><img class="active" src="img/headjt-active.png" alt=""></dt>
                <dd>       
                        <a href="login.jsp">安全退出</a>
                </dd>
            </dl>
           
        </div>
    </div>
    <!-- common-head -->
        <!--侧栏-->
    <div class="side-bar">
        <div class="content">
            <dl>
                <dt style="border-top: none;">用户管理 <img class="b" src="img/jt-right-co.png" alt=""><img class="r" src="img/jt-bottom.png" alt=""></dt>
                <dd>
                    <a href="#view/userList.jsp">用户列表 </a>
                </dd>
            </dl>
            <dl>
                <dt >商户管理 <img class="b" src="img/jt-right-co.png" alt=""><img class="r" src="img/jt-bottom.png" alt=""></dt>
                <dd>
                    <a href="#view/shopList.jsp">商户列表 </a>
                </dd>
            </dl>
            
             <dl>
                <dt >配送员管理 <img class="b" src="img/jt-right-co.png" alt=""><img class="r" src="img/jt-bottom.png" alt=""></dt>
                <dd>
                    <a href="#view/distributor.jsp">配送员列表 </a>
                     <a href="#view/addDistributor.jsp">新增配送员 </a>
                </dd>
            </dl>
            
            <dl>
                <dt >订单管理 <img class="b" src="img/jt-right-co.png" alt=""><img class="r" src="img/jt-bottom.png" alt=""></dt>
                <dd>
                    <a href="#view/AllOrders.jsp">订单列表 </a>
                    <a href="#">统计分析 </a>
                </dd>
            </dl>
            <dl>
                <dt>评论管理 <img class="b" src="img/jt-right-co.png" alt=""><img class="r" src="img/jt-bottom.png" alt=""></dt>
                <dd>
                    <a href="#">评论详情 </a>
                   
                </dd>
            </dl>
            <dl>
                <dt>城市管理 <img class="b" src="img/jt-right-co.png" alt=""><img class="r" src="img/jt-bottom.png" alt=""></dt>
                <dd>
                    <a href="#">城市详情 </a>
                   
                </dd>
            </dl>
          
            
        </div>
    </div>
    <!--内容部分-->
    <div id="main" >
        <div   style="-webkit-overflow-scrolling:touch;overflow:auto;height: 100%;">
            <iframe class="scroll"  src="view/userList.jsp" id="ghrzFrame"  frameborder="no" border="0"></iframe>
        </div>
    </div>
</body>
<script src="js/jquery-1.11.3.js"></script>
        

<script>
//首次加载至url
var u = window.location.href.split('#')[1];
$('#main iframe').attr('src',u);
$('.side-bar dd a[href="#'+ $('#main iframe').attr('src') + '"]').addClass('active');


//侧栏菜单
$(function() {
    $('.side-bar dt').click(function() {
        var dd = $(this).siblings('dd');
        dd.slideToggle();
        $(this).find('.b').toggle()
        $(this).find('.r').toggle()
    });
    $('.side-bar dd a').click(function() {
        $('.side-bar dd a').removeClass('active');
        $(this).addClass('active');
        //页面显示控制
        var url = $(this).attr('href').substring(1);
        var f = $('#main iframe');
        f.attr('src', url);
    });
});

$('#hovpad dl').on('click', function(e) {
    var dd = $(this).find('dd');
    if (dd.css('display') === 'none') {
        dd.show();
        $(this).addClass('active');
    } else {
        dd.hide();
        $(this).removeClass('active');
    }
    e.stopPropagation();
});
$('#hovpad dl').hover(function(e) {
    var dd = $(this).find('dd');
    dd.show();
    $(this).addClass('active');
}, function(e) {
    var dd = $(this).find('dd');
    dd.hide();
    $(this).removeClass('active');
})
$('body').on('click', function() {
    $('#hovpad dl').removeClass('active');
})

    
</script>

</html>