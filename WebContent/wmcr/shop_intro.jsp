<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--/*技术支持，小庄602842076     验证：商城技术支持*/
/*技术支持，小庄602842076    验证：商城技术支持*/
/*技术支持，小庄602842076    验证：商城技术支持*/
/*技术支持，小庄602842076    验证：商城技术支持*/
/*技术支持，小庄602842076    验证：商城技术支持*/
/*https://shop116998991.taobao.com/*/
/*https://shop116998991.taobao.com/*/
/*https://shop116998991.taobao.com/*/-->

<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <meta name="description" content=" 上海[半价菜][送可乐]樱花日本料理 简介，最新活动，宋园路地铁站附近餐厅， [半价菜][送可乐]樱花日本料理 外卖，外送电话，叫外卖上外卖超人。" />
    <meta name="viewport" content="user-scalable=no">
    
    <meta name="google-site-verification" content="BstJA3X9z6f9HcvoN9AZTwaKo_9Abj_j7dVBPfy640s" />
    <meta name="baidu-site-verification" content="IYCrtVH0i1" />
    <meta property="wb:webmaster" content="239d3d1dbdde1b2c" />
    <link rel="icon" type="image/png" href="images/favicon.ico"/>
    
    <script type="text/javascript">
        
        (function(document, screen) {if (screen.width < 760) {document.location.href="/mobile/";}}(document, screen));
    </script>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wmcr/css/common.css?v=2015-5-20"/>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wmcr/css/menuPage.css"/>

    <!--[if lte IE 7]><script>window.onload=function(){location.href="/ie6warning/"}</script><![endif]-->
    <!--[if lt IE 9]>
    <script src="js/respond.js"></script>
    <script>
        var e = "abbr, article, aside, audio, canvas, datalist, details, dialog, eventsource, figure, footer, header, hgroup, mark, menu, meter, nav, output, progress, section, time, video, dh-dialog, dh-checkbox".split(', ');
         var i= e.length;while (i--){document.createElement(e[i])}
    </script>
    <![endif]-->
    <title>店铺简介</title>
</head>
<body class="day " ng-controller="bodyCtrl"  day-or-night>
    <section class="common-back" id="wrapBackground">
        
            <header id="header">
                <div class="common-width clearfix">
                    <h1 class="fl">
                        <a class="logo base-logo" href="index.html">外卖超人</a>
                    </h1>
                    
                        <ul class="member" login-box>
                            <li><a href="index.html" class="index">首页</a></li>
                            <li class="login-register"><a href="login.html" referer-url  class="login"  rel="nofollow">登录</a><span class="cg">/</span><a href="register.html" referer-url  rel="nofollow" class="register">注册</a></li>
                            <li><a href="member_order.html" class="order-center"  rel="nofollow">查看订单</a></li>
                            <li class=""><a href="#"  rel="nofollow">氪星礼品站</a></li>
                            <li class="phone-client "><a href="#"  rel="nofollow" target="_blank"><span>手机客户端</span></a></li>
                        </ul>
                    
                </div>
            </header>
        
        <div id="main-box">
             <!--二维码-->
            <div class="qrCode-frame" ng-hide="qrCodeStatus">
                <img src="images/wx.png" alt="扫描二维码" />
                <em ng-click="qrCodeStatus=true">X</em>
            </div>
        
            <div ng-controller="colorAction">
                <div class="dayColor_two"></div>
                <div class="dayColor_one"></div>
                <div class="dayColor_three" ng-class="{dayColor_threeActive:threeActive}"></div>
            </div>
        
            
	<section class="menupage-main common-width">
        
<header class="nav clearfix">
    <div class="fl clearfix nav-des">
        <img src="${pageContext.request.contextPath }${busiInfo.logo }" alt="[半价菜][送可乐]樱花日本料理" class="fl" />
        <div class="fl nav-des-text">
            <h2 class="ellipsis" title="${busiInfo.busiName }">${busiInfo.busiName }</h2>
            <div class="clearfix">
                <div class="fl nav-review">
                    <div style="width:65.00px;"></div>
                </div>
                <p class="nav-review-x">5星</p>
            </div>
        </div>
    </div>
    <div class="fr clearfix nav-right">
        
        <div class="fl nav-right-blast line-right">
            <p>${busiInfo.starPrice }<span style="font-size:12px;color:#999;">元</span></p>
            <span>起送</span>
        </div>
        
        <div class="fl nav-right-blast">
            <p>${busiInfo.disFee }<span style="font-size:12px;color:#999;">分钟</span></p>
            <span>配送费</span>
        </div>
        <div class="fl nav-right-collect line-left">
            
                <div class="collect not-collect" title="收藏餐厅" data-rid="1592"></div>
                <div class="collect-success">收藏成功</div>
                <div id="review-text">未收藏</div>
            
        </div>
    </div>
