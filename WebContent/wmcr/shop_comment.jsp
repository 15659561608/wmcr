<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<meta name="description"
	content=" 上海[半价菜][送可乐]樱花日本料理评论 - 怎么样，宋园路地铁站附近餐厅， [半价菜][送可乐]樱花日本料理 外卖，外送电话，叫外卖上外卖超人。" />
<meta name="viewport" content="user-scalable=no">

<meta name="google-site-verification"
	content="BstJA3X9z6f9HcvoN9AZTwaKo_9Abj_j7dVBPfy640s" />
<meta name="baidu-site-verification" content="IYCrtVH0i1" />
<meta property="wb:webmaster" content="239d3d1dbdde1b2c" />
<link rel="icon" type="image/png" href="${pageContext.request.contextPath }/wmcr/images/favicon.ico" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/back/bootstrap/css/bootstrap.min.css">
<script type="text/javascript">
	(function(document, screen) {
		if (screen.width < 760) {
			document.location.href = "/mobile/";
		}
	}(document, screen));
</script>

<link rel="stylesheet" href="${pageContext.request.contextPath }/wmcr/css/common.css?v=2015-5-20" />

<link rel="stylesheet" href="${pageContext.request.contextPath }/wmcr/css/menuPage.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/wmcr/css/star.css" />
<!--[if lte IE 7]><script>window.onload=function(){location.href="/ie6warning/"}</script><![endif]-->
<!--[if lt IE 9]>
    <script src="js/respond.js"></script>
    <script>
        var e = "abbr, article, aside, audio, canvas, datalist, details, dialog, eventsource, figure, footer, header, hgroup, mark, menu, meter, nav, output, progress, section, time, video, dh-dialog, dh-checkbox".split(', ');
         var i= e.length;while (i--){document.createElement(e[i])}
    </script>
    <![endif]-->
