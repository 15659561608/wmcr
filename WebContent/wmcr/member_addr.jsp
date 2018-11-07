<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
    <meta name="description" content="" />
    <meta name="viewport" content="user-scalable=no">
    
    <meta name="google-site-verification" content="BstJA3X9z6f9HcvoN9AZTwaKo_9Abj_j7dVBPfy640s" />
    <meta name="baidu-site-verification" content="IYCrtVH0i1" />
    <meta property="wb:webmaster" content="239d3d1dbdde1b2c" />
    <link rel="icon" type="image/png" href="images/favicon.ico"/>
    
    <script type="text/javascript">
        
        (function(document, screen) {if (screen.width < 760) {document.location.href="/mobile/";}}(document, screen));
    </script>
    
    <link rel="stylesheet" href="css/common.css?v=2015-5-20"/>
    
    <link rel="stylesheet" href="css/user_center.css"/>
    
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    
    <title>个人中心 - 地址管理</title>
</head>
<body class="day " ng-controller="bodyCtrl"  day-or-night>
    <section class="common-back" id="wrapBackground">
        
            <header id="header">
                <div class="common-width clearfix">
                    <h1 class="fl">
                        <a class="logo base-logo" href="index.jsp">外卖超人</a>
                    </h1>
                    
                        <ul class="member logging" ng-init="loginInfo=true">
                            <li><a href="index.jsp" class="index">首页</a></li>
                            <li class="userName">
                                <a href="member_index.jsp" rel="nofollow" draw-user>${sessionScope.users.account}<em></em></a>
                                <div>
                                    <p><a href="member_index.jsp"  rel="nofollow">账号管理</a></p>
                                    <p><a href="member_addr.jsp"  rel="nofollow">地址管理</a></p>
                                    <p class="no-bo"><a id="logout" href="#" referer-url rel="nofollow">退出</a></p>
                                </div>
                            </li>
                            <li class=""><a href="member_order.jsp" class="order-center"  rel="nofollow">我的订单</a></li>
                            <li class=""><a href="member_collect.jsp"  rel="nofollow">我的收藏</a></li>
                           
                        </ul>
                    
                </div>
            </header>
        
        <div id="main-box">
        
            <div ng-controller="colorAction">
                <div class="dayColor_two"></div>
                <div class="dayColor_one"></div>
                <div class="dayColor_three" ng-class="{dayColor_threeActive:threeActive}"></div>
            </div>
        
            
    <section>
        <div class="user-center-main-box common-width clearfix">
            <aside class="fl">
                <ul>
                    <li>
                        <a href="member_index.jsp" rel="nofollow">账号管理</a>
                    </li>
                    <li>
                        <a href="member_order.jsp" rel="nofollow">我的订单</a>
                    </li>
                    <li >
                        <a href="member_collect.jsp" rel="nofollow">我的收藏</a>
                    </li>
                    <li  class="active">
                        <a href="member_addr.jsp"  rel="nofollow">地址管理</a>
                    </li>
  
                </ul>
            </aside>
            <article class="fl user-center-main">
                <header>地址管理</header>
                
    <section class="user-address-main">
        <header>
            <h2>已保存地址</h2>
        </header>
        <article class="mb10">
            <table>
                <colgroup>
                    <col width="100px">
                    <col width="145px">
                    <col width="407px">
                    <col width="85px">
                </colgroup>
                <thead>
                    <tr>
                        <th>收单人</th>
                        <th>手机号码</th>
                        <th>送餐地址</th>
                        <th>操作</th>
                    </tr>
                </thead>
               <c:if test="${cusList==null }">
               	<jsp:forward page="/ohs.do?op=cusAddress"></jsp:forward>
               </c:if>
               <c:forEach items="${cusList }" var="v">
                <tr>
                    <td>${v.custName }</td>
                    <td>${v.phone }</td>
                    <td>${v.address }</td>
                    <td>
                        <a href="javascript:;" onclick="showUpdate(${v.id})">修改</a>
                        <a href="javascript:;" onclick="javascript:location.href='${pageContext.request.contextPath }/ohs.do?op=delAddress&id=${v.id}';">删除</a>
                    </td>
                </tr>
                </c:forEach>
            </table>
        </article>
        <article ng-show="userAddressList.length < 8">
            <header class="mb10">
                <h2>新增地址</h2><strong>(最多只能保存 8 个有效地址)</strong>
            </header>
            <section class="add-address-box">
                <form novalidate="true" name="userAddressForm">
                    <div class="form-group mb10 row">
                        <label class="col-2">收单人：</label>
                        <div class="col-6">
                            <input type="text" required maxlength="10"
                                ng-class="{error:userAddressForm.submit && userAddressForm.name.$invalid}" id="adsName"
                                placeholder="如何称呼" ng-model="userAddress.customer_name">
                        </div>
                        <span ng-if="userAddressForm.submit && userAddressForm.name.$invalid">
                            <span class="vaildate-error">称呼不能为空</span>
                        </span>
                    </div>
                    <div class="form-group mb10 row">
                        <label class="col-2">手机号码：</label>
                        <div class="col-6">
                            <input type="text" maxlength="11" required mobile
                                ng-class="{error:userAddressForm.submit && userAddressForm.contact.$invalid}" id="adsPhone"
                                placeholder="138xxxxxxxx" ng-model="userAddress.customer_phone">
                        </div>
                        <span ng-if="userAddressForm.submit && userAddressForm.contact.$error.required">
                            <span class="vaildate-error">手机号码不能为空</span>
                        </span>
                        <span ng-if="userAddressForm.submit && userAddressForm.contact.$error.mobile">
                            <span class="vaildate-error">请输入正确的11位手机号码</span>
                        </span>
                    </div>
                    <div class="form-group mb30 row">
                        <label class="col-2">送餐地址：</label>
                        <div class="col-6">
                            <input type="text" required
                                ng-class="{error:userAddressForm.submit && userAddressForm.address.$invalid}" id="adsAds"
                                placeholder="详细地址，如武定西路1189号606室" ng-model="userAddress.delivery_address">
                        </div>
                        <span ng-if="(userAddressForm.submit && userAddressForm.address.$invalid)">
                            <span class="vaildate-error">送餐地址不能为空</span>
                        </span>
                    </div>
                    <div class="form-group mb30 row">
                        <label class="col-2"></label>
                        <div class="col-8">
                            <button class="btn btn-success normal-btn" id="doAddressSubmit">
                                保存送餐地址
                            </button>
                        </div>
                    </div>
                </form>
            </section>
        </article>
    </section>


            </article>
        </div>
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
    
    <dh-dialog class="disnone" type="alert" index="1001" header="" show="errorShow">
        <div class="alert-box error">
            <p ng-bind="errorMsg"></p>
        </div>
    </dh-dialog>
    <dh-dialog class="disnone" type="alert" index="1002" header="" show="confirm">
        <div class="alert-box warning">
            <p ng-bind="confirmMsg" class="mb10"></p>
            <div>
                <button class="btn btn-success small-btn" ng-click="submitConfirm()">确认</button>
                <button class="btn btn-cancel small-btn" ng-click="cancelConfirm()">取消</button>
            </div>
        </div>
    </dh-dialog>
    <dh-dialog class="disnone" header="修改地址" width="420" show="showEditUserAddress">
        <div ng-controller="userAddressCtrl">
            <form novalidate="true" name="editUserAddressForm" class="address-from">
            <div class="form-group row mb20">
                <label class="require col-3">收单人：</label>
                <div class="col-8">
                    <input type="text" required maxlength="10"
                           ng-class="{error:editUserAddressForm.submit && editUserAddressForm.name.$invalid}" name="name"
                           placeholder="您的称呼" ng-model="editUserAddress.customer_name">
                </div>
                <div class="col-8 col-offset-3" ng-if="editUserAddressForm.submit && editUserAddressForm.name.$invalid">
                    <span class="vaildate-error">称呼不能为空</span>
                </div>
            </div>
            <div class="form-group row mb20">
                <label class="require col-3">手机号码：</label>
                <div class="col-8">
                    <input type="text" maxlength="11" required mobile
                           ng-class="{error:editUserAddressForm.submit && editUserAddressForm.contact.$invalid}" name="contact"
                           placeholder="您的联系方式" ng-model="editUserAddress.customer_phone">
                </div>
                <div class="col-8 col-offset-3" ng-if="editUserAddressForm.submit && editUserAddressForm.contact.$error.required">
                    <span class="vaildate-error">联系方式不能为空</span>
                </div>
                <div class="col-8 col-offset-3" ng-if="editUserAddressForm.submit && !editUserAddressForm.contact.$error.required && editUserAddressForm.contact.$error.mobile">
                    <span class="vaildate-error">请输入正确的11位手机号码</span>
                </div>
            </div>
            <div class="form-group row mb30">
                <label class="require col-3">送餐地址：</label>
                <div class="col-8">
                    <input type="text" required
                           ng-class="{error:editUserAddressForm.submit && editUserAddressForm.address.$invalid}" name="address"
                           placeholder="详细地址，如武定西路1189号606室" ng-model="editUserAddress.delivery_address">
                </div>
                <div class="col-8 col-offset-3" ng-if="editUserAddressForm.submit && editUserAddressForm.address.$invalid">
                    <span class="vaildate-error">送餐地址不能为空</span>
                </div>
            </div>
            <div class="form-group tc">
                <button class="btn btn-success normal-btn" ng-click="submitUserAddress()">确认</button>
                <button class="btn btn-cancel normal-btn" ng-click="cancelUserAddress()">取消</button>
            </div>
        </form>
        </div>
    </dh-dialog>

     <ul class="site-fixed">
        <li class="scroll-top"><img src="images/scroll_top1.png" alt=""/> </li>
        <li class="scorll-feekback" ng-click="userFeedback=true">
            <img src="images/scorll_feekback.png" alt=""/>
            <div>意见反馈</div>
        </li>
    </ul>
    
    <script type="text/javascript" src="js/angular.min.js"></script>
    <script src="js/common.js"></script>
    
     
    <script src="js/service.js"></script>
    
    <script>var feedbackUrl = '/ajax/feedback/';var app = angular.module("app", ["dh.dialog", "dh.form", 'dh.service', 'dh.other']);</script>
    <!--[if lt IE 9]><script src="js/fix.js"></script><![endif]-->
    
    

    <script src="js/user_center_address.js"></script>

    
    <script>angular.bootstrap(document, ["app"]);</script>

    <!-- Baidu Analytics -->