</header>

<ul class="clearfix menu-nav-list" scroll-position-static="160">
    <li class="no-line active"><a href="${pageContext.request.contextPath }/wmcr/shop_intro.jsp"">餐厅介绍</a></li>
    
</ul>

		<section class="main-box">
			<div class="restaurant-info clearfix">
				<!--<div class="restaurant-logo fl">
					<img src="" alt="[半价菜][送可乐]樱花日本料理" >
                    
				</div>-->
				<div class="restaurant-status fl">
                    
                        <p class="hours"><label>营业时间 ：</label>[09:00-22:30]</p>
                    
                    
                        <p><label>餐厅电话 ：</label>${busiInfo.phone }</p>
                    
					<p><label>餐厅地址 ：</label>${busiInfo.address }</p>
					
				</div>
				<div style="width: 298px;height: 244px;" id="iCenter"  class="restaurant-map fr"></div>
			</div>
			<article class="collapse">
				<header>
					<h3>餐厅介绍</h3>
				</header>
				<section class="description fs12 lh15">
                    
                  ${busiInfo.des }
                    
                </section>
			</article>
            
			<article class="collapse restaurant-photo">
				<header>
					<h3>餐厅相册</h3>
				</header>
				<section class="pd12-26 clearfix photo" id="photoBox">
                    
                        
                            <img src="http://dhccredentialphoto.dhero.cn/FkFcvNcOSl0lIUtDKuw_94oZOlA4" class="fl">
                        
                    
				</section>
                
			</article>
            
            <!--<article class="collapse restaurant-coupon">
                <header>
                    <h3>优惠券</h3>
                </header>
                <section class="pd12-26 clearfix coupon">
                    <div class="coupon-item">
                        <div>
                            <div>
                                <dl>
                                    <dt>100元代金券</dt>
                                    <dd>100元可选购任意菜品</dd>
                                    <dd>(2014.03.15-2014.04.28)</dd>
                                </dl>
                            </div>
                        </div>
                        <div class="get fs12"><a href="#">立即领取 ></a></div>
                    </div>
                    <div class="coupon-item orange">
                        <div>
                            <div>
                                <dl>
                                    <dt>100元代金券</dt>
                                    <dd>100元可选购任意菜品</dd>
                                    <dd>(2014.03.15-2014.04.28)</dd>
                                </dl>
                            </div>
                        </div>
                        <div class="get fs12"><a href="#">立即领取 ></a></div>
                    </div>
                    <div class="coupon-item green">
                        <div>
                            <div>
                                <dl>
                                    <dt>100元代金券</dt>
                                    <dd>100元可选购任意菜品</dd>
                                    <dd>(2014.03.15-2014.04.28)</dd>
                                </dl>
                            </div>
                        </div>
                        <div class="get fs12"><a href="#">立即领取 ></a></div>
                    </div>
                </section>-->
			</article>
		</section>
	</section>
        </section>
    </section>

        </div>
    </section>
    
        <footer id="footer">
        <div class="footer-first gray">
            <div class="company-info clearfix fs14 gray">
                <a href="about.html" target="_blank"  rel="nofollow">关于我们</a>
                <a href="help.html" target="_blank"  rel="nofollow">帮助中心</a>
                <a href="javascript:;" target="_blank"  rel="nofollow">法律声明</a>
                <a href="jobs.html" target="_blank"  rel="nofollow">人才招聘</a>
                <a href="contact.html" target="_blank"  rel="nofollow">联系我们</a>
                <a href="javascript:;" user-feedback ng-click="userFeedback=true" class="last" rel="nofollow">意见反馈</a>
                <a href="javascript:;" class="last" target="_blank" style="display:none">上海餐厅导航</a>
            </div>
        </div>
        <div class="footer-last">
            <a target="_blank" class="foot-logo-1 base-logo" href="index.html"></a>
            <div class="tc fs14 light-gray mb10">
              ©2014 waimaichaoren.com All Rights Reserved - 沪ICP备11019908号
            </div>
        </div>
    </footer>
    
    
    <dh-dialog class="disnone" height="500" feeedbackclass="userFeedback" type="user-feedback" header="意见反馈" show="userFeedback">
        <div ng-controller="feedbackCtrl">
            <form novalidate="true" name="feedbackForm" class="inline">
                <div class="form-group row mb10">
                    <label class="col-3">联系方式：</label>
                    <div class="col-8">
                        <input type="text" maxlength="20" name="userContact" required ng-focus="userContactFocus()" ng-class="{error:feedback.phoneMessage}" placeholder="请输入您的手机号码" ng-model="feedback.userContact"/>
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
                        <textarea name="feedbackMessage"  placeholder="可以说说您对外卖超人的意见" ng-focus="feedbacFocus()" required ng-class="{error:feedback.feedbackMessageTip}" ng-model="feedback.feedbackMessage" maxlength="300" cols="25" rows="7"></textarea>
                    </div>
                </div>
                <div class="row mb10">
                    <div class="clo-8 col-offset-3" ng-if="feedback.feedbackMessageTip">
                        <span class="vaildate-error">反馈信息不能为空</span>
                    </div>
                </div>
                <div class="tc">
                    <button class="btn normal-btn btn-success" ng-click="feedbackSubmit()">确认</button>
                    <button class="btn normal-btn btn-cancel" ng-click="feedbackCancel()">取消</button>
                </div>
            </form>
        </div>
        <div class="common-dialog-footer">
            咨询加QQ群：337212031
        </div>
    </dh-dialog>
    
    