<title>店铺评论</title>
</head>
<body class="day " ng-controller="bodyCtrl" day-or-night>
	<section class="common-back" id="wrapBackground"> 
	<header id="header">
			<div class="common-width clearfix">
				<h1 class="fl">
					<a class="logo base-logo"
						href="${pageContext.request.contextPath }/wmcr/index.jsp">外卖超人</a>
				</h1>

				<ul class="member" login-box>
					<li><a
						href="<c:choose><c:when test="${users !=null }">${pageContext.request.contextPath }/wmcr/mainPage.jsp</c:when><c:otherwise>${pageContext.request.contextPath }/wmcr/index.jsp</c:otherwise></c:choose>"
						class="index">首页</a></li>
					<li class="login-register"><c:choose><c:when test="${users !=null }"><a href="#"><li class="login-register">欢迎，${sessionScope.users.account} </a></li></c:when><c:otherwise><li class="login-register"><a href="${pageContext.request.contextPath }/wmcr/login.jsp" referer-url  class="login"  rel="nofollow">登录</a><span class="cg">/</span><a href="${pageContext.request.contextPath }/wmcr/register.jsp" referer-url  rel="nofollow" class="register">注册</a></li></c:otherwise></c:choose></li>
					<li><a
						href="${pageContext.request.contextPath }/wmcr/member_order.jsp"
						class="order-center" rel="nofollow">查看订单</a></li>
				</ul>

			</div>
		</header>		

	<div id="main-box">
		<!--二维码-->
		<div class="qrCode-frame" ng-hide="qrCodeStatus">
			<img src="${pageContext.request.contextPath }/wmcr/images/wx.png" alt="扫描二维码" /> <em
				ng-click="qrCodeStatus=true">X</em>
		</div>

		<div ng-controller="colorAction">
			<div class="dayColor_two"></div>
			<div class="dayColor_one"></div>
			<div class="dayColor_three"
				ng-class="{dayColor_threeActive:threeActive}"></div>
		</div>

		<section class="menupage-main common-width"> <header
			class="nav clearfix">
		<div class="fl clearfix nav-des">
			<img src="${pageContext.request.contextPath }${busiInfo.logo }"
				alt="${busiInfo.busiName }" class="fl" />
			<div class="fl nav-des-text">
				<h2 class="ellipsis" title="${busiInfo.busiName }">${busiInfo.busiName }</h2>
				<div class="clearfix">
					<div class="fl nav-review">
						<div style="width: 65.00px;"></div>
					</div>
					<p class="nav-review-x">5星</p>
				</div>
			</div>
		</div>
		<div class="fr clearfix nav-right">

			<div class="fl nav-right-blast line-right">
				<p>
					${busiInfo.starPrice }<span style="font-size: 12px; color: #999;">元</span>
				</p>
				<span>起送</span>
			</div>

			<div class="fl nav-right-blast">
				<p>
					${busiInfo.disFee }<span style="font-size: 12px; color: #999;">分钟</span>
				</p>
				<span>送餐时间</span>
			</div>
			<div class="fl nav-right-collect line-left">

				<div class="collect not-collect" title="收藏餐厅" data-rid="1592"></div>
				<div class="collect-success">收藏成功</div>
				<div id="review-text">未收藏</div>

			</div>
		</div>
		</header>

		<ul class="clearfix menu-nav-list" scroll-position-static="160">
			<li class="no-line active"><a
				href="${pageContext.request.contextPath }/wmcr/shop_comment.jsp">评论</a></li>


		</ul>
		<section class="main-box"> <section class="review-messages">
		<header class="review-header-box clearfix">
		全部评论(共${requestScope.total}条评论) </header> <article class="review-item">
		<form method="post"
			action="${pageContext.request.contextPath}/CommentServlet">
			<input type="hidden" name="op" value="addComment"> <input
				type="text" style="width: 800px; height: auto;" name="content"
				id="content" />
			<button type="submit" class="btn btn-warning">发布</button>
			<div class="wrapper">
				<input type="hidden" name="praise" id="praise" />
				<p id="result" name="result"></p>

				<ul id="star">
					<li>★</li>
					<li>★</li>
					<li>★</li>
					<li>★</li>
					<li>★</li>
				</ul>
				<div id="star_word">一般</div>
			</div>
		</form>

		</article> <c:if test="${requestScope.c==null}">
			<jsp:forward page="../CommentServlet?op=queryComment"></jsp:forward>
		</c:if> <c:forEach var="co" items="${requestScope.c.data}">

			<article class="review-item"> <span id="phone">用户:${co.custName}</span>
			<span id="time">发布时间:${co.comDate}</span> <span id="praise">${co.praise==5?"★★★★★":co.praise == 4?"★★★★":co.praise == 3?"★★★":co.praise ==2?"★★":"★"}</span>
			<div class="review-content" id="content">${co.content}</div>


			</article>
		</c:forEach> </section> </section> </section>

	</div>
	</section>

	<footer id="footer">
	<div class="footer-first gray">
		<div class="company-info clearfix fs14 gray">
			<a href="about.html" target="_blank" rel="nofollow">关于我们</a> <a
				href="help.html" target="_blank" rel="nofollow">帮助中心</a> <a
				href="jobs.html" target="_blank" rel="nofollow">人才招聘</a> <a
				href="contact.html" target="_blank" rel="nofollow">联系我们</a> <a
				href="javascript:;" user-feedback ng-click="userFeedback=true"
				class="last" rel="nofollow">意见反馈</a> <a href="javascript:;"
				class="last" target="_blank" style="display: none">上海餐厅导航</a>
		</div>
	</div>
	<div class="footer-last">
		<a target="_blank" class="foot-logo-1 base-logo" href="index.html"></a>
		<div class="tc fs14 light-gray mb10">©2018 waimaichaoren.com All
			Rights Reserved - 沪ICP备11019908号</div>
	</div>
	</footer>


	<dh-dialog class="disnone" height="500" feeedbackclass="userFeedback"
		type="user-feedback" header="意见反馈" show="userFeedback">
	<div ng-controller="feedbackCtrl">
		<form novalidate="true" name="feedbackForm" class="inline">
			<div class="form-group row mb10">
				<label class="col-3">联系方式：</label>
				<div class="col-8">
					<input type="text" maxlength="20" name="userContact" required
						ng-focus="userContactFocus()"
						ng-class="{error:feedback.phoneMessage}" placeholder="请输入您的手机号码"
						ng-model="feedback.userContact" />
				</div>
			</div>
			<div class="row mb10">
				<div class="clo-8 col-offset-3" ng-if="feedback.phoneMessage">
					<span class="vaildate-error">联系方式不能为空</span>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-3 vt">反馈信息：</label>
				<div class="col-8">
					<textarea name="feedbackMessage" placeholder="可以说说您对外卖超人的意见"
						ng-focus="feedbacFocus()" required
						ng-class="{error:feedback.feedbackMessageTip}"
						ng-model="feedback.feedbackMessage" maxlength="300" cols="25"
						rows="7"></textarea>
				</div>
			</div>
			<div class="row mb10">
				<div class="clo-8 col-offset-3" ng-if="feedback.feedbackMessageTip">
					<span class="vaildate-error">反馈信息不能为空</span>
				</div>
			</div>
			<div class="tc">
				<button class="btn normal-btn btn-success"
					ng-click="feedbackSubmit()">确认</button>
				<button class="btn normal-btn btn-cancel"
					ng-click="feedbackCancel()">取消</button>
			</div>
		</form>
	</div>
	<div class="common-dialog-footer">咨询加QQ群：337212031</div>
	</dh-dialog>


	<dh-dialog class="disnone" type='login' height="500" header="登录"
		show="loginShow">
	<form class="login-form" novalidate name="loginForm"
		ng-controller="loginCtrl">
		<div class="form-group">
			<label for="">手机号码</label>
			<div>
				<input type="text" ng-model="user.username"
					ng-class="{error:user.usernameMessage}"
					ng-focus="user.usernameMessage=''" maxlength="11"
					placeholder="请输入你的手机号码" /> <span class="vaildate-error"
					ng-if="user.usernameMessage"> <span
					ng-bind="user.usernameMessage"></span>
				</span> <span class="vaildate-error" ng-if="user.isLogined">
					该手机号码尚未注册！<a href="javascript:;" ng-click="locationRegister()"
					class="link">立即注册</a>
				</span>
			</div>
		</div>
		<div class="form-group mb10">
			<label for="">登录密码</label>
			<div>
				<input type="password" onpaste="return false"
					ng-model="user.password" ng-focus="user.passwordMessage=''"
					ng-class="{error:user.passwordMessage}" maxlength="10"
					placeholder="请输入登录密码" /> <span class="vaildate-error"
					ng-if="user.passwordMessage"> <span
					ng-bind="user.passwordMessage"></span>
				</span>
			</div>
		</div>
		<div ng-init="showCaptcha=0" ng-if="showCaptcha"
			class="form-group inline clearfix mb10">
			<div class="fl w50p">
				<input type="text" ng-model="user.captcha"
					ng-focus="user.captchaMessage=''"
					ng-class="{error:user.captchaMessage}" placeholder="请输入验证码">
				<span class="vaildate-error" ng-if="user.captchaMessage"> <span
					ng-bind="user.captchaMessage"></span>
				</span>
			</div>
			<label class="fr"> <dh-captcha change="captchaChange"
					src="/captcha/"></dh-captcha>
			</label>
		</div>
		<div class="clearfix mb10">
			<dh-checkbox model="user.rememberme" title="记住我" class="fl"></dh-checkbox>
			<a href="/account/password/reset_via_mobile/" target="_blank"
				class="fs12 fr link">忘记密码</a>
		</div>
		<button class="big-btn btn-green btn mb10" ng-click="loginVaildate()"
			ng-disabled="loginBtnDisabled" ng-bind="loginBtn"></button>
		<div class="clearfix">
			<span class="fr fs12"> 没有账号? <a href="javascript:void(0)"
				ng-click="locationRegister()" class="link">立即注册</a>
			</span>
		</div>
	</form>
	</dh-dialog>
	<dh-dialog class="disnone" type='register' height="500" header="注册"
		show="registerShow">
	<form ng-controller="registerCtrl" class="register-form"
		name="registerForm">
		<div class="form-group mb10">
			<label for="">手机号码</label>
			<div>
				<input type="text" ng-class="{error:user.usernameMessage}"
					maxlength="11" placeholder="请输入您的手机号码" ng-model="user.username" />
				<span class="vaildate-error" ng-if="user.usernameMessage"> <span
					ng-bind="user.usernameMessage"></span>
				</span> <span class="vaildate-error" ng-if="user.isRegistered">
					该手机号码已经注册！<a href="javascript:;" ng-click="locationLogin()"
					class="link">立即登录</a>
				</span>
			</div>
		</div>



		<div class="form-group captcha-wrap">
			<div class="clearfix captcha-box">
				<div class="fl form-group captcha-item">
					<div class="fl w50p">
						<input type="text" ng-class="{error:user.captchaMessage}"
							ng-focus="user.captchaMessage=''" placeholder="请输入验证码"
							ng-model="user.captcha" /> <span class="vaildate-error"
							ng-if="user.captchaMessage"> <span
							ng-bind="user.captchaMessage"></span>
						</span>
					</div>
					<button class="fs12 fr w40p btn btn-pink" ng-click="getCaptcha()"
						ng-disabled="captchaDisabled" ng-bind="captchaVal"></button>
				</div>
				<div class="fl form-group captcha-item">
					<div class="fl w50p">
						<input type="text" ng-model="user.imgCaptcha" maxlength="4"
							ng-disabled="imgCaptchaIsDisabled"
							ng-class="{error:user.imgCaptchaMessage}" placeholder="请输入验证码">
						<span class="vaildate-error" ng-if="user.imgCaptchaMessage">
							<span ng-bind="user.imgCaptchaMessage"></span>
						</span>
					</div>
					<label class="fr"> <dh-captcha
							style="width:119px;height:34px;" change="captchaImgChange"
							src="/captcha/"></dh-captcha>
					</label>
				</div>
			</div>
		</div>
		<div class="form-group mb10">
			<label for="">登录密码</label>
			<div>
				<input type="password" ng-class="{error:user.passwordMessage}"
					ng-focus="user.passwordMessage=''" maxlength="10"
					onpaste="return false" placeholder="输入登录密码 6-10个字符"
					ng-model="user.password" /> <span class="vaildate-error"
					ng-if="user.passwordMessage"> <span
					ng-bind="user.passwordMessage"></span>
				</span>
			</div>
		</div>
		<div class="form-group mb10">
			<div>
				<input type="password" ng-class="{error:user.password2Message}"
					ng-focus="user.password2Message=''" maxlength="10"
					onpaste="return false" placeholder="输入登录密码 6-10个字符"
					ng-model="user.password2" /> <span class="vaildate-error"
					ng-if="user.password2Message"> <span
					ng-bind="user.password2Message"></span>
				</span>
			</div>
		</div>
		<div class="clearfix mb10">
			<dh-checkbox model="user.remember" title="我同意外卖超人" class="fl"></dh-checkbox>
			<a href="/terms-and-conditions/" target="_blank" class="fs12 fl link">
				" 注册条款 "</a>
		</div>
		<button ng-disabled="!user.remember || registerBtnDisabled"
			ng-click="registerVaildate()" class="big-btn btn-green btn mb10"
			ng-bind="registerBtn"></button>
	</form>
	</dh-dialog>
	<script>
		var common_sms_code = '/ajax/common_sms_code/';
		var ajax_customer_user_register_start = '/ajax/customer_user_register_start/';
		var common_validate_sms_code = '/ajax/common_validate_sms_code/';
		var ajax_customer_user_register_register = '/ajax/customer_user_register_register/';
	</script>

	<dh-dialog class="disnone" type="alert" index="1001" header=""
		show="showErrorMsg">
	<div class="alert-box" ng-class="errorIcon">
		<p ng-bind="errorMsg"></p>
	</div>
	</dh-dialog>

	<ul class="site-fixed">
		<li class="scroll-top"><img src="images/scroll_top1.png" alt="" />
		</li>
		<li class="scorll-feekback" ng-click="userFeedback=true"><img
			src="images/scorll_feekback.png" alt="" />
			<div>意见反馈</div></li>
		<li class="scroll-wx"><img src="images/scroll_wx.png" alt="" />
			<div>
				<img src="images/wx.png" alt="" />
			</div></li>
	</ul>

	<script type="text/javascript" src="${pageContext.request.contextPath }/wmcr/js/angular.min.js"></script>
	<script src="${pageContext.request.contextPath }/wmcr/js/common.js"></script>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>

	<script src="${pageContext.request.contextPath }/wmcr/js/service.js"></script>

	<script>
		var feedbackUrl = '/ajax/feedback/';
		var app = angular.module("app", [ "dh.dialog", "dh.form", 'dh.service',
				'dh.other' ]);
	</script>
	<!--[if lt IE 9]><script src="js/fix.js"></script><![endif]-->


	<script>
		//字符替换
		String.prototype.changeQuery = function(name, value) {
			var reg = new RegExp("(^|)" + name + "=([^&]*)(|$)");
			var tmp = name + "=" + value;
			if (this.match(reg) != null) {
				return this.replace(eval(reg), tmp);
			} else {
				if (this.match("[\?]")) {
					return this + "&" + tmp;
				} else {
					return this + "?" + tmp;
				}
			}
		}
		//获取URL参数
		function getQueryStringRegExp(name) {
			var reg = new RegExp("(^|\\?|&)" + name + "=([^&]*)(\\s|&|$)", "i");
			if (reg.test(location.href))
				return unescape(RegExp.$2.replace(/\+/g, " "));
			return "";
		}
		function SetUrlParm(parm, value) {
			var URL = location.href;
			if (URL.indexOf('?') < 0) {
				URL += '?' + parm + '=' + value;
			} else {
				var dataParm = getQueryStringRegExp(parm);
				if (dataParm == '') {
					URL += '&' + parm + '=' + value;
				} else {
					URL = URL.changeQuery(parm, value);
				}
			}
			return URL;
		}
		app.directive("viewCheck", function() {
			return {
				restrict : 'C',
				link : function(scope, elem, attrs) {
					elem.on('click', function(e) {
						e = e || window.event;
						var elem = e.target;
						var url = window.location.href;
						if (getQueryStringRegExp("content") != "false"
								&& getQueryStringRegExp("content") != ""
								&& getQueryStringRegExp("content") != null) {
							url = url.changeQuery("content", "false");
							if (url.indexOf("page") > 0) {
								window.location.href = url.changeQuery("page",
										"1");
							} else {
								window.location.href = url;
							}
						} else {
							url = SetUrlParm("content", 'true');
							if (url.indexOf("page") > 0) {
								window.location.href = url.changeQuery("page",
										"1");
							} else {
								window.location.href = url;
							}
						}
						scope.$apply();
					})
				}
			}
		});
		app.controller("bodyCtrl", [
				"$scope",
				"cache",
				'$window',
				'$interval',
				"$http",
				function(scope, cache, window, $interval, $http) {
					if (getQueryStringRegExp("content") != "false"
							&& getQueryStringRegExp("content") != null
							&& getQueryStringRegExp("content") != "") {
						scope.model = true;
					}
					var reloadFunc = function() {
						window.location.reload()
					};
					loginObj.init(scope, $interval, reloadFunc, reloadFunc)
							.bind();
					scope.menuItenmenus = {}, scope.loadStatus = {},
							scope.loadError = {};
					scope.$on('collect-callback', function(e) {
						scope.errorIcon = e.targetScope.errorIcon;
						scope.errorMsg = e.targetScope.errorMsg;
						scope.showErrorMsg = true;
					})
				} ]);
	</script>
	<script>
		var favoriteUrl = "/ajax/restaurant/0/favorite/";
	</script>
	<script src="js/favorite.js"></script>


	<script>
		angular.bootstrap(document, [ "app" ]);
	</script>

	<!-- Baidu Analytics -->
	<script>
		window.onload = function() {

			var star = document.getElementById("star");
			var star_li = star.getElementsByTagName("li");
			var star_word = document.getElementById("star_word");
			var result = document.getElementById("result");
			var i = 0;
			var j = 0;
			var len = star_li.length;
			var word = [ '很差', '差', '一般', "好", "很好" ];
			var flag=false;
			for (i = 0; i < len; i++) {
				star_li[i].index = i;
				star_li[i].onmouseover = function() {
					if(!flag){
						star_word.style.display = "block";
						star_word.innerHTML = word[this.index];
						for (i = 0; i <= this.index; i++) {
							star_li[i].className = "act";
						}
					}
					
				}
				star_li[i].onmouseout = function() {
					if(!flag){
						star_word.style.display = "none";
						for (i = 0; i < len; i++) {
							star_li[i].className = "";
						}
					}
					
				}
				star_li[i].onclick = function() {
					flag=true;
					star_word.style.display = "block";
					for (j = 0; j < i; j++) {
						star_li[j].className = "act";
					}
					//result.innerHTML = (this.index + 1);
					//praise.innerHTML = (this.index + 1);
					$("#praise").val(this.index + 1);

				}
			}

		}
	</script>
	<!--  	
<script type="text/javascript">
			$(function (){
				
				$.get("${pageContext.request.contextPath}/CommentServlet?op=queryComment",
						function(data, status) {
							//	var arr = JSON.parse(data);

							
						$.each(data, function(index, e) {

							$("#content").html(e.content);
						});
								
							

						});
				
			});
		</script>
-->
</body>
</html>