</body>

<script src="../layui/layui.all.js"></script>

<script
		src="${pageContext.request.contextPath }/wmcr/js/jquery-1.8.1.js"></script>
	<script>
	//添加地址
$("#doAddressSubmit").click(
				function() {
					var name = $("#adsName").val();
					var phone = $("#adsPhone").val();
					var address = $("#adsAds").val();
					 $.post("${pageContext.request.contextPath }/ohs.do",
							"op=addAddress&address=" + address + "&name="
									+ name + "&phone=" + phone, function(data) {
								console.log(data);
								if (data == "true") {
									alert("添加成功");
								} else {
									alert("添加失败");
								}
							});  
				});
//修改地址			
function showUpdate(id){
	layer.open({
 		type: 2,
 		area: ['400px', '350px'],
 		fix: false, //不固定
 		maxmin: true,
 		shade:0.4,
 		title: '修改收货信息',
 		content: '../ohs.do?op=updateAddress&id='+id,
 		success: function(layero, index){
             var body = layer.getChildFrame('body',index);//建立父子联系
             var iframeWin = window[layero.find('iframe')[0]['name']];

             var _ename = body.find('#ename');
            // console.log(_ename+","+arr[1]);
             //$(_ename).html(arr[1]);
            
         }
 	});
	}
</script>
</html>