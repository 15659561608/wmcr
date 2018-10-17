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
    
    <meta name="google-site-verification" content="BstJA3X9z6f9HcvoN9AZTwaKo_9Abj_j7dVBPfy640s" />
    <meta name="baidu-site-verification" content="IYCrtVH0i1" />
    <meta property="wb:webmaster" content="239d3d1dbdde1b2c" />
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/wmcr/images/favicon.ico"/>
    
    <script type="text/javascript">
        
        (function(document, screen) {if (screen.width < 760) {document.location.href="/mobile/";}}(document, screen));
    </script>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wmcr/css/common.css?v=2015-5-20"/>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wmcr/css/menuPage.css?v=2015-5-20"/>

    <!--[if lte IE 7]><script>window.onload=function(){location.href="/ie6warning/"}</script><![endif]-->
    <!--[if lt IE 9]>
    <script src="js/respond.js"></script>
    <script>
        var e = "abbr, article, aside, audio, canvas, datalist, details, dialog, eventsource, figure, footer, header, hgroup, mark, menu, meter, nav, output, progress, section, time, video, dh-dialog, dh-checkbox".split(', ');
         var i= e.length;while (i--){document.createElement(e[i])}
    </script>
    <![endif]-->
    <title>店铺商品</title>
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
                            <li class="login-register"><a href="${pageContext.request.contextPath }/wmcr/login.jsp"   class="login"  rel="nofollow">登录</a><span class="cg">/</span><a href="register.html" referer-url  rel="nofollow" class="register">注册</a></li>
                            <li><a href="member_order.html" class="order-center"  rel="nofollow">查看订单</a></li>
                            <li class=""><a href="gifts.html"  rel="nofollow">氪星礼品站</a></li>
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
        
            
    <section class="menupage-main common-width" ng-init="city_name='上海'">
        
<header class="nav clearfix">
    <div class="fl clearfix nav-des">
        <img src="${pageContext.request.contextPath }${busiInfo.logo }" alt="${busiInfo.busiName }" class="fl" />
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
            <p>${busiInfo.disFee }<span style="font-size:12px;color:#999;">元</span></p>
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
    <li class="no-line "><a href="shop_intro.html">餐厅介绍</a></li>
    <li class="active"><a href="shop_detail.html">菜单</a></li>
    <li ><a href="shop_comment.jsp">评论</a></li>
	<li ><a href="shop_brand.html" id='point-tab'>大家都在点</a></li>
    