<dh-dialog class="disnone" type='login' height="500" header="登录" show="loginShow" >
    <form class="login-form" novalidate name="loginForm" ng-controller="loginCtrl">
        <div class="form-group">
            <label for="">手机号码</label>
            <div>
                <input type="text" ng-model="user.username" ng-class="{error:user.usernameMessage}" ng-focus="user.usernameMessage=''" maxlength="11" placeholder="请输入你的手机号码" />
                <span class="vaildate-error" ng-if="user.usernameMessage">
                    <span ng-bind="user.usernameMessage"></span>
                </span>
                <span class="vaildate-error" ng-if="user.isLogined">
                    该手机号码尚未注册！<a href="javascript:;" ng-click="locationRegister()" class="link">立即注册</a>
                </span>
            </div>
        </div>
        <div class="form-group mb10">
            <label for="">登录密码</label>
            <div>
                <input type="password" onpaste="return false" ng-model="user.password" ng-focus="user.passwordMessage=''"  ng-class="{error:user.passwordMessage}" maxlength="10" placeholder="请输入登录密码" />
                <span class="vaildate-error" ng-if="user.passwordMessage">
                    <span ng-bind="user.passwordMessage"></span>
                </span>
            </div>
        </div>
        <div ng-init="showCaptcha=0" ng-if="showCaptcha" class="form-group inline clearfix mb10">
            <div class="fl w50p">
                <input type="text" ng-model="user.captcha" ng-focus="user.captchaMessage=''"  ng-class="{error:user.captchaMessage}" placeholder="请输入验证码">
                <span class="vaildate-error" ng-if="user.captchaMessage">
                    <span ng-bind="user.captchaMessage"></span>
                </span>
            </div>
            <label class="fr">
                <dh-captcha change="captchaChange" src="/captcha/"></dh-captcha>
            </label>
        </div>
        <div class="clearfix mb10">
            <dh-checkbox model="user.rememberme" title="记住我" class="fl"></dh-checkbox>
            <a href="/account/password/reset_via_mobile/" target="_blank" class="fs12 fr link">忘记密码</a>
        </div>
        <button class="big-btn btn-green btn mb10" ng-click="loginVaildate()" ng-disabled="loginBtnDisabled" ng-bind="loginBtn"></button>
        <div class="clearfix">
            <span class="fr fs12">
                没有账号?
                <a href="javascript:void(0)" ng-click="locationRegister()" class="link">立即注册</a>
            </span>
        </div>
    </form>
