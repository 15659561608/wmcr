<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>评论列表</title>
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
		<span class="page-reload cur">评论列表</span>
	</div>
	<!--操作栏-->
	<div class="operates clearfix"
		style="overflow: auto; white-space: nowrap; font-size: 0;">

		<div class="pull-left left-inp defualt">
			<%-- 
        <form  method="post">
            <input type="text" class="pull-left" style="margin-left: 10px;" placeholder="用户名、店铺名" name="keywords"id="keywords" value="${keywords}">
			<input type="hidden" name="op" value="queryCommentByPage">
            <button class="btn delete pramary">搜索</button>
        </div>
        
</form>
           --%>


			<form class="navbar-form navbar-right" method="post"
				action="${pageContext.request.contextPath}/cmt.do">
				<input type="hidden" name="op" value="queryCommentByPage"> <input
					type="text" class="pull-left" style="margin-left: 10px;"
					placeholder="用户名、店铺名 " name="keywords" id="keywords"
					value="${keywords}">
				<button class="btn delete pramary" type="submit">搜索</button>
			</form>
		</div>
	</div>
	<!--表格-->
	<div class="table-wrapper pl27 " style="min-width: 1000px;">
		<table class="table text-center">
			<thead>
				<tr>
					<th class="yt" style="width: 9%;">评论编号 <label for="all"
						style="width: 40px">&nbsp;&nbsp;&nbsp;</label></th>
					<th style="width: 9%;" class="sort cur">评论用户名 <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 9%">评论店铺名 <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 9%">好评星级★ <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 9%;">评论内容 <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 20%;">评论时间 <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
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
					<jsp:forward page="/cmt.do?op=queryCommentByPage"></jsp:forward>
				</c:if>
				<c:forEach items="${requestScope.pd.data}" var="c">

					<tr>
						<td><label for="${c.id}">${c.id}</label></td>


						<td>${c.account}</td>
						<td>${c.busiName}</td>

						<td>${c.praise==5?"★★★★★":c.praise == 4?"★★★★":c.praise == 3?"★★★":c.praise ==2?"★★":"★"}</td>

						<td>${c.content}</td>
						<td>${c.comDate}</td>


						<td>
							<button class="btn btn-link del">删除</button>
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
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/back/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/back/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript">
$(function() {

	// 事件 class为del的按钮的事件
	$(".del").click(function() {

		var flag = confirm("是否确定删除？删除的数据将不可恢复.");
		if (flag == true) {
			
			
			var comId = $(this).parents("tr").find("td").eq(0).text()
			//将这个结果 传递给servlet
			location.href = "${pageContext.request.contextPath}/cmt.do?op=del&comId=" + comId;
		}
	});
});
</script>
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
    	  location.href="${pageContext.request.contextPath}/cmt.do?op=queryCommentByPage&page="+obj.curr+"&pageSize="+obj.limit+"&keywords="+document.getElementById("keywords").value;
	}
    }

  });
  
  
});
</script>
</html>