</ul>

        <section class="main-box clearfix" lazy-img-load>
            <div class="main fl">
                <div class="inner-main">
                    <!-- <nav class="menu-nav link fs12 clearfix" scroll-position-static="130">
                        <ul class="fl" menutoggle>
                            <li data-toggle="section-all" class="active">
                                <a href="javascript:void(0);">显示全部</a>
                            </li>
                            
                                 <li data-toggle="section-39215">
                                    <a href="javascript:void(0);">店主推荐(6)</a>
                            
                            
                                <li data-toggle="section-189417">
                                    <a href="javascript:void(0);">份份减6元活动专区(8)</a>
                                </li>
                            
                                <li data-toggle="section-25305">
                                    <a href="javascript:void(0);">冷面系列(9)</a>
                                </li>
                            
                                <li data-toggle="section-25301">
                                    <a href="javascript:void(0);">【八五折便当区】(23)</a>
                                </li>
                            
                                <li data-toggle="section-25300">
                                    <a href="javascript:void(0);">一品料理(22)</a>
                                </li>
                            
                                <li data-toggle="section-25302">
                                    <a href="javascript:void(0);">盖浇饭系列(9)</a>
                                </li>
                            
                                <li data-toggle="section-122476">
                                    <a href="javascript:void(0);">日式沾沾面类(3)</a>
                                </li>
                            
                                <li data-toggle="section-168983">
                                    <a href="javascript:void(0);">寿喜锅系列(6)</a>
                                </li>
                            
                                <li data-toggle="section-168984">
                                    <a href="javascript:void(0);">寿喜锅套餐系列(4)</a>
                                </li>
                            
                                <li data-toggle="section-168980">
                                    <a href="javascript:void(0);">刺身系列(3)</a>
                                </li>
                            
                                <li data-toggle="section-25308">
                                    <a href="javascript:void(0);">特色煎饺(3)</a>
                                </li>
                            
                                <li data-toggle="section-25299">
                                    <a href="javascript:void(0);">特色油淋鸡/布丁(2)</a>
                                </li>
                            
                                <li data-toggle="section-25304">
                                    <a href="javascript:void(0);">蔬菜色拉系列(5)</a>
                                </li>
                            
                                <li data-toggle="section-25306">
                                    <a href="javascript:void(0);">炒面系列(1)</a>
                                </li>
                            
                                <li data-toggle="section-25307">
                                    <a href="javascript:void(0);">烤物系列(5)</a>
                                </li>
                            
                                <li data-toggle="section-25310">
                                    <a href="javascript:void(0);">米饭(2)</a>
                                </li>
                            
                                <li data-toggle="section-25311">
                                    <a href="javascript:void(0);">饮料(12)</a>
                                </li>
                            
                                <li data-toggle="section-56459">
                                    <a href="javascript:void(0);">酒水(3)</a>
                                </li>
                            
                        </ul>
                        <i class="icon expand-icon fr" toogle-nav-menu="39"></i>
                    </nav>-->
                    <nav class="list-order-nav clearfix" id="list-order-nav">
                        <ul class="fl">
                            <li>菜单排序：</li>
                            <li><a href="javascript:void(0);" class="sort-default active">默认排序</a></li>
                            <li class="split-line">|</li>
                            <li><a href="javascript:void(0);" class="sort-sale descend">销量<i class="order-icon"></i></a></li>
                            <li class="split-line">|</li>
                            <li><a href="javascript:void(0);" class="sort-price">价格<i class="order-icon"></i></a></li>
                            <li class="split-line">|</li>
                        </ul>
                    </nav>
                    <div id="menu-main" class="menu-main">
                    
                    <article class="collapse section-39215">
                         <header accordion>
                            <h3 class="ellipsis">店主推荐 </h3>
                            <span ng-if="sectionCount['39215']" ng-class="{disinbl:sectionCount['39215']}"
                                  class="badge disnone" ng-bind="sectionCount['39215']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                              
                            <ul class="clearfix menu-group menu-group-img menu-first-load">
                                   <c:forEach items="${foodList.data}" var="food">      
	                                    <li title="${food.foodName}" class="menu-item hasImg" accessorykey="39215-${food.id}" data-sale="${food.salNum}" data-price="${food.price}">
	                                        <div class="menu-item-img">  
	                                            <img data-src="${food.logo}" src="${contextPage.request.contextPath }${food.logo}"  width="202" height="202" /> 
	                                        </div>
	                                        <div class="meun-item-name"><span class="ellipsis">${food.foodName}</span></div>
	                                        <p class="ellipsis meun-item-des">${food.des}</p>
	                                        <div class="meun-item-sale clearfix">
	                                            <span class="last"></span> 
	                                            <span class="price">${food.price}</span>
	                                            <span ng-if="menuItemCount['39215-${food.id}']" ng-class="{disinbl:menuItemCount['39215-${food.id}']}"
	                                                  class="badge disnone" ng-bind="menuItemCount['39215-${food.id}']"></span>
	                                            <span class="fr">已售${food.salNum}份</span>
	                                            
	                                        </div>
	                                        
	                                    </li>
                                      
                                     </c:forEach>
                                            
                                    <li title="黄油虾仁炒饭" class="menu-item hasImg" accessorykey="39215-2048898" data-sale="8" data-price="38.00">
                                        <div class="menu-item-img">  
                                            <img data-src="http://dhcmenuitem.dhero.cn/142615425540822113425540737808?imageView2/1/w/202/h/202/" src="http://dhcmenuitem.dhero.cn/0"  width="202" height="202" /> 
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">黄油虾仁炒饭</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span> 
                                            <span class="price">￥38.00</span>
                                            <span ng-if="menuItemCount['39215-2048898']" ng-class="{disinbl:menuItemCount['39215-2048898']}"
                                                  class="badge disnone" ng-bind="menuItemCount['39215-2048898']"></span>
                                            <span class="fr">已售8份</span>
                                            
                                        </div>
                                        
                                    </li>
                                      
                                     
                                            
                                    <li title="辣白菜便当" class="menu-item hasImg" accessorykey="39215-2048900" data-sale="0" data-price="28.00">
                                        <div class="menu-item-img">  
                                            <img data-src="http://dhcmenuitem.dhero.cn/142615433527424161369469948113?imageView2/1/w/202/h/202/" src="http://dhcmenuitem.dhero.cn/0"  width="202" height="202" /> 
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">辣白菜便当</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span> 
                                            <span class="price">￥28.00</span>
                                            <span ng-if="menuItemCount['39215-2048900']" ng-class="{disinbl:menuItemCount['39215-2048900']}"
                                                  class="badge disnone" ng-bind="menuItemCount['39215-2048900']"></span>
                                            <span class="fr"></span>
                                            
                                        </div>
                                        
                                    </li>
                                      
                                     
                                            
                                    <li title="布丁" class="menu-item hasImg" accessorykey="39215-2048890" data-sale="8" data-price="16.00">
                                        <div class="menu-item-img">  
                                            <img data-src="http://dhcmenuitem.dhero.cn/1426153912897003362415824085474?imageView2/1/w/202/h/202/" src="http://dhcmenuitem.dhero.cn/0"  width="202" height="202" /> 
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">布丁</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span> 
                                            <span class="price">￥16.00</span>
                                            <span ng-if="menuItemCount['39215-2048890']" ng-class="{disinbl:menuItemCount['39215-2048890']}"
                                                  class="badge disnone" ng-bind="menuItemCount['39215-2048890']"></span>
                                            <span class="fr">已售8份</span>
                                            
                                        </div>
                                        
                                    </li>
                                      
                                     
                                            
                                    <li title="芝麻风叉烧冷面" class="menu-item hasImg" accessorykey="39215-2048891" data-sale="1" data-price="42.00">
                                        <div class="menu-item-img">  
                                            <img data-src="http://dhcmenuitem.dhero.cn/14261541063989146357635036111?imageView2/1/w/202/h/202/" src="http://dhcmenuitem.dhero.cn/0"  width="202" height="202" /> 
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">芝麻风叉烧冷面</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span> 
                                            <span class="price">￥42.00</span>
                                            <span ng-if="menuItemCount['39215-2048891']" ng-class="{disinbl:menuItemCount['39215-2048891']}"
                                                  class="badge disnone" ng-bind="menuItemCount['39215-2048891']"></span>
                                            <span class="fr">已售1份</span>
                                            
                                        </div>
                                        
                                    </li>
                                      
                                     
                                            
                                    <li title="海鲜沾沾面" class="menu-item hasImg" accessorykey="39215-2048893" data-sale="2" data-price="26.00">
                                        <div class="menu-item-img">  
                                            <img data-src="http://dhcmenuitem.dhero.cn/14261541915173012366993352771?imageView2/1/w/202/h/202/" src="http://dhcmenuitem.dhero.cn/0"  width="202" height="202" /> 
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">海鲜沾沾面</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span> 
                                            <span class="price">￥26.00</span>
                                            <span ng-if="menuItemCount['39215-2048893']" ng-class="{disinbl:menuItemCount['39215-2048893']}"
                                                  class="badge disnone" ng-bind="menuItemCount['39215-2048893']"></span>
                                            <span class="fr">已售2份</span>
                                            
                                        </div>
                                        
                                    </li>
                                      
                                     
                                            
                                    <li title="日式油淋鸡" class="menu-item hasImg" accessorykey="39215-879895" data-sale="9" data-price="26.00">
                                        <div class="menu-item-img">  
                                            <img data-src="http://dhcmenuitem.dhero.cn/141351044817949330244050361216?imageView2/1/w/202/h/202/" src="http://dhcmenuitem.dhero.cn/0"  width="202" height="202" /> 
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式油淋鸡</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span> 
                                            <span class="price">￥26.00</span>
                                            <span ng-if="menuItemCount['39215-879895']" ng-class="{disinbl:menuItemCount['39215-879895']}"
                                                  class="badge disnone" ng-bind="menuItemCount['39215-879895']"></span>
                                            <span class="fr">已售9份</span>
                                            
                                        </div>
                                        
                                    </li>
                                      
                                    
                                </ul>
                                
                                <ul class="clearfix menu-group">
                                   
                                      
                                  
                                      
                                  
                                      
                                  
                                      
                                  
                                      
                                  
                                      
                                 
                                </ul>
                        </section>
                    </article>
                    
                
                    <article class="collapse section-189417">
                        <header accordion>
                            <h3 class="ellipsis" title="份份减6元活动专区(此区域点餐，每份立减6元)">
                                份份减6元活动专区
                                <span class="menu-description">此区域点餐，每份立减6元</span>
                            </h3>
                            <span ng-if="sectionCount['189417']" ng-class="{disinbl:sectionCount['189417']}"
                                  class="badge disnone" ng-bind="sectionCount['189417']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                            
                            <ul class="clearfix menu-group">
                                 
                                            
                                    <li title="[减]麻婆豆腐便当"  accessorykey="189417-2237631" data-sale="0" data-price="22.00" class="menu-item">
                                        <div class="menu-group-body clearfix  ">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">[减]麻婆豆腐便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl"></span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['189417-2237631']" ng-class="{disinbl:menuItemCount['189417-2237631']}"
                                                      class="badge disnone" ng-bind="menuItemCount['189417-2237631']"></span>
                                                <span class="price fs14">￥22.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                        <div class="addendum-item">
                                            
                                                
                                                <div class="clearfix">
                                                    <p class="ellipsis">点此菜品立减6元</p>
                                                    <span class="fr">￥-6.00</span>
                                                </div>
                                                
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="[减]八宝菜便当"  accessorykey="189417-2237632" data-sale="0" data-price="25.00" class="menu-item">
                                        <div class="menu-group-body clearfix  ">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">[减]八宝菜便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl"></span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['189417-2237632']" ng-class="{disinbl:menuItemCount['189417-2237632']}"
                                                      class="badge disnone" ng-bind="menuItemCount['189417-2237632']"></span>
                                                <span class="price fs14">￥25.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                        <div class="addendum-item">
                                            
                                                
                                                <div class="clearfix">
                                                    <p class="ellipsis">点此菜品立减6元</p>
                                                    <span class="fr">￥-6.00</span>
                                                </div>
                                                
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="[减]铁板烧肉便当"  accessorykey="189417-2237633" data-sale="0" data-price="28.00" class="menu-item">
                                        <div class="menu-group-body clearfix  ">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">[减]铁板烧肉便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl"></span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['189417-2237633']" ng-class="{disinbl:menuItemCount['189417-2237633']}"
                                                      class="badge disnone" ng-bind="menuItemCount['189417-2237633']"></span>
                                                <span class="price fs14">￥28.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                        <div class="addendum-item">
                                            
                                                
                                                <div class="clearfix">
                                                    <p class="ellipsis">点此菜品立减6元</p>
                                                    <span class="fr">￥-6.00</span>
                                                </div>
                                                
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="[减]蟹味菇茄子铁板烧肉便当"  accessorykey="189417-2237634" data-sale="0" data-price="25.00" class="menu-item">
                                        <div class="menu-group-body clearfix  ">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">[减]蟹味菇茄子铁板烧肉便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl"></span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['189417-2237634']" ng-class="{disinbl:menuItemCount['189417-2237634']}"
                                                      class="badge disnone" ng-bind="menuItemCount['189417-2237634']"></span>
                                                <span class="price fs14">￥25.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                        <div class="addendum-item">
                                            
                                                
                                                <div class="clearfix">
                                                    <p class="ellipsis">点此菜品立减6元</p>
                                                    <span class="fr">￥-6.00</span>
                                                </div>
                                                
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="[减]干烧猪肉茄子便当"  accessorykey="189417-2237635" data-sale="2" data-price="25.00" class="menu-item">
                                        <div class="menu-group-body clearfix  ">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">[减]干烧猪肉茄子便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售2份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['189417-2237635']" ng-class="{disinbl:menuItemCount['189417-2237635']}"
                                                      class="badge disnone" ng-bind="menuItemCount['189417-2237635']"></span>
                                                <span class="price fs14">￥25.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                        <div class="addendum-item">
                                            
                                                
                                                <div class="clearfix">
                                                    <p class="ellipsis">点此菜品立减6元</p>
                                                    <span class="fr">￥-6.00</span>
                                                </div>
                                                
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="[减]干烧鸡蛋蟹肉便当"  accessorykey="189417-2237636" data-sale="0" data-price="25.00" class="menu-item">
                                        <div class="menu-group-body clearfix  ">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">[减]干烧鸡蛋蟹肉便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl"></span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['189417-2237636']" ng-class="{disinbl:menuItemCount['189417-2237636']}"
                                                      class="badge disnone" ng-bind="menuItemCount['189417-2237636']"></span>
                                                <span class="price fs14">￥25.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                        <div class="addendum-item">
                                            
                                                
                                                <div class="clearfix">
                                                    <p class="ellipsis">点此菜品立减6元</p>
                                                    <span class="fr">￥-6.00</span>
                                                </div>
                                                
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="[减]炒素菜便当"  accessorykey="189417-2237637" data-sale="0" data-price="23.00" class="menu-item">
                                        <div class="menu-group-body clearfix  ">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">[减]炒素菜便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl"></span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['189417-2237637']" ng-class="{disinbl:menuItemCount['189417-2237637']}"
                                                      class="badge disnone" ng-bind="menuItemCount['189417-2237637']"></span>
                                                <span class="price fs14">￥23.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                        <div class="addendum-item">
                                            
                                                
                                                <div class="clearfix">
                                                    <p class="ellipsis">点此菜品立减6元</p>
                                                    <span class="fr">￥-6.00</span>
                                                </div>
                                                
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="[减]辣白菜烧肉便当"  accessorykey="189417-2237638" data-sale="0" data-price="30.00" class="menu-item">
                                        <div class="menu-group-body clearfix  ">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">[减]辣白菜烧肉便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl"></span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['189417-2237638']" ng-class="{disinbl:menuItemCount['189417-2237638']}"
                                                      class="badge disnone" ng-bind="menuItemCount['189417-2237638']"></span>
                                                <span class="price fs14">￥30.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                        <div class="addendum-item">
                                            
                                                
                                                <div class="clearfix">
                                                    <p class="ellipsis">点此菜品立减6元</p>
                                                    <span class="fr">￥-6.00</span>
                                                </div>
                                                
                                            
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    <article class="collapse section-25305">
                        <header accordion>
                            <h3 class="ellipsis" title="冷面系列">
                                冷面系列
                                
                            </h3>
                            <span ng-if="sectionCount['25305']" ng-class="{disinbl:sectionCount['25305']}"
                                  class="badge disnone" ng-bind="sectionCount['25305']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                              
                            <ul class="clearfix menu-group menu-group-img menu-first-load">
                                 
                                            
                                    <li title="海鲜芝麻风冷面" class="menu-item hasImg" accessorykey="25305-559095" data-sale="2" data-price="42.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142660475314614411364030092955?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">海鲜芝麻风冷面</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥42.00</span>
                                            <span ng-if="menuItemCount['25305-559095']" ng-class="{disinbl:menuItemCount['25305-559095']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25305-559095']"></span>
                                            <span class="fr">已售2份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="和风海鲜冷面" class="menu-item hasImg" accessorykey="25305-559105" data-sale="2" data-price="38.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142660448485012150529958307743?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">和风海鲜冷面</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥38.00</span>
                                            <span ng-if="menuItemCount['25305-559105']" ng-class="{disinbl:menuItemCount['25305-559105']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25305-559105']"></span>
                                            <span class="fr">已售2份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="芝麻风味冷面" class="menu-item hasImg" accessorykey="25305-559106" data-sale="22" data-price="26.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/1426604506846864286175230518?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">芝麻风味冷面</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥26.00</span>
                                            <span ng-if="menuItemCount['25305-559106']" ng-class="{disinbl:menuItemCount['25305-559106']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25305-559106']"></span>
                                            <span class="fr">已售22份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="和风冷面" class="menu-item hasImg" accessorykey="25305-559107" data-sale="8" data-price="24.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142660453082328511429228819907?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">和风冷面</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥24.00</span>
                                            <span ng-if="menuItemCount['25305-559107']" ng-class="{disinbl:menuItemCount['25305-559107']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25305-559107']"></span>
                                            <span class="fr">已售8份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="辣白菜冷面(原价35)" class="menu-item hasImg" accessorykey="25305-590974" data-sale="13" data-price="30.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14266047241531294354081619531?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">辣白菜冷面(原价35)</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥30.00</span>
                                            <span ng-if="menuItemCount['25305-590974']" ng-class="{disinbl:menuItemCount['25305-590974']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25305-590974']"></span>
                                            <span class="fr">已售13份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="土鸡蛋丝和风冷面" class="menu-item hasImg" accessorykey="25305-590975" data-sale="1" data-price="38.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14266045953096752821675036103?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">土鸡蛋丝和风冷面</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥38.00</span>
                                            <span ng-if="menuItemCount['25305-590975']" ng-class="{disinbl:menuItemCount['25305-590975']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25305-590975']"></span>
                                            <span class="fr">已售1份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="土鸡蛋丝芝麻风冷面" class="menu-item hasImg" accessorykey="25305-590976" data-sale="6" data-price="42.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142660462463044115045526996255?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">土鸡蛋丝芝麻风冷面</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥42.00</span>
                                            <span ng-if="menuItemCount['25305-590976']" ng-class="{disinbl:menuItemCount['25305-590976']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25305-590976']"></span>
                                            <span class="fr">已售6份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="叉烧和风冷面" class="menu-item hasImg" accessorykey="25305-590977" data-sale="6" data-price="38.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14266046529918752918499521911?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">叉烧和风冷面</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥38.00</span>
                                            <span ng-if="menuItemCount['25305-590977']" ng-class="{disinbl:menuItemCount['25305-590977']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25305-590977']"></span>
                                            <span class="fr">已售6份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="叉烧芝麻风冷面" class="menu-item hasImg" accessorykey="25305-590978" data-sale="9" data-price="42.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14266046865429880380171816796?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">叉烧芝麻风冷面</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥42.00</span>
                                            <span ng-if="menuItemCount['25305-590978']" ng-class="{disinbl:menuItemCount['25305-590978']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25305-590978']"></span>
                                            <span class="fr">已售9份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                            
                            <ul class="clearfix menu-group">
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    <article class="collapse section-25301">
                        <header accordion>
                            <h3 class="ellipsis" title="【八五折便当区】">
                                【八五折便当区】
                                
                            </h3>
                            <span ng-if="sectionCount['25301']" ng-class="{disinbl:sectionCount['25301']}"
                                  class="badge disnone" ng-bind="sectionCount['25301']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                              
                            <ul class="clearfix menu-group menu-group-img menu-first-load">
                                 
                                            
                                    <li title="日式烤多春鱼便当" class="menu-item hasImg" accessorykey="25301-558972" data-sale="9" data-price="26.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258121604699352190920617431?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式烤多春鱼便当</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥26.00</span>
                                            <span ng-if="menuItemCount['25301-558972']" ng-class="{disinbl:menuItemCount['25301-558972']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25301-558972']"></span>
                                            <span class="fr">已售9份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式烤鲳鱼便当" class="menu-item hasImg" accessorykey="25301-558998" data-sale="33" data-price="30.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142581223137413955022022128105?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式烤鲳鱼便当</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥30.00</span>
                                            <span ng-if="menuItemCount['25301-558998']" ng-class="{disinbl:menuItemCount['25301-558998']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25301-558998']"></span>
                                            <span class="fr">已售33份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式烤秋刀鱼便当" class="menu-item hasImg" accessorykey="25301-558999" data-sale="35" data-price="22.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258122435561864683071617037?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式烤秋刀鱼便当</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥22.00</span>
                                            <span ng-if="menuItemCount['25301-558999']" ng-class="{disinbl:menuItemCount['25301-558999']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25301-558999']"></span>
                                            <span class="fr">已售35份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式铁板烧肉便当" class="menu-item hasImg" accessorykey="25301-559001" data-sale="199" data-price="23.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258122558049555131976958364?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式铁板烧肉便当</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥23.00</span>
                                            <span ng-if="menuItemCount['25301-559001']" ng-class="{disinbl:menuItemCount['25301-559001']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25301-559001']"></span>
                                            <span class="fr">已售199份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式炸鸡块便当" class="menu-item hasImg" accessorykey="25301-559002" data-sale="190" data-price="22.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258122653808131334355566651?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式炸鸡块便当</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥22.00</span>
                                            <span ng-if="menuItemCount['25301-559002']" ng-class="{disinbl:menuItemCount['25301-559002']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25301-559002']"></span>
                                            <span class="fr">已售190份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式烤青花鱼便当" class="menu-item hasImg" accessorykey="25301-558995" data-sale="45" data-price="33.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/1425812300322917620838386938?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式烤青花鱼便当</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥33.00</span>
                                            <span ng-if="menuItemCount['25301-558995']" ng-class="{disinbl:menuItemCount['25301-558995']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25301-558995']"></span>
                                            <span class="fr">已售45份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式辣白菜烧肉便当" class="menu-item hasImg" accessorykey="25301-559000" data-sale="28" data-price="24.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258123403308944282019510865?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式辣白菜烧肉便当</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥24.00</span>
                                            <span ng-if="menuItemCount['25301-559000']" ng-class="{disinbl:menuItemCount['25301-559000']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25301-559000']"></span>
                                            <span class="fr">已售28份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式干烧鸡蛋蟹肉便当" class="menu-item hasImg" accessorykey="25301-559005" data-sale="13" data-price="21.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14266032503424814076451584697?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式干烧鸡蛋蟹肉便当</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥21.00</span>
                                            <span ng-if="menuItemCount['25301-559005']" ng-class="{disinbl:menuItemCount['25301-559005']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25301-559005']"></span>
                                            <span class="fr">已售13份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式韭菜炒蛋便当" class="menu-item hasImg" accessorykey="25301-559006" data-sale="4" data-price="23.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14266032080665809596630278975?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式韭菜炒蛋便当</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥23.00</span>
                                            <span ng-if="menuItemCount['25301-559006']" ng-class="{disinbl:menuItemCount['25301-559006']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25301-559006']"></span>
                                            <span class="fr">已售4份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式麻婆豆腐便当" class="menu-item hasImg" accessorykey="25301-559012" data-sale="30" data-price="19.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14266031615415642492109909654?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式麻婆豆腐便当</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥19.00</span>
                                            <span ng-if="menuItemCount['25301-559012']" ng-class="{disinbl:menuItemCount['25301-559012']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25301-559012']"></span>
                                            <span class="fr">已售30份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式烤三文鱼便当" class="menu-item hasImg" accessorykey="25301-558923" data-sale="44" data-price="39.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14266031314005406017394270748?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式烤三文鱼便当</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥39.00</span>
                                            <span ng-if="menuItemCount['25301-558923']" ng-class="{disinbl:menuItemCount['25301-558923']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25301-558923']"></span>
                                            <span class="fr">已售44份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式蟹味菇茄子铁板烧肉便当" class="menu-item hasImg" accessorykey="25301-559007" data-sale="43" data-price="21.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14266030605768541052464861423?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式蟹味菇茄子铁板烧肉便当</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥21.00</span>
                                            <span ng-if="menuItemCount['25301-559007']" ng-class="{disinbl:menuItemCount['25301-559007']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25301-559007']"></span>
                                            <span class="fr">已售43份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式韭菜炒猪肝便当" class="menu-item hasImg" accessorykey="25301-559008" data-sale="7" data-price="21.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14266030964248654665104113519?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式韭菜炒猪肝便当</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥21.00</span>
                                            <span ng-if="menuItemCount['25301-559008']" ng-class="{disinbl:menuItemCount['25301-559008']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25301-559008']"></span>
                                            <span class="fr">已售7份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式炒素菜便当" class="menu-item hasImg" accessorykey="25301-559011" data-sale="14" data-price="19.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258124348289665521364659071?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式炒素菜便当</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥19.00</span>
                                            <span ng-if="menuItemCount['25301-559011']" ng-class="{disinbl:menuItemCount['25301-559011']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25301-559011']"></span>
                                            <span class="fr">已售14份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                
                            </ul>
                            
                            <ul class="clearfix menu-group">
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                            
                                    <li title="日式煮猪排便当"  accessorykey="25301-558990" data-sale="37" data-price="33.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式煮猪排便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售37份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25301-558990']" ng-class="{disinbl:menuItemCount['25301-558990']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25301-558990']"></span>
                                                <span class="price fs14">￥33.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式咖喱蟹味菇便当"  accessorykey="25301-559003" data-sale="9" data-price="21.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式咖喱蟹味菇便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售9份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25301-559003']" ng-class="{disinbl:menuItemCount['25301-559003']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25301-559003']"></span>
                                                <span class="price fs14">￥21.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式干烧猪肉茄子便当"  accessorykey="25301-559004" data-sale="38" data-price="21.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式干烧猪肉茄子便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售38份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25301-559004']" ng-class="{disinbl:menuItemCount['25301-559004']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25301-559004']"></span>
                                                <span class="price fs14">￥21.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式八宝菜便当"  accessorykey="25301-559009" data-sale="5" data-price="21.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式八宝菜便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售5份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25301-559009']" ng-class="{disinbl:menuItemCount['25301-559009']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25301-559009']"></span>
                                                <span class="price fs14">￥21.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式煮牛肉便当"  accessorykey="25301-558991" data-sale="64" data-price="36.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式煮牛肉便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售64份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25301-558991']" ng-class="{disinbl:menuItemCount['25301-558991']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25301-558991']"></span>
                                                <span class="price fs14">￥36.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式咖喱牛肉便当"  accessorykey="25301-558994" data-sale="35" data-price="36.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式咖喱牛肉便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售35份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25301-558994']" ng-class="{disinbl:menuItemCount['25301-558994']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25301-558994']"></span>
                                                <span class="price fs14">￥36.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式煮青花鱼便当"  accessorykey="25301-558997" data-sale="20" data-price="38.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式煮青花鱼便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售20份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25301-558997']" ng-class="{disinbl:menuItemCount['25301-558997']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25301-558997']"></span>
                                                <span class="price fs14">￥38.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式麻婆茄子便当"  accessorykey="25301-559010" data-sale="10" data-price="21.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式麻婆茄子便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售10份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25301-559010']" ng-class="{disinbl:menuItemCount['25301-559010']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25301-559010']"></span>
                                                <span class="price fs14">￥21.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式咖喱猪排便当"  accessorykey="25301-558992" data-sale="64" data-price="33.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式咖喱猪排便当</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售64份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25301-558992']" ng-class="{disinbl:menuItemCount['25301-558992']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25301-558992']"></span>
                                                <span class="price fs14">￥33.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    <article class="collapse section-25300">
                        <header accordion>
                            <h3 class="ellipsis" title="一品料理">
                                一品料理
                                
                            </h3>
                            <span ng-if="sectionCount['25300']" ng-class="{disinbl:sectionCount['25300']}"
                                  class="badge disnone" ng-bind="sectionCount['25300']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                              
                            <ul class="clearfix menu-group menu-group-img menu-first-load">
                                 
                                            
                                    <li title="日式青椒肉丝" class="menu-item hasImg" accessorykey="25300-558913" data-sale="13" data-price="25.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14280691542685567200763616711?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式青椒肉丝</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥25.00</span>
                                            <span ng-if="menuItemCount['25300-558913']" ng-class="{disinbl:menuItemCount['25300-558913']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25300-558913']"></span>
                                            <span class="fr">已售13份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式干烧鸡蛋蟹肉" class="menu-item hasImg" accessorykey="25300-558917" data-sale="9" data-price="25.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142806917875637372537166811526?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式干烧鸡蛋蟹肉</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥25.00</span>
                                            <span ng-if="menuItemCount['25300-558917']" ng-class="{disinbl:menuItemCount['25300-558917']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25300-558917']"></span>
                                            <span class="fr">已售9份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式韭菜炒猪肝" class="menu-item hasImg" accessorykey="25300-558919" data-sale="21" data-price="25.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14280691892087893752411473542?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式韭菜炒猪肝</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥25.00</span>
                                            <span ng-if="menuItemCount['25300-558919']" ng-class="{disinbl:menuItemCount['25300-558919']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25300-558919']"></span>
                                            <span class="fr">已售21份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式炒素菜" class="menu-item hasImg" accessorykey="25300-558922" data-sale="31" data-price="18.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142806921278042418279591947794?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式炒素菜</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥18.00</span>
                                            <span ng-if="menuItemCount['25300-558922']" ng-class="{disinbl:menuItemCount['25300-558922']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25300-558922']"></span>
                                            <span class="fr">已售31份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式韭菜炒土鸡蛋" class="menu-item hasImg" accessorykey="25300-558903" data-sale="11" data-price="35.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14280691108554215591656975448?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式韭菜炒土鸡蛋</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥35.00</span>
                                            <span ng-if="menuItemCount['25300-558903']" ng-class="{disinbl:menuItemCount['25300-558903']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25300-558903']"></span>
                                            <span class="fr">已售11份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式铁板烧肉" class="menu-item hasImg" accessorykey="25300-558906" data-sale="32" data-price="30.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14280691398849478654891718179?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式铁板烧肉</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥30.00</span>
                                            <span ng-if="menuItemCount['25300-558906']" ng-class="{disinbl:menuItemCount['25300-558906']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25300-558906']"></span>
                                            <span class="fr">已售32份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式煮牛肉" class="menu-item hasImg" accessorykey="25300-558905" data-sale="29" data-price="38.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142806924964629731218912638724?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式煮牛肉</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥38.00</span>
                                            <span ng-if="menuItemCount['25300-558905']" ng-class="{disinbl:menuItemCount['25300-558905']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25300-558905']"></span>
                                            <span class="fr">已售29份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式油淋鸡" class="menu-item hasImg" accessorykey="25300-558908" data-sale="33" data-price="26.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142806926426326311941305175424?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式油淋鸡</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥26.00</span>
                                            <span ng-if="menuItemCount['25300-558908']" ng-class="{disinbl:menuItemCount['25300-558908']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25300-558908']"></span>
                                            <span class="fr">已售33份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式麻婆茄子" class="menu-item hasImg" accessorykey="25300-558918" data-sale="9" data-price="25.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142806927484017436699196696281?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式麻婆茄子</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥25.00</span>
                                            <span ng-if="menuItemCount['25300-558918']" ng-class="{disinbl:menuItemCount['25300-558918']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25300-558918']"></span>
                                            <span class="fr">已售9份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式韭菜炒蛋" class="menu-item hasImg" accessorykey="25300-558920" data-sale="4" data-price="27.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14280692870398449877810198814?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式韭菜炒蛋</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥27.00</span>
                                            <span ng-if="menuItemCount['25300-558920']" ng-class="{disinbl:menuItemCount['25300-558920']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25300-558920']"></span>
                                            <span class="fr">已售4份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式麻婆豆腐" class="menu-item hasImg" accessorykey="25300-558921" data-sale="17" data-price="20.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14280692963937271462718490511?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式麻婆豆腐</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥20.00</span>
                                            <span ng-if="menuItemCount['25300-558921']" ng-class="{disinbl:menuItemCount['25300-558921']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25300-558921']"></span>
                                            <span class="fr">已售17份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                
                            </ul>
                            
                            <ul class="clearfix menu-group">
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                            
                                    <li title="日式牛心菜味曾铁板烧肉"  accessorykey="25300-558912" data-sale="14" data-price="25.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式牛心菜味曾铁板烧肉</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售14份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25300-558912']" ng-class="{disinbl:menuItemCount['25300-558912']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25300-558912']"></span>
                                                <span class="price fs14">￥25.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式猪肉味增炒茄子"  accessorykey="25300-558914" data-sale="13" data-price="25.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式猪肉味增炒茄子</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售13份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25300-558914']" ng-class="{disinbl:menuItemCount['25300-558914']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25300-558914']"></span>
                                                <span class="price fs14">￥25.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式干烧猪肉茄子"  accessorykey="25300-558916" data-sale="9" data-price="25.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式干烧猪肉茄子</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售9份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25300-558916']" ng-class="{disinbl:menuItemCount['25300-558916']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25300-558916']"></span>
                                                <span class="price fs14">￥25.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式干烧鲳鱼"  accessorykey="25300-558870" data-sale="4" data-price="88.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式干烧鲳鱼</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售4份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25300-558870']" ng-class="{disinbl:menuItemCount['25300-558870']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25300-558870']"></span>
                                                <span class="price fs14">￥88.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式咖喱猪排"  accessorykey="25300-558901" data-sale="7" data-price="40.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式咖喱猪排</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售7份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25300-558901']" ng-class="{disinbl:menuItemCount['25300-558901']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25300-558901']"></span>
                                                <span class="price fs14">￥40.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式咖喱牛肉"  accessorykey="25300-558902" data-sale="12" data-price="38.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式咖喱牛肉</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售12份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25300-558902']" ng-class="{disinbl:menuItemCount['25300-558902']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25300-558902']"></span>
                                                <span class="price fs14">￥38.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式煮猪排"  accessorykey="25300-558904" data-sale="3" data-price="36.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式煮猪排</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售3份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25300-558904']" ng-class="{disinbl:menuItemCount['25300-558904']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25300-558904']"></span>
                                                <span class="price fs14">￥36.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式蟹味菇茄子铁板烧肉"  accessorykey="25300-558909" data-sale="14" data-price="25.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式蟹味菇茄子铁板烧肉</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售14份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25300-558909']" ng-class="{disinbl:menuItemCount['25300-558909']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25300-558909']"></span>
                                                <span class="price fs14">￥25.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式八宝菜"  accessorykey="25300-558910" data-sale="5" data-price="26.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式八宝菜</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售5份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25300-558910']" ng-class="{disinbl:menuItemCount['25300-558910']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25300-558910']"></span>
                                                <span class="price fs14">￥26.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式干烧虾仁"  accessorykey="25300-558900" data-sale="7" data-price="68.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式干烧虾仁</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售7份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25300-558900']" ng-class="{disinbl:menuItemCount['25300-558900']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25300-558900']"></span>
                                                <span class="price fs14">￥68.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式辣白菜炒肉"  accessorykey="25300-558907" data-sale="22" data-price="28.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式辣白菜炒肉</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售22份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25300-558907']" ng-class="{disinbl:menuItemCount['25300-558907']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25300-558907']"></span>
                                                <span class="price fs14">￥28.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    <article class="collapse section-25302">
                        <header accordion>
                            <h3 class="ellipsis" title="盖浇饭系列">
                                盖浇饭系列
                                
                            </h3>
                            <span ng-if="sectionCount['25302']" ng-class="{disinbl:sectionCount['25302']}"
                                  class="badge disnone" ng-bind="sectionCount['25302']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                            
                            <ul class="clearfix menu-group">
                                 
                                            
                                    <li title="咖喱鸡腿盖浇饭"  accessorykey="25302-559056" data-sale="12" data-price="22.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">咖喱鸡腿盖浇饭</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售12份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25302-559056']" ng-class="{disinbl:menuItemCount['25302-559056']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25302-559056']"></span>
                                                <span class="price fs14">￥22.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="牛丼/中"  accessorykey="25302-559060" data-sale="29" data-price="25.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">牛丼/中</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售29份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25302-559060']" ng-class="{disinbl:menuItemCount['25302-559060']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25302-559060']"></span>
                                                <span class="price fs14">￥25.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="麻婆饭"  accessorykey="25302-559061" data-sale="6" data-price="20.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">麻婆饭</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售6份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25302-559061']" ng-class="{disinbl:menuItemCount['25302-559061']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25302-559061']"></span>
                                                <span class="price fs14">￥20.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="中华饭"  accessorykey="25302-559062" data-sale="9" data-price="18.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">中华饭</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售9份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25302-559062']" ng-class="{disinbl:menuItemCount['25302-559062']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25302-559062']"></span>
                                                <span class="price fs14">￥18.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="牛丼/大"  accessorykey="25302-559052" data-sale="27" data-price="28.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">牛丼/大</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售27份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25302-559052']" ng-class="{disinbl:menuItemCount['25302-559052']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25302-559052']"></span>
                                                <span class="price fs14">￥28.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="咖喱猪排盖浇饭"  accessorykey="25302-559054" data-sale="14" data-price="23.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">咖喱猪排盖浇饭</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售14份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25302-559054']" ng-class="{disinbl:menuItemCount['25302-559054']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25302-559054']"></span>
                                                <span class="price fs14">￥23.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="干烧鸡蛋饭"  accessorykey="25302-559055" data-sale="5" data-price="22.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">干烧鸡蛋饭</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售5份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25302-559055']" ng-class="{disinbl:menuItemCount['25302-559055']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25302-559055']"></span>
                                                <span class="price fs14">￥22.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="亲子饭"  accessorykey="25302-2180153" data-sale="0" data-price="24.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">亲子饭</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl"></span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25302-2180153']" ng-class="{disinbl:menuItemCount['25302-2180153']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25302-2180153']"></span>
                                                <span class="price fs14">￥24.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="烧肉丼"  accessorykey="25302-559058" data-sale="9" data-price="25.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">烧肉丼</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售9份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25302-559058']" ng-class="{disinbl:menuItemCount['25302-559058']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25302-559058']"></span>
                                                <span class="price fs14">￥25.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    <article class="collapse section-122476">
                        <header accordion>
                            <h3 class="ellipsis" title="日式沾沾面类">
                                日式沾沾面类
                                
                            </h3>
                            <span ng-if="sectionCount['122476']" ng-class="{disinbl:sectionCount['122476']}"
                                  class="badge disnone" ng-bind="sectionCount['122476']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                              
                            <ul class="clearfix menu-group menu-group-img menu-first-load">
                                 
                                            
                                    <li title="日式芝麻味噌沾沾面(原价32元)(芝麻味噌味)" class="menu-item hasImg" accessorykey="122476-1562368" data-sale="14" data-price="26.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14266885069648087543265428394?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式芝麻味噌沾沾面(原价32元)</span></div>
                                        <p class="ellipsis meun-item-des">芝麻味噌味</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥26.00</span>
                                            <span ng-if="menuItemCount['122476-1562368']" ng-class="{disinbl:menuItemCount['122476-1562368']}"
                                                  class="badge disnone" ng-bind="menuItemCount['122476-1562368']"></span>
                                            <span class="fr">已售14份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式辛味芝麻沾沾面(原价32元(辣味)" class="menu-item hasImg" accessorykey="122476-1562366" data-sale="19" data-price="26.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142668843896746840784954838455?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式辛味芝麻沾沾面(原价32元</span></div>
                                        <p class="ellipsis meun-item-des">辣味</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥26.00</span>
                                            <span ng-if="menuItemCount['122476-1562366']" ng-class="{disinbl:menuItemCount['122476-1562366']}"
                                                  class="badge disnone" ng-bind="menuItemCount['122476-1562366']"></span>
                                            <span class="fr">已售19份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式海鲜酱油沾沾面(原价32元)(酱油味)" class="menu-item hasImg" accessorykey="122476-1562367" data-sale="9" data-price="26.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/1426688485140022877077106386423?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式海鲜酱油沾沾面(原价32元)</span></div>
                                        <p class="ellipsis meun-item-des">酱油味</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥26.00</span>
                                            <span ng-if="menuItemCount['122476-1562367']" ng-class="{disinbl:menuItemCount['122476-1562367']}"
                                                  class="badge disnone" ng-bind="menuItemCount['122476-1562367']"></span>
                                            <span class="fr">已售9份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                            
                            <ul class="clearfix menu-group">
                                 
                                    
                                 
                                    
                                 
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    <article class="collapse section-168983">
                        <header accordion>
                            <h3 class="ellipsis" title="寿喜锅系列">
                                寿喜锅系列
                                
                            </h3>
                            <span ng-if="sectionCount['168983']" ng-class="{disinbl:sectionCount['168983']}"
                                  class="badge disnone" ng-bind="sectionCount['168983']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                              
                            <ul class="clearfix menu-group menu-group-img menu-first-load">
                                 
                                            
                                    <li title="肥牛寿喜锅(汤/汤食类)" class="menu-item hasImg" accessorykey="168983-2026769" data-sale="6" data-price="28.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258120091488188448394648731?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">肥牛寿喜锅</span></div>
                                        <p class="ellipsis meun-item-des">汤/汤食类</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥28.00</span>
                                            <span ng-if="menuItemCount['168983-2026769']" ng-class="{disinbl:menuItemCount['168983-2026769']}"
                                                  class="badge disnone" ng-bind="menuItemCount['168983-2026769']"></span>
                                            <span class="fr">已售6份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="蟹排寿喜锅(汤/汤食类)" class="menu-item hasImg" accessorykey="168983-2026771" data-sale="0" data-price="24.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258120215667389527354389429?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">蟹排寿喜锅</span></div>
                                        <p class="ellipsis meun-item-des">汤/汤食类</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥24.00</span>
                                            <span ng-if="menuItemCount['168983-2026771']" ng-class="{disinbl:menuItemCount['168983-2026771']}"
                                                  class="badge disnone" ng-bind="menuItemCount['168983-2026771']"></span>
                                            <span class="fr"></span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="海鲜寿喜锅(汤/汤食类)" class="menu-item hasImg" accessorykey="168983-2026772" data-sale="1" data-price="28.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258120362925413152968976647?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">海鲜寿喜锅</span></div>
                                        <p class="ellipsis meun-item-des">汤/汤食类</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥28.00</span>
                                            <span ng-if="menuItemCount['168983-2026772']" ng-class="{disinbl:menuItemCount['168983-2026772']}"
                                                  class="badge disnone" ng-bind="menuItemCount['168983-2026772']"></span>
                                            <span class="fr">已售1份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="寿喜锅年糕(汤/汤食类)" class="menu-item hasImg" accessorykey="168983-2026785" data-sale="0" data-price="24.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142581206031728475282015278935?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">寿喜锅年糕</span></div>
                                        <p class="ellipsis meun-item-des">汤/汤食类</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥24.00</span>
                                            <span ng-if="menuItemCount['168983-2026785']" ng-class="{disinbl:menuItemCount['168983-2026785']}"
                                                  class="badge disnone" ng-bind="menuItemCount['168983-2026785']"></span>
                                            <span class="fr"></span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="寿喜锅乌冬面(汤/汤食类)" class="menu-item hasImg" accessorykey="168983-2026781" data-sale="3" data-price="24.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258120490529422179013490677?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">寿喜锅乌冬面</span></div>
                                        <p class="ellipsis meun-item-des">汤/汤食类</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥24.00</span>
                                            <span ng-if="menuItemCount['168983-2026781']" ng-class="{disinbl:menuItemCount['168983-2026781']}"
                                                  class="badge disnone" ng-bind="menuItemCount['168983-2026781']"></span>
                                            <span class="fr">已售3份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="寿喜锅(汤/汤食类)" class="menu-item hasImg" accessorykey="168983-2026767" data-sale="2" data-price="21.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258119905496936784696299583?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">寿喜锅</span></div>
                                        <p class="ellipsis meun-item-des">汤/汤食类</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥21.00</span>
                                            <span ng-if="menuItemCount['168983-2026767']" ng-class="{disinbl:menuItemCount['168983-2026767']}"
                                                  class="badge disnone" ng-bind="menuItemCount['168983-2026767']"></span>
                                            <span class="fr">已售2份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                            
                            <ul class="clearfix menu-group">
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    <article class="collapse section-168984">
                        <header accordion>
                            <h3 class="ellipsis" title="寿喜锅套餐系列(套餐)">
                                寿喜锅套餐系列
                                <span class="menu-description">套餐</span>
                            </h3>
                            <span ng-if="sectionCount['168984']" ng-class="{disinbl:sectionCount['168984']}"
                                  class="badge disnone" ng-bind="sectionCount['168984']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                              
                            <ul class="clearfix menu-group menu-group-img menu-first-load">
                                 
                                            
                                    <li title="肥牛寿喜锅套餐特价(汤+米饭+小份油淋鸡)" class="menu-item hasImg" accessorykey="168984-2026800" data-sale="5" data-price="41.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258119354368155831098556519?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">肥牛寿喜锅套餐特价</span></div>
                                        <p class="ellipsis meun-item-des">汤+米饭+小份油淋鸡</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥41.00</span>
                                            <span ng-if="menuItemCount['168984-2026800']" ng-class="{disinbl:menuItemCount['168984-2026800']}"
                                                  class="badge disnone" ng-bind="menuItemCount['168984-2026800']"></span>
                                            <span class="fr">已售5份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="寿喜锅套餐特价(汤+米饭+小份油淋鸡)" class="menu-item hasImg" accessorykey="168984-2026794" data-sale="0" data-price="34.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142581197008417081292811781168?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">寿喜锅套餐特价</span></div>
                                        <p class="ellipsis meun-item-des">汤+米饭+小份油淋鸡</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥34.00</span>
                                            <span ng-if="menuItemCount['168984-2026794']" ng-class="{disinbl:menuItemCount['168984-2026794']}"
                                                  class="badge disnone" ng-bind="menuItemCount['168984-2026794']"></span>
                                            <span class="fr"></span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="蟹排寿喜锅套餐特价(汤+米饭+小份油淋鸡)" class="menu-item hasImg" accessorykey="168984-2026803" data-sale="1" data-price="37.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258119512429560842211358249?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">蟹排寿喜锅套餐特价</span></div>
                                        <p class="ellipsis meun-item-des">汤+米饭+小份油淋鸡</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥37.00</span>
                                            <span ng-if="menuItemCount['168984-2026803']" ng-class="{disinbl:menuItemCount['168984-2026803']}"
                                                  class="badge disnone" ng-bind="menuItemCount['168984-2026803']"></span>
                                            <span class="fr">已售1份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="海鲜寿喜锅套餐特价(汤+米饭+小份油淋鸡)" class="menu-item hasImg" accessorykey="168984-2026805" data-sale="0" data-price="41.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142581196022216549888695590198?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">海鲜寿喜锅套餐特价</span></div>
                                        <p class="ellipsis meun-item-des">汤+米饭+小份油淋鸡</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥41.00</span>
                                            <span ng-if="menuItemCount['168984-2026805']" ng-class="{disinbl:menuItemCount['168984-2026805']}"
                                                  class="badge disnone" ng-bind="menuItemCount['168984-2026805']"></span>
                                            <span class="fr"></span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                            
                            <ul class="clearfix menu-group">
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    <article class="collapse section-168980">
                        <header accordion>
                            <h3 class="ellipsis" title="刺身系列">
                                刺身系列
                                
                            </h3>
                            <span ng-if="sectionCount['168980']" ng-class="{disinbl:sectionCount['168980']}"
                                  class="badge disnone" ng-bind="sectionCount['168980']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                            
                            <ul class="clearfix menu-group">
                                 
                                            
                                    <li title="生鲷特价"  accessorykey="168980-2026648" data-sale="0" data-price="40.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">生鲷特价</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl"></span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['168980-2026648']" ng-class="{disinbl:menuItemCount['168980-2026648']}"
                                                      class="badge disnone" ng-bind="menuItemCount['168980-2026648']"></span>
                                                <span class="price fs14">￥40.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="三文鱼/中"  accessorykey="168980-2026646" data-sale="1" data-price="48.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">三文鱼/中</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售1份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['168980-2026646']" ng-class="{disinbl:menuItemCount['168980-2026646']}"
                                                      class="badge disnone" ng-bind="menuItemCount['168980-2026646']"></span>
                                                <span class="price fs14">￥48.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="三文鱼/大"  accessorykey="168980-2026647" data-sale="0" data-price="88.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">三文鱼/大</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl"></span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['168980-2026647']" ng-class="{disinbl:menuItemCount['168980-2026647']}"
                                                      class="badge disnone" ng-bind="menuItemCount['168980-2026647']"></span>
                                                <span class="price fs14">￥88.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    <article class="collapse section-25308">
                        <header accordion>
                            <h3 class="ellipsis" title="特色煎饺">
                                特色煎饺
                                
                            </h3>
                            <span ng-if="sectionCount['25308']" ng-class="{disinbl:sectionCount['25308']}"
                                  class="badge disnone" ng-bind="sectionCount['25308']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                              
                            <ul class="clearfix menu-group menu-group-img menu-first-load">
                                 
                                            
                                    <li title="煎饺/小(5个)" class="menu-item hasImg" accessorykey="25308-559152" data-sale="59" data-price="11.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/1425811904449027837260626256466?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">煎饺/小</span></div>
                                        <p class="ellipsis meun-item-des">5个</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥11.00</span>
                                            <span ng-if="menuItemCount['25308-559152']" ng-class="{disinbl:menuItemCount['25308-559152']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25308-559152']"></span>
                                            <span class="fr">已售59份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                    
                                 
                                    
                                
                            </ul>
                            
                            <ul class="clearfix menu-group">
                                 
                                    
                                 
                                            
                                    <li title="煎饺/大(15个)"  accessorykey="25308-559146" data-sale="26" data-price="31.00" class="menu-item">
                                        <div class="menu-group-body clearfix menu-info-container ">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">煎饺/大</p>
                                                <p class="menu-description ellipsis">15个</p>
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售26份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25308-559146']" ng-class="{disinbl:menuItemCount['25308-559146']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25308-559146']"></span>
                                                <span class="price fs14">￥31.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="煎饺/中(10个)"  accessorykey="25308-559151" data-sale="44" data-price="21.00" class="menu-item">
                                        <div class="menu-group-body clearfix menu-info-container ">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">煎饺/中</p>
                                                <p class="menu-description ellipsis">10个</p>
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售44份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25308-559151']" ng-class="{disinbl:menuItemCount['25308-559151']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25308-559151']"></span>
                                                <span class="price fs14">￥21.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    <article class="collapse section-25299">
                        <header accordion>
                            <h3 class="ellipsis" title="特色油淋鸡/布丁">
                                特色油淋鸡/布丁
                                
                            </h3>
                            <span ng-if="sectionCount['25299']" ng-class="{disinbl:sectionCount['25299']}"
                                  class="badge disnone" ng-bind="sectionCount['25299']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                              
                            <ul class="clearfix menu-group menu-group-img menu-first-load">
                                 
                                            
                                    <li title="日式油淋鸡" class="menu-item hasImg" accessorykey="25299-558862" data-sale="172" data-price="26.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142581212597419827453279867768?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">日式油淋鸡</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥26.00</span>
                                            <span ng-if="menuItemCount['25299-558862']" ng-class="{disinbl:menuItemCount['25299-558862']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25299-558862']"></span>
                                            <span class="fr">已售172份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="密制大布丁特价" class="menu-item hasImg" accessorykey="25299-558868" data-sale="480" data-price="15.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/1425812370943506022191606462?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">密制大布丁特价</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥15.00</span>
                                            <span ng-if="menuItemCount['25299-558868']" ng-class="{disinbl:menuItemCount['25299-558868']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25299-558868']"></span>
                                            <span class="fr">已售480份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                            
                            <ul class="clearfix menu-group">
                                 
                                    
                                 
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    <article class="collapse section-25304">
                        <header accordion>
                            <h3 class="ellipsis" title="蔬菜色拉系列">
                                蔬菜色拉系列
                                
                            </h3>
                            <span ng-if="sectionCount['25304']" ng-class="{disinbl:sectionCount['25304']}"
                                  class="badge disnone" ng-bind="sectionCount['25304']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                            
                            <ul class="clearfix menu-group">
                                 
                                            
                                    <li title="芝麻和风色拉"  accessorykey="25304-559091" data-sale="149" data-price="17.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">芝麻和风色拉</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售149份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25304-559091']" ng-class="{disinbl:menuItemCount['25304-559091']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25304-559091']"></span>
                                                <span class="price fs14">￥17.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="和风色拉"  accessorykey="25304-559092" data-sale="28" data-price="15.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">和风色拉</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售28份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25304-559092']" ng-class="{disinbl:menuItemCount['25304-559092']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25304-559092']"></span>
                                                <span class="price fs14">￥15.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式辣白菜"  accessorykey="25304-559093" data-sale="33" data-price="10.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式辣白菜</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售33份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25304-559093']" ng-class="{disinbl:menuItemCount['25304-559093']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25304-559093']"></span>
                                                <span class="price fs14">￥10.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="日式海草"  accessorykey="25304-559094" data-sale="65" data-price="10.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">日式海草</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售65份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25304-559094']" ng-class="{disinbl:menuItemCount['25304-559094']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25304-559094']"></span>
                                                <span class="price fs14">￥10.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="金针菇拌黄瓜"  accessorykey="25304-559079" data-sale="31" data-price="16.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">金针菇拌黄瓜</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售31份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25304-559079']" ng-class="{disinbl:menuItemCount['25304-559079']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25304-559079']"></span>
                                                <span class="price fs14">￥16.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    <article class="collapse section-25306">
                        <header accordion>
                            <h3 class="ellipsis" title="炒面系列">
                                炒面系列
                                
                            </h3>
                            <span ng-if="sectionCount['25306']" ng-class="{disinbl:sectionCount['25306']}"
                                  class="badge disnone" ng-bind="sectionCount['25306']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                            
                            <ul class="clearfix menu-group">
                                 
                                            
                                    <li title="铁板炒乌冬面"  accessorykey="25306-559108" data-sale="202" data-price="18.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">铁板炒乌冬面</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售202份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25306-559108']" ng-class="{disinbl:menuItemCount['25306-559108']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25306-559108']"></span>
                                                <span class="price fs14">￥18.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    <article class="collapse section-25307">
                        <header accordion>
                            <h3 class="ellipsis" title="烤物系列">
                                烤物系列
                                
                            </h3>
                            <span ng-if="sectionCount['25307']" ng-class="{disinbl:sectionCount['25307']}"
                                  class="badge disnone" ng-bind="sectionCount['25307']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                              
                            <ul class="clearfix menu-group menu-group-img menu-first-load">
                                 
                                            
                                    <li title="烤多春鱼/4条" class="menu-item hasImg" accessorykey="25307-559144" data-sale="30" data-price="16.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142806939755403276293305680156?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">烤多春鱼/4条</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥16.00</span>
                                            <span ng-if="menuItemCount['25307-559144']" ng-class="{disinbl:menuItemCount['25307-559144']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25307-559144']"></span>
                                            <span class="fr">已售30份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="烤三文鱼" class="menu-item hasImg" accessorykey="25307-559114" data-sale="22" data-price="38.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14280693667756922184340655804?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">烤三文鱼</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥38.00</span>
                                            <span ng-if="menuItemCount['25307-559114']" ng-class="{disinbl:menuItemCount['25307-559114']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25307-559114']"></span>
                                            <span class="fr">已售22份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="烤鲳鱼/条" class="menu-item hasImg" accessorykey="25307-559141" data-sale="9" data-price="25.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/1428069377305640650216024369?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">烤鲳鱼/条</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥25.00</span>
                                            <span ng-if="menuItemCount['25307-559141']" ng-class="{disinbl:menuItemCount['25307-559141']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25307-559141']"></span>
                                            <span class="fr">已售9份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="烤秋刀鱼/条" class="menu-item hasImg" accessorykey="25307-559143" data-sale="82" data-price="18.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14280693866656245490235742182?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">烤秋刀鱼/条</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥18.00</span>
                                            <span ng-if="menuItemCount['25307-559143']" ng-class="{disinbl:menuItemCount['25307-559143']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25307-559143']"></span>
                                            <span class="fr">已售82份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="烤青花鱼" class="menu-item hasImg" accessorykey="25307-559139" data-sale="29" data-price="28.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/1428069415215042204298079013824?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">烤青花鱼</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥28.00</span>
                                            <span ng-if="menuItemCount['25307-559139']" ng-class="{disinbl:menuItemCount['25307-559139']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25307-559139']"></span>
                                            <span class="fr">已售29份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                            
                            <ul class="clearfix menu-group">
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    <article class="collapse section-25310">
                        <header accordion>
                            <h3 class="ellipsis" title="米饭">
                                米饭
                                
                            </h3>
                            <span ng-if="sectionCount['25310']" ng-class="{disinbl:sectionCount['25310']}"
                                  class="badge disnone" ng-bind="sectionCount['25310']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                              
                            <ul class="clearfix menu-group menu-group-img menu-first-load">
                                 
                                            
                                    <li title="米饭/中" class="menu-item hasImg" accessorykey="25310-559159" data-sale="108" data-price="3.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14266040049219962146454490721?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">米饭/中</span></div>
                                        <p class="ellipsis meun-item-des"></p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥3.00</span>
                                            <span ng-if="menuItemCount['25310-559159']" ng-class="{disinbl:menuItemCount['25310-559159']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25310-559159']"></span>
                                            <span class="fr">已售108份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                    
                                
                            </ul>
                            
                            <ul class="clearfix menu-group">
                                 
                                    
                                 
                                            
                                    <li title="米饭/大"  accessorykey="25310-560160" data-sale="37" data-price="5.00" class="menu-item">
                                        <div class="menu-group-body clearfix  menu-nohas-container">
                                            <div class="menu-name-container fl">
                                                <p class="menu-name ellipsis">米饭/大</p>
                                                
                                            </div>
                                            <span class="sale fs12 ellipsis fl">已售37份</span>
                                            <span class="fr">
                                                <span ng-if="menuItemCount['25310-560160']" ng-class="{disinbl:menuItemCount['25310-560160']}"
                                                      class="badge disnone" ng-bind="menuItemCount['25310-560160']"></span>
                                                <span class="price fs14">￥5.00</span>
                                                
                                                <span class="menu-item-label visiblehidden"></span>
                                            </span>
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    <article class="collapse section-25311">
                        <header accordion>
                            <h3 class="ellipsis" title="饮料">
                                饮料
                                
                            </h3>
                            <span ng-if="sectionCount['25311']" ng-class="{disinbl:sectionCount['25311']}"
                                  class="badge disnone" ng-bind="sectionCount['25311']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                              
                            <ul class="clearfix menu-group menu-group-img menu-first-load">
                                 
                                            
                                    <li title="黑乌龙茶   (瓶)" class="menu-item hasImg" accessorykey="25311-559200" data-sale="24" data-price="8.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142581155250225208035157993436?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">黑乌龙茶   </span></div>
                                        <p class="ellipsis meun-item-des">瓶</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥8.00</span>
                                            <span ng-if="menuItemCount['25311-559200']" ng-class="{disinbl:menuItemCount['25311-559200']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25311-559200']"></span>
                                            <span class="fr">已售24份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="雪碧 (罐)" class="menu-item hasImg" accessorykey="25311-559203" data-sale="7" data-price="6.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142581157141205054806708358228?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">雪碧 </span></div>
                                        <p class="ellipsis meun-item-des">罐</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥6.00</span>
                                            <span ng-if="menuItemCount['25311-559203']" ng-class="{disinbl:menuItemCount['25311-559203']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25311-559203']"></span>
                                            <span class="fr">已售7份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="百事可乐(罐)" class="menu-item hasImg" accessorykey="25311-559204" data-sale="11" data-price="6.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142581158197425344133260659873?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">百事可乐</span></div>
                                        <p class="ellipsis meun-item-des">罐</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥6.00</span>
                                            <span ng-if="menuItemCount['25311-559204']" ng-class="{disinbl:menuItemCount['25311-559204']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25311-559204']"></span>
                                            <span class="fr">已售11份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="可口可乐(罐)" class="menu-item hasImg" accessorykey="25311-559205" data-sale="13" data-price="6.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258115944954149988682474941?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">可口可乐</span></div>
                                        <p class="ellipsis meun-item-des">罐</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥6.00</span>
                                            <span ng-if="menuItemCount['25311-559205']" ng-class="{disinbl:menuItemCount['25311-559205']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25311-559205']"></span>
                                            <span class="fr">已售13份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="果粒橙1.25L(瓶)" class="menu-item hasImg" accessorykey="25311-560751" data-sale="1" data-price="18.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142581162698406904030777513981?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">果粒橙1.25L</span></div>
                                        <p class="ellipsis meun-item-des">瓶</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥18.00</span>
                                            <span ng-if="menuItemCount['25311-560751']" ng-class="{disinbl:menuItemCount['25311-560751']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25311-560751']"></span>
                                            <span class="fr">已售1份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="加多宝(罐)" class="menu-item hasImg" accessorykey="25311-559206" data-sale="18" data-price="8.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258116062443986762883141637?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">加多宝</span></div>
                                        <p class="ellipsis meun-item-des">罐</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥8.00</span>
                                            <span ng-if="menuItemCount['25311-559206']" ng-class="{disinbl:menuItemCount['25311-559206']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25311-559206']"></span>
                                            <span class="fr">已售18份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="红牛(罐)" class="menu-item hasImg" accessorykey="25311-559198" data-sale="4" data-price="10.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258115349614898559188004583?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">红牛</span></div>
                                        <p class="ellipsis meun-item-des">罐</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥10.00</span>
                                            <span ng-if="menuItemCount['25311-559198']" ng-class="{disinbl:menuItemCount['25311-559198']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25311-559198']"></span>
                                            <span class="fr">已售4份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="可口可乐2L(瓶)" class="menu-item hasImg" accessorykey="25311-2026566" data-sale="0" data-price="15.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258116368907343224382493645?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">可口可乐2L</span></div>
                                        <p class="ellipsis meun-item-des">瓶</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥15.00</span>
                                            <span ng-if="menuItemCount['25311-2026566']" ng-class="{disinbl:menuItemCount['25311-2026566']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25311-2026566']"></span>
                                            <span class="fr"></span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="百事可乐2L(瓶)" class="menu-item hasImg" accessorykey="25311-2026567" data-sale="0" data-price="15.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258116466206997791028115898?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">百事可乐2L</span></div>
                                        <p class="ellipsis meun-item-des">瓶</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥15.00</span>
                                            <span ng-if="menuItemCount['25311-2026567']" ng-class="{disinbl:menuItemCount['25311-2026567']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25311-2026567']"></span>
                                            <span class="fr"></span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="雪碧2L(瓶)" class="menu-item hasImg" accessorykey="25311-2026568" data-sale="1" data-price="15.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142581165577202025330113247037?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">雪碧2L</span></div>
                                        <p class="ellipsis meun-item-des">瓶</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥15.00</span>
                                            <span ng-if="menuItemCount['25311-2026568']" ng-class="{disinbl:menuItemCount['25311-2026568']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25311-2026568']"></span>
                                            <span class="fr">已售1份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="百岁山570ml(瓶)" class="menu-item hasImg" accessorykey="25311-2026569" data-sale="0" data-price="5.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142581166822627141066011972725?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">百岁山570ml</span></div>
                                        <p class="ellipsis meun-item-des">瓶</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥5.00</span>
                                            <span ng-if="menuItemCount['25311-2026569']" ng-class="{disinbl:menuItemCount['25311-2026569']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25311-2026569']"></span>
                                            <span class="fr"></span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="无糖乌龙茶500cl(瓶)" class="menu-item hasImg" accessorykey="25311-2026570" data-sale="1" data-price="6.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/142581168360349328217282891273?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">无糖乌龙茶500cl</span></div>
                                        <p class="ellipsis meun-item-des">瓶</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥6.00</span>
                                            <span ng-if="menuItemCount['25311-2026570']" ng-class="{disinbl:menuItemCount['25311-2026570']}"
                                                  class="badge disnone" ng-bind="menuItemCount['25311-2026570']"></span>
                                            <span class="fr">已售1份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                            
                            <ul class="clearfix menu-group">
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                 
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    <article class="collapse section-56459">
                        <header accordion>
                            <h3 class="ellipsis" title="酒水(None)">
                                酒水
                                <span class="menu-description">None</span>
                            </h3>
                            <span ng-if="sectionCount['56459']" ng-class="{disinbl:sectionCount['56459']}"
                                  class="badge disnone" ng-bind="sectionCount['56459']"></span>
                            <i class="icon shrink-icon position"></i>
                        </header>
                        <section>
                              
                            <ul class="clearfix menu-group menu-group-img menu-first-load">
                                 
                                            
                                    <li title="三得利超爽啤酒(罐)" class="menu-item hasImg" accessorykey="56459-884769" data-sale="36" data-price="6.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258117096697485328000038862?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">三得利超爽啤酒</span></div>
                                        <p class="ellipsis meun-item-des">罐</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥6.00</span>
                                            <span ng-if="menuItemCount['56459-884769']" ng-class="{disinbl:menuItemCount['56459-884769']}"
                                                  class="badge disnone" ng-bind="menuItemCount['56459-884769']"></span>
                                            <span class="fr">已售36份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="青岛冰纯啤酒(罐)" class="menu-item hasImg" accessorykey="56459-884770" data-sale="1" data-price="8.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258117179149494583695195615?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">青岛冰纯啤酒</span></div>
                                        <p class="ellipsis meun-item-des">罐</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥8.00</span>
                                            <span ng-if="menuItemCount['56459-884770']" ng-class="{disinbl:menuItemCount['56459-884770']}"
                                                  class="badge disnone" ng-bind="menuItemCount['56459-884770']"></span>
                                            <span class="fr">已售1份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                 
                                            
                                    <li title="百威啤酒(瓶)" class="menu-item hasImg" accessorykey="56459-884773" data-sale="2" data-price="15.00">
                                        <div class="menu-item-img"> 
                                            <img data-src="http://dhcmenuitem.dhero.cn/14258117298517467306670732796?imageView2/1/w/202/h/202/" src="http://dhcrestaurantlogo.dhero.cn/0" width="202" height="202" />   
                                        </div>
                                        <div class="meun-item-name"><span class="ellipsis">百威啤酒</span></div>
                                        <p class="ellipsis meun-item-des">瓶</p>
                                        <div class="meun-item-sale clearfix">
                                            <span class="last"></span>
                                            <span class="price">￥15.00</span>
                                            <span ng-if="menuItemCount['56459-884773']" ng-class="{disinbl:menuItemCount['56459-884773']}"
                                                  class="badge disnone" ng-bind="menuItemCount['56459-884773']"></span>
                                            <span class="fr">已售2份</span>
                                            
                                        </div>
                                        
                                    </li>
                                    
                                
                            </ul>
                            
                            <ul class="clearfix menu-group">
                                 
                                    
                                 
                                    
                                 
                                    
                                
                            </ul>
                        </section>
                    </article>
                
                    </div>
                </div>
            </div>
            <aside class="fl">
                <article class="cart" scroll-position-static="160" top="42">
                    <div class="menu-cart">
                        <header>
                            <!-- <h4 class="ellipsis w100p" title="[半价菜][送可乐]樱花日本料理">[半价菜][送可乐]樱花日本料理</h4> -->
                            <h5>
                                购物车
                                <i class="icon trash-can-icon fr " ng-click="clearCart()"></i>
                            </h5>
                        </header>
                        <section>
                            <div class="inner-cart empty" ng-class="{empty:isEmpty}">
                                <div class="cart-thead clearfix">
                                    <div class="goods-name fs16">商品名</div>
                                    <div class="goods-count fs16">份数</div>
                                    <div class="goods-price fs16">单价</div>
                                    <div class="goods-subtotal fs16">小计</div>
                                </div>
                                <div class="cart-item-list select-none">
                                <input type="hidden" class="busiId" ng-bind="obj.id"/>
                                    <div class="disnone" ng-class="{disnone:isEmpty}">
                                        <div class="cart-item cart-data clearfix" ng-repeat="obj in cartDatas">
                                            <div class="goods-name ellipsis foodName" ng-bind="obj.name"></div>
                                            <input type="hidden" class="foodId" ng-bind="obj.id"/>
                                            <div class="goods-count clearfix ellipsis">
                                                <span class="goods-sub icon sub-icon fl" sub-goods="[[$index]]"></span>
                                                <span class="goods-nums fl" ng-bind="obj.quantity"></span>
                                                <span class="goods-add icon add-icon fl" ng-click="addGoodsNum($index)"></span>
                                            </div>
                                            <div class="goods-price">￥<span ng-bind="obj.price|number:2"></span></div>
                                            <div class="goods-subtotal">￥<span ng-bind="(obj.quantity * obj.price)|number:2"></span></div>

                                            <div class="accessory-item" ng-class="{firstitem:$first}" ng-repeat="item in obj.options">
                                                <div class="cart-item clearfix">
                                                    <div class="goods-name ellipsis" ng-bind="item.name"></div>
                                                    <div class="goods-count fs20">
                                                       <span class="goods-sub fl"></span>
                                                       <span class="goods-nums fl" ng-bind="item.quantity"></span>
                                                    </div>
                                                    <div class="goods-price">￥<span ng-bind="item.price|number:2"></span></div>
                                                    <div class="goods-subtotal">￥<span ng-bind="(item.price * item.quantity)|number:2"></span></div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--附加物-->
                                        <div class="cart-item cart-item-addendum cart-data clearfix" ng-repeat="addition in additions">
                                            <div class="goods-name ellipsis" ng-bind="addition.name"></div>
                                            <div class="goods-count clearfix ellipsis">
                                                <span class="goods-nums fl" ng-bind="addition.quantity"></span>
                                            </div>
                                            <div class="goods-price">￥<span ng-bind="addition.price|number:2"></span></div>
                                            <div class="goods-subtotal">￥<span ng-bind="(addition.price * addition.quantity)|number:2"></span></div>
                                        </div>
                                        <!--附加物-->
                                    </div>
                                    <div class="cart-item-empty">暂无商品，请在左边的菜单上点单</div>
                                </div>
                                <div id="cart-item-list"></div>
                                <div class="total clearfix disnone" ng-class="{disnone:isEmpty}">
                                    <div class="fl">配送费：${busiInfo.disFee }￥<span ng-bind="deliveryCost|number:2"></span></div>
                                    <div class="fr" value="">合计：￥<span ng-bind="total|number:2" class="totalPrice"></span></div>
                                </div>
                                <div class="checkout">
                                    <button class="checkout btn" onclick="xdMethod()" >立即下单</button>
                                </div>
                            </div>
                        </section>
                    </div>
                    
                    <article class="restaurant-notice">
                        <header>
                            餐厅活动
                        </header>
                        <section>
                            <ul>
                                
                                
                                    <li><i class="status-icon"></i><span>餐厅支持在线支付</span></li>
                                
                                
                                    
                                    <li><img src="http://dhcactivity.dhero.cn/Fg-4kUvXVpR1DRR0O3VFr73KHEQr?imageView2/1/w/15/h/15/" alt="" /><span>每单赠送价值15元进口果汁1瓶！</span></li>
                                    
                                    <li><img src="http://dhcactivity.dhero.cn/Flswo958RM8GgqlKACT4tY5kr5K7?imageView2/1/w/15/h/15/" alt="" /><span>活动菜品立减6元，多点多减！</span></li>
                                    
                                    <li><img src="http://dhcactivity.dhero.cn/FjnSIEuUzJvV6j-ifPq7zevJSt30?imageView2/1/w/15/h/15/" alt="" /><span>该餐厅已通过认证</span></li>
                                    
                                
                            </ul>
                        </section>
                    </article>
                    
                </article>
            </aside>
        </section>
        <span id="element" style="position:absolute;display:none" class="badge">1</span>
        <!--one tip-->
        <!-- <div class="common-layer" id="layer-tip"></div>
        <div id="point-tip" class="point-tip" ng-controller="tipController">
            <div class="point-tab">大家都在点</div>
            <em></em>
            <div class="point-main">
                <i></i>
                <p>看看大家都在点啥</p>
                <button ng-click="closeTip()">知道了</button>
            </div>
        </div> -->
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
    
    <dh-dialog class="disnone" height="420" type="search-address" header="" show="searchAddress">
    <div class="search-address-dialog" ng-controller="searchAddressCtrl">
        
        <div class="search-box">
            <h2>请输入用餐地址，校验是否在配送范围</h2>
            <autocomplete-box keyword="keyword" city="city_name" callback="selectedResult(text)"></autocomplete-box>
        </div>
        <section class="street-error" ng-class="{disblock:isNotFindStreet}">
            <p>很抱歉，我们很难找到您的地址。</p>
            <p>请您检查地址拼写/格式是否正确， 或者联系我们客服获得帮助：4001-517-577</p>
        </section>
        <div class="search-address-footer">
            <ul class="clearfix">
                <li><i class="search-address-img second"></i><span>填写地址、搜索餐厅</span></li>
                <li class="arrow"><i class="icon search-address-arrow-icon"></i></li>
                <li><i class="search-address-img"></i><span>订购美食</span></li>
                <li class="arrow"><i class="icon search-address-arrow-icon"></i></li>
                <li><i class="search-address-img third"></i><span>享受美食</span></li>
            </ul>
        </div>
    </div>
