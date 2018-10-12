<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>登陆帐号</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/back/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/back/css/frame.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/back/css/addClass.css">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <div class="frame-header"><span class="page-reload cur">登录帐号</span></div>
    <!--操作栏-->
    <div class="operates clearfix" style="overflow: auto;white-space: nowrap; font-size: 0;">
        <div class="pull-left left-inp defualt">

           <!--  <input type="text" class="pull-left" style="margin-left: 10px;" name="keywords" placeholder="账号名">
            <button class="btn delete pramary">搜索</button> -->
            	<form class="navbar-form navbar-right" method="post"
					action="${pageContext.request.contextPath}/OrdersLServlet">
					<input type="hidden" name="op" value="queryansByPage"> <input
						type="text" class="form-control" placeholder="账号名"
						name="keywords" id="keywords" value="${keywords}">
					<button class="btn btn-default">搜索</button>
				</form>

            <input type="text" class="pull-left" style="margin-left: 10px;" name="keywords" placeholder="账号名">
            <button class="btn delete pramary">搜索</button>
            <button class="btn delete pramary">筛选</button>

        </div>
        <div class="right-btns" style="font-size: 0">
            <button class="btn delete pramary">增加</button>
            <button class="btn delete pramary">编辑</button>
            <button class="btn delete pramary">审核</button>
            <button class="btn delete pramary">删除</button>
        </div>
    </div>
    <!--表格-->
    <div class="table-wrapper pl27 " style="min-width: 3000px;">
        <table class="table text-center">
            <thead>
                <tr>
                    <th style="width: 4%;" class="yt">
                       <input type="checkbox" class="allCheck" id="all"><label for="all">&nbsp;&nbsp;&nbsp;</label></th>

                    <th style="width: 2%;" class="sort cur">订单ID
                        <img class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png" alt="">

                    <th style="width: 6%;" class="sort cur">订单ID
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">

                    </th>
                    <th class="sort cur" style="width:8%">用户名
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width: 6%;">店面
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width: 8%;">时间
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="no-nowrap sort cur" style="width: 6%;">订单金额
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="no-nowrap sort cur" style="width: 8%;">菜单名
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="no-nowrap sort cur" style="width: 8%;">数量
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width: 8%;">状态
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    
                  
                </tr>
            </thead>
            <tbody>
               <c:if test="${requestScope.pd == null}">
								<jsp:forward page="/back/view/OrdersLServlet?op=queryansByPage"></jsp:forward>
							</c:if>

							<c:forEach items="${requestScope.pd.data}" var="a">


								<tr>
									<td>${a.id}</td>
									<td>${a.account}</td>
									<td>${a.busiName}</td>
									<td>${a.ordDate}</td>
									<td>${a.money}</td>
									<td>${a.foodName}</td>
									<td>${a.num}</td>
									<td>${a.state}</td>
								</tr>

							</c:forEach>


            </tbody>
        </table>
    </div>
      <div class="table-tel clearfix">
        <div style="border-bottom: 1px solid #fff; overflow: hidden;" class="no-hover">
            <div class="fl tb1" style="text-align: center;  ">
                <input type="checkbox" class="allCheck" id="all"><label for="all">&nbsp;&nbsp;&nbsp;</label>
            </div>
            <div class="fl tb2" style="text-align:left; width: 190px;display: table">&emsp;<span class="cur">短信</span>&emsp;<span class="cur">邮件</span>&emsp;<span class="cur">微信</span>&emsp;<span class="cur">审核</span>&emsp;
            </div>
            <div class="tab-margin clearfix " style="width: 400px; position: absolute; left: 50%; margin-left: -120px;"">
                <div class="fl tb3" style="width: 225px;float: left;">
                    <div class="page-wrapper text-left">
                        <button class="btn-s"><img src="../img/left-icon.png" alt=""></button>
                        <a href="#" class="active">1</a>
                        <a href="#" class="">2</a>
                        <a href="#" class="">3</a>
                        <button class="btn-s"><img src="../img/right-icon.png" alt=""></button>
                    </div>
                </div>

              
            </div>
           
            <div class="fr tb5" style="text-align: left;padding-right: 30px;position: absolute; right: 0; top: 0;">
                <input type="text" style="width: 40px;height: 26px;" class="text-center" onkeyup="value=value.replace(/[^\d]/g,'')"> 行/页
            </div>
        </div>
    </div>
</body>
<script src="../plugin/jquery/jquery.js"></script>
<script src="../js/frame-base.js"></script>

</html>