</dh-dialog>
<dh-dialog class="disnone" type='register' height="500" header="注册" show="registerShow" >
    <form ng-controller="registerCtrl" class="register-form" name="registerForm">
        <div class="form-group mb10">
            <label for="">手机号码</label>
            <div>
                <input type="text" ng-class="{error:user.usernameMessage}" maxlength="11" placeholder="请输入您的手机号码" ng-model="user.username"/>
                <span class="vaildate-error" ng-if="user.usernameMessage">
                    <span ng-bind="user.usernameMessage"></span>
                </span>
                <span class="vaildate-error" ng-if="user.isRegistered">
                    该手机号码已经注册！<a href="javascript:;" ng-click="locationLogin()" class="link">立即登录</a>
                </span>
            </div>
        </div>



        <div class="form-group captcha-wrap">
            <div class="clearfix captcha-box">
                <div class="fl form-group captcha-item">
                    <div class="fl w50p">
                        <input type="text" ng-class="{error:user.captchaMessage}" ng-focus="user.captchaMessage=''" placeholder="请输入验证码" ng-model="user.captcha" />
                        <span class="vaildate-error" ng-if="user.captchaMessage">
                            <span ng-bind="user.captchaMessage"></span>
                        </span>
                    </div>
                    <button class="fs12 fr w40p btn btn-pink" ng-click="getCaptcha()" ng-disabled="captchaDisabled" ng-bind="captchaVal"></button>
                </div>
                <div class="fl form-group captcha-item">
                    <div class="fl w50p">
                        <input type="text" ng-model="user.imgCaptcha" maxlength="4" ng-disabled="imgCaptchaIsDisabled" ng-class="{error:user.imgCaptchaMessage}" placeholder="请输入验证码">
                        <span class="vaildate-error" ng-if="user.imgCaptchaMessage">
                            <span ng-bind="user.imgCaptchaMessage"></span>
                        </span>
                    </div>
                    <label class="fr">
                        <dh-captcha style="width:119px;height:34px;" change="captchaImgChange" src="/captcha/"></dh-captcha>
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group mb10">
            <label for="">登录密码</label>
            <div><input type="password" ng-class="{error:user.passwordMessage}" ng-focus="user.passwordMessage=''"  maxlength="10" onpaste="return false" placeholder="输入登录密码 6-10个字符" ng-model="user.password" />
                <span class="vaildate-error" ng-if="user.passwordMessage">
                    <span ng-bind="user.passwordMessage"></span>
                </span>
            </div>
        </div>
        <div class="form-group mb10">
            <div><input type="password" ng-class="{error:user.password2Message}" ng-focus="user.password2Message=''" maxlength="10" onpaste="return false" placeholder="输入登录密码 6-10个字符" ng-model="user.password2"/>
                <span class="vaildate-error" ng-if="user.password2Message">
                    <span ng-bind="user.password2Message"></span>
                </span>
            </div>
        </div>
        <div class="clearfix mb10">
            <dh-checkbox model="user.remember" title="我同意外卖超人" class="fl"></dh-checkbox>
            <a href="/terms-and-conditions/" target="_blank" class="fs12 fl link"> " 注册条款 "</a>
        </div>
        <button ng-disabled="!user.remember || registerBtnDisabled" ng-click="registerVaildate()" class="big-btn btn-green btn mb10" ng-bind="registerBtn"></button>
    </form>
</dh-dialog>
<script>
    var common_sms_code = '/ajax/common_sms_code/';
    var ajax_customer_user_register_start = '/ajax/customer_user_register_start/';
    var common_validate_sms_code = '/ajax/common_validate_sms_code/';
    var ajax_customer_user_register_register = '/ajax/customer_user_register_register/';