</dh-dialog>

<dh-dialog class="disnone" height="550" index="1001" type="street" header="请选择最靠近你的地址" show="addressShow">
    <ul class="select-street">
        <li ng-repeat="item in shreets" ng-click="resultClick(item)">
            <i class="icon address-yellow"></i>
            <div class="shreets-item">
                <h4 ng-bind="item.name"></h4>
                <h5 ng-bind="item.address"></h5>
            </div>
        </li>
    </ul>
    <div class="street-commet">
        <p>以上列出地址都不正确么？</p>
        <p>请您检查地址拼写/格式是否正确和 <a href="javascript:void(0)" class="link" ng-click="resetStreet()">重新输入您的地址</a>。</p>
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

    <dh-dialog type="search-address" hideclose="1" class="disnone" header="" show="notInRange">
        <div class="not-in-range">
            <p>此餐厅不在配送范围内，我们将展示您</p>
            <p class="fs20 link">附近可配送的全部餐厅。</p>
        </div>
    </dh-dialog>
    <dh-dialog type="accessory" class="disnone" header="[[accessoryTitle]]" show="accessoryShow">
        <div class="tab">
            <div class="tab-nav clearfix">
                <div class="fl">
                    <i class="icon tab-left-icon"></i>
                </div>
                <nav class="fl">
                    <ul class="accessory-nav clearfix" id="accessory-nav">
                        <li ng-class="{star:options.mandatory,active:curIndex==$index}" ng-init="init($index,options.mandatory)"
                            ng-click="changeAccessoryContent($index,options.mandatory)" ng-repeat="options in optionSets">
                            <span>
                                <span ng-bind="options.name"></span>
                                <span class="select-accessory-count">(<span ng-bind="selectTabCount[$index]"></span>)</span>
                            </span>
                        </li>
                    </ul>
                </nav>
                <div class="fr">
                    <i class="icon tab-right-icon"></i>
                </div>
            </div>
            <div class="tab-content">
                <ul class="accessory-main clearfix" ng-click="handleContentClick($event)">
                    <li ng-repeat="item in current_options.options" ng-class="{clearboth:$index%4==0}" ng-init="setCatchData(item);autoSelect()">
                        <div ng-if="current_options.mandatory">
                            <dh-radio model="optional[curIndex]" title="[[item.name]]" value="item.id" id="checked"></dh-radio>
                        </div>
                        <div ng-if="!current_options.mandatory">
                            <dh-checkbox model="optional[curIndex+'-'+$index]" title="[[item.name]]" value="item.id"></dh-checkbox>
                        </div>
                        <span class="accessory-price">￥[[item.price|number:2]]</span>
                    </li>
                </ul>
            </div>
        </div>
        <div class="checked-accessory">已选辅料( [[selectedAccessory.length]] )</div>
        <ul class="accessory-checked clearfix">
            <li ng-repeat="option in selectedAccessory" ng-class="{clearboth:$index%4==0}">
                 
                <div class="accessory-mandatory" ng-bind="option.name"></div>
                <span class="accessory-price">￥<span ng-bind="option.price|number:2"></span></span>
            </li>
        </ul>
        <div class="accessory-total">
            <div class="food-price"><span ng-bind="footItemName"></span>：￥<span ng-bind="footItemPrice|number:2"></span></div>
            <div class="accessory-price">已选辅料价格：￥<span ng-bind="selectedAccessoryPrice|number:2"></span></div>
            <div class="subtotal">小计：￥<span ng-bind="subtotal|number:2"></span></div>
            <div class="add-cart">
                <button class="btn" ng-disabled="isDisabledPut" ng-click="putCart()">
                    <i class="icon cart-icon2"></i>
                    放到购物车
                </button>
            </div>
        </div>
    </dh-dialog>
    <dh-dialog class="disnone" type="alert" index="1001" header="" show="createOrderError">
        <div class="alert-box error">
            <p style="padding-right:20px;">
                <span ng-bind="createOrderErrorMsg"></span><a href="javascript:" title="清空购物车" class="clearShopingCart" ng-show="clearShopCart" ng-click="clearShopingCart()">清空购物车</a>
            </p>
        </div>
    </dh-dialog>
    <dh-dialog class="disnone" type="alert" index="1001" header="" show="showErrorMsg">
        <div class="alert-box" ng-class="errorIcon">
            <p ng-bind="errorMsg"></p>
        </div>
    </dh-dialog>
    <dh-dialog class="disnone" type="alert" index="1002" header="" show="restaurantRest">
        <div class="alert-box warning">
            <p>该餐厅休息中，暂不支持下单。</p>
        </div>
    </dh-dialog>

     <ul class="site-fixed">
        <li class="scroll-top"><img src="images/scroll_top1.png" alt=""/> </li>
        <li class="scorll-feekback" ng-click="userFeedback=true">
            <img src="images/scorll_feekback.png" alt=""/>
            <div>意见反馈</div>
        </li>
        <li class="scroll-wx">
            <img src="images/scroll_wx.png" alt=""/>
             <div><img src="images/wx.png" alt=""/></div>
        </li>
    </ul>
    
    <script type="text/javascript" src="${pageContext.request.contextPath }/wmcr/js/angular.min.js"></script>
    <script src="${pageContext.request.contextPath }/wmcr/js/common.js"></script>
    
    
    

    <script src="${pageContext.request.contextPath }/wmcr/js/service.js"></script>
    
    <script>var feedbackUrl = '/ajax/feedback/';var app = angular.module("app", ["dh.dialog", "dh.form", 'dh.service', 'dh.other']);</script>
    <!--[if lt IE 9]><script src="js/fix.js"></script><![endif]-->
    
    
    <script>
    var sections=[{
    	"description": null,
    	"image": null,
    	"recommended": true,
    	"id": 39215,
    	"menu_items": [
    		<c:forEach items="${foodList.data}" var="v">
    		{
    		"qiniu_url": 

    "http://dhcmenuitem.dhero.cn/142615425540822113425540737808",
    		"additions": [],
    		"name": "${v.foodName}",
    		"optionsets": [],
    		"ordercount": ${v.salNum},
    		"position": 0,
    		"price": ${v.price},
    		"id": ${v.id},
    		"description": "${v.des}"
    	},
    	</c:forEach>
    	],
    	"name": "店主推荐"
    }],accessoryObj = {},orderObj=[],other_order={};
        if(sections){
            for(var i = 0 , len = sections.length; i < len; i++){
                var sectionObj = sections[i] , key = '';
                for(var j = 0 , itemLen = sectionObj.menu_items.length; j < itemLen; j++){
                    var menuItemObj = sectionObj.menu_items[j];
                    key = sectionObj.id + '-' + menuItemObj.id;
                    menuItemObj.key = key;
                    menuItemObj.sectionId = sectionObj.id;
                    accessoryObj[key] = menuItemObj;
                }
            }
        }

        if(other_order&&other_order.items){
            //order data
            for(var j=0;j<other_order.items.length;j++){
                if(other_order.items[j].status==true){
                    orderObj.push(other_order.items[j]);
                }
            }   
        }
        var restaurantId='1592';
        var restaurantInRange = true;
        var grid_locationId =  602341 ;
        var inRange = true;
        var can_process_order = true;
        var create_order_url = "/mobile/ajax/create_order/";
        var checkout_url = "/checkout/0/";
        var restaurant_list_url = "/restaurants/0/";
        var favoriteUrl = "/ajax/restaurant/0/favorite/";
        var delivery = {minimum_order_quantity:'150',free_delivery_treshold:'0',delivery_fee:'0' }
    </script>
    <script src="${pageContext.request.contextPath }/wmcr/js/menupage.js"></script>
    <script src="${pageContext.request.contextPath }/wmcr/js/favorite.js"></script>

    
    <script>angular.bootstrap(document, ["app"]);</script>

    <!-- Baidu Analytics -->

<script src="${pageContext.request.contextPath }/wmcr/js/jquery-1.8.1.js"></script>
<script>
	
	//下单操作
	function xdMethod(){
		var ids="";
		var nums="";
		$.each($(".foodId"),function(i,v){
			ids+=$(this).text()+",";
		});
		$.each($(".goods-nums"),function(i,v){
			nums+=$(this).text()+",";
		});
		var totalPrice=$(".totalPrice").text();
		location.href='${pageContext.request.contextPath }/ohs.do?op=add&nums='+nums+'&totalPrice='+totalPrice+'&busiId='+${busiId}+'&ids='+ids;
	}
</script>


</body>
</html>
