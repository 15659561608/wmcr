<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>用户列表</title>
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/back/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/back/css/frame.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/back/css/addClass.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/back/layui/css/layui.css"
	media="all">
<style>
.table-wrapper .table td label {
	width: 40px;
	text-align: left;
}
</style>
</head>

<body>
	<div class="frame-header">
		<span class="page-reload cur">用户列表</span>
	</div>
	<!--操作栏-->
	<div class="operates clearfix"
		style="overflow: auto; white-space: nowrap; font-size: 0;">
		<form method="post">
			<div class="pull-left left-inp defualt">
				<input type="text" class="pull-left" style="margin-left: 10px;"
					placeholder="用户名、手机号" name="keywords" id="keywords"
					value="${keywords}">
				<button class="btn delete pramary">搜索</button>
			</div>
			
		</form>

	</div>

	<!--表格-->
	<div class="table-wrapper pl27 " style="min-width: 1000px;">
		<table class="table text-center">
			<thead>
				<tr>
					<th class="yt" style="width: 7%;">用户Id</th>
					<th style="width: 5%;" class="sort cur">用户名 <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 7%">姓名 <img class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 9%">手机号 <img class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 20%;">注册时间 <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 20%;">收货地址 <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 5%;">纬度 <img class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 5%;">经度 <img class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 9%;">状态 <a
						href="javascript:getStateByOrder()"> <img class="bottom"
							src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
							alt=""> <img class="top" style="display: none"
							src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
							alt="">
					</a>
					</th>
					<th class="sort cur" style="width: 9%;">审核 <img class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>

				</tr>
			</thead>
			<!-- 表格主体 -->
			<tbody>

				<c:if test="${requestScope.pd == null}">
					<jsp:forward page="/csc.do?op=queryCustomersByPage"></jsp:forward>
				</c:if>
				<c:forEach items="${requestScope.pd.data}" var="c">

					<tr>
						<td><label for="${c.id}">${c.id}</label></td>
						<td>${c.account}</td>
						<td>${c.custName}</td>
						<td>${c.phone}</td>
						<td>${c.regDate}</td>
						<td>${c.address}</td>
						<td>${c.lat}</td>
						<td>${c.lon}</td>
						<td>${c.state ==0? "通过" : "未审核"}</td>
						<td><a href="${pageContext.request.contextPath}/csc.do?userId=${c.id}&state=${c.state}&op=updateCustomerState">修改</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>

			<!-- 表格主体结束 -->


		</table>
	</div>
	<!-- 分页开始 -->
	<!-- layui -->
	<div align="center">
		<fieldset class="layui-elem-field layui-field-title"
			style="margin-top: 30px;"></fieldset>

		<div id="demo7"></div>
	</div>
	<!-- 分页结束 -->
</body>
<script
	src="${pageContext.request.contextPath}/back/plugin/jquery/jquery.js"></script>
<script src="${pageContext.request.contextPath}/back/js/frame-base.js"></script>
<script src="${pageContext.request.contextPath}/back/layui/layui.js"
	charset="utf-8"></script>

<script>
layui.use(['laypage', 'layer'], function(){
  var laypage = layui.laypage
  ,layer = layui.layer;
  
  
  //完整功能
  laypage.render({
    elem: 'demo7'
    ,count: ${pd.total}
    ,curr:${pd.page}
    ,limit:${pd.pageSize}
    ,theme: '#FFB800'
    ,layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']
    ,jump: function(obj,first){
      console.log(obj)
      console.log(first)
      
      if (!first) {
    	  location.href="${pageContext.request.contextPath}/csc.do?op=queryCustomersByOrder&page="+obj.curr+"&pageSize="+obj.limit+"&keywords="+document.getElementById("keywords").value;
	}
    }

  });
  
  
});
</script>
</html>