</script>

    <dh-dialog class="disnone" type="alert" index="1001" header="" show="showErrorMsg">
        <div class="alert-box" ng-class="errorIcon">
            <p ng-bind="errorMsg"></p>
        </div>
    </dh-dialog>

     <ul class="site-fixed">
        <li class="scroll-top"><img src="images/scroll_top1.png" alt=""/> </li>
        <li class="scorll-feekback" ng-click="userFeedback=true">
            <img src="images/scorll_feekback.png" alt=""/>
            <div>意见反馈</div>
        </li>
        <li class="scroll-wx">
            <img src="${pageContext.request.contextPath }/wmcr/images/scroll_wx.png" alt=""/>
             <div><img src="${pageContext.request.contextPath }/wmcr/images/wx.png" alt=""/></div>
        </li>
    </ul>
    
    <script type="text/javascript" src="${pageContext.request.contextPath }/wmcr/js/angular.min.js"></script>
    <script src="${pageContext.request.contextPath }/wmcr/js/common.js"></script>
    
     
    <script src="${pageContext.request.contextPath }/wmcr/js/service.js"></script>
    
    <script>var feedbackUrl = '/ajax/feedback/';var app = angular.module("app", ["dh.dialog", "dh.form", 'dh.service', 'dh.other']);</script>
    <!--[if lt IE 9]><script src="js/fix.js"></script><![endif]-->
    
    
    <script>
        var favoriteUrl = "/ajax/restaurant/0/favorite/";
        //餐厅相册url
        var photoUrls = [];
        
            
        

        app.controller("bodyCtrl",["$scope","cache",'$window','$interval', "$http" , function(scope,cache,window,$interval,$http){
            var reloadFunc = function(){window.location.reload()};
            loginObj.init(scope,$interval,reloadFunc,reloadFunc).bind();
            scope.$on('collect-callback',function(e){
                scope.errorIcon = e.targetScope.errorIcon;
                scope.errorMsg = e.targetScope.errorMsg;
                scope.showErrorMsg = true;
            })
        }])
        .directive('showMore', function() {
            return {
                restrict: 'C',
                link: function(scope, elem, attrs) {
                    elem.on('click', function() {
                        var img = '', html = '';
                        for (var i = 0, len = photoUrls.length; i < len; i++) {
                            img = photoUrls[i];
                            html += '<img src="' + img + '" class="fl">';
                        }
                        angular.element(document.getElementById('photoBox')).append(html);
                        elem.remove();
                    });
                }
            }
        })
        var draw_polygon = function (mapObj, das){
            var create_polygon = function (mapObj, polygonArray) {
                polygon = new AMap.Polygon({
                    path:polygonArray,         //设置多边形边界路径
                    strokeColor:"#a4bddf",     //线颜色
                    strokeWeight:1,            //线宽
                    fillColor: "#9ed7ff",      //填充色
                    fillOpacity: 0.35          //填充透明度
                });
                polygon.setMap(mapObj);
            };

            if (das.type == 'MultiPolygon') {
                for (var i=0; i < das.coordinates.length; i++) {
                    var polygonArr=[];
                    var polygon_coords = das.coordinates[i][0];
                    for (var j= 0; j < polygon_coords.length; j++ ) {
                        polygonArr.push(new AMap.LngLat(polygon_coords[j][0], polygon_coords[j][1]));
                    }
                    create_polygon(mapObj, polygonArr);
                }
            } else if (das.type == 'Polygon') {
                var polygonArr=[];
                for (var i=0; i < das.coordinates[0].length; i++) {
                    var polygon = das.coordinates[0][i];
                    polygonArr.push(new AMap.LngLat(polygon[0], polygon[1]));
                }
                create_polygon(mapObj, polygonArr);
            }
        }

        function map_init(){
            var r_pos = new AMap.LngLat(121.41033,31.196802);
            var amap = new AMap.Map('iCenter', {center: r_pos,level: 15,zooms: [9, 17]});
            var das = {'type': 'MultiPolygon', 'coordinates': [[[[121.39081478118896, 31.205790871306046], [121.39536380767822, 31.21305838097549], [121.39592170715332, 31.218270089457395], [121.39883995056152, 31.21779297316255], [121.40373229980469, 31.218380192875806], [121.40888214111328, 31.21687543505861], [121.40961170196533, 31.215444057835604], [121.40334606170654, 31.214122767319154], [121.40047073364258, 31.21140672327351], [121.39918327331543, 31.20733251093423], [121.39484882354736, 31.205350398225548], [121.39081478118896, 31.205790871306046], [121.39081478118896, 31.205790871306046]]], [[[121.405273, 31.209012], [121.415387, 31.209012], [121.42132, 31.202817], [121.420291, 31.191411], [121.414443, 31.186207], [121.405273, 31.184592], [121.396164, 31.190934], [121.396164, 31.20267], [121.405273, 31.209012]]], [[[121.41992158203124, 31.2168721140415], [121.42944893121339, 31.216340826205943], [121.43335443914796, 31.216413435811617], [121.435758, 31.216142], [121.430179, 31.222128], [121.428033, 31.224338], [121.425496, 31.225797], [121.424503, 31.229017], [121.42063, 31.225696], [121.40945, 31.219347], [121.408849, 31.216917], [121.4116386349487, 31.2170228936836], [121.41992158203124, 31.2168721140415]]], [[[121.413784, 31.183101], [121.42507111639405, 31.181458113076232], [121.42766797616578, 31.1794980807099], [121.435758, 31.179741], [121.438467, 31.19404], [121.435339, 31.202354], [121.437968, 31.204005], [121.435221, 31.211125], [121.434406, 31.210905], [121.433676, 31.213805], [121.429519, 31.210263], [121.42476, 31.209988], [121.425243, 31.204555], [121.42432, 31.193131], [121.413784, 31.183101]]], [[[121.395879, 31.178294], [121.38504232009888, 31.1754940558633], [121.38386277777099, 31.179506122648753], [121.376696, 31.189308], [121.375108, 31.191621], [121.387167, 31.198082], [121.388969, 31.194081], [121.393003, 31.18784], [121.395879, 31.178294], [121.395879, 31.178294]]], [[[121.43561840057373, 31.179799450466017], [121.43639087677002, 31.180350190175215], [121.43639087677002, 31.182259396364255], [121.44317150115967, 31.184168564052225], [121.44411563873291, 31.186408115534373], [121.44450187683105, 31.190850347745457], [121.44025325775146, 31.20524027963493], [121.43493175506592, 31.2022303218499], [121.43802165985107, 31.19297960827092], [121.43561840057373, 31.179799450466017], [121.43561840057373, 31.179799450466017]]], [[[121.40866756439209, 31.216802031625623], [121.41381740570068, 31.20979174118209], [121.42004013061523, 31.208690601216105], [121.42978191375732, 31.210122080671784], [121.43368721008301, 31.2136089271319], [121.43510341644287, 31.216508417323734], [121.41682147979736, 31.21713234662532], [121.40913963317871, 31.217242451368776], [121.40866756439209, 31.216802031625623], [121.40866756439209, 31.216802031625623]]], [[[121.381245, 31.207443], [121.390858, 31.205828], [121.393518, 31.194008], [121.400728, 31.185417], [121.40811, 31.181378], [121.395836, 31.178147], [121.392231, 31.188501], [121.381245, 31.207443], [121.381245, 31.207443]]], [[[121.395664, 31.212912], [121.376567, 31.216031], [121.37691, 31.21104], [121.381416, 31.207479], [121.38206, 31.206929], [121.390901, 31.205681], [121.3928315872803, 31.209277954199695], [121.395664, 31.212912], [121.395664, 31.212912]]], [[[121.40310219580078, 31.21408509134048], [121.40580453442382, 31.214911629052263], [121.4077989206543, 31.215342471521144], [121.40945030688475, 31.215590624995848], [121.413824, 31.210232], [121.420101, 31.208816], [121.426452, 31.209943], [121.426367, 31.194553], [121.417042, 31.182308], [121.412733, 31.182014], [121.407823, 31.181133], [121.400973, 31.184686], [121.393177, 31.193671], [121.391805, 31.197421], [121.391247, 31.202309], [121.391316, 31.203769], [121.390871, 31.20567], [121.39517295770264, 31.205984320914038], [121.39721161376956, 31.20734777014886], [121.39931771960448, 31.208362250840302], [121.40047911114503, 31.211689562052715], [121.40310219580078, 31.21408509134048]]]]};
            var marker = new AMap.Marker({icon: "/static/desktop/img/coordinate.png",position: r_pos});
            marker.setMap(amap);
            if(das){
                draw_polygon(amap, das);
            }
            amap.setFitView();
        }
    </script>
    <script src="http://webapi.amap.com/maps?v=1.3&key=5cd6dcb00bc675bf26c9b4ab2af0759a&callback=map_init"></script>
    <script src="${pageContext.request.contextPath }/wmcr/js/favorite.js"></script>

    
    <script>angular.bootstrap(document, ["app"]);</script>

    <!-- Baidu Analytics -->


</body>
</html>
    