<%@ page language="java" pageEncoding="utf-8"%>
<%@page import="com.etc.entity.Businesses"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	Businesses businesses = null;
	businesses = (Businesses) session.getAttribute("listb");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<title>菜品列表</title>
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
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
	<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
	<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
	<link rel="stylesheet" href="../layui/css/layui.css" media="all">
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 菜品管理 <span class="c-gray en">&gt;</span> 查看菜品列表 <a class="btn btn-success radius r" style="line-height:2.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>

	<!--操作	栏-->
	<div class="operates clearfix"
		style="overflow: auto; white-space: nowrap; font-size: 0;">
		<div class="pull-left left-inp defualt">
			<form class="navbar-form navbar-right" method="post"
				action="${pageContext.request.contextPath}/fsf.do">
				<input type="hidden" name="op" value="queryFoods"> <input
					type="text" class="pull-left" style="margin-left: 10px;"
					placeholder="相关菜品 " name="keywords" id="keywords"
					value="${keywords}">
				<button class="btn delete pramary" type="submit">搜索</button>
			</form>
		</div>
	</div>
	<!--表格-->
	<div class="cl pd-5 bg-1 bk-gray mt-20" style="background-color:#f5fafe"> <span class="l"><a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a> <a href="${pageContext.request.contextPath}/bossManage/addFoodsf.jsp;"  class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加菜品</a></span> <span class="r" style="margin-left:800px">共有数据：<strong><span id="datarowcount">${requestScope.total}</span></strong> 条</span> </div>
			<div class="mt-20 " style="margin-top:30px">
				<table id="example" class="table table-border table-bordered table-hover table-bg table-sort">
					<thead style="background-color:#f5fafe">
				<tr>
					<th style="width: 5%;" class="sort cur">ID <img class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 7%">菜名 <img class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 5%;">价格<img class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 5%;">折扣 <img class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 5%;">剩余数量 <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 5%;">销量 <img class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>

					<th class="sort cur" style="width: 8%;">详细描述 <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="no-nowrap sort cur" style="width: 15%;">图片 <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="no-nowrap sort cur" style="width: 7%;">门店<img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="no-nowrap sort cur" style="width: 7%;">状态 <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="no-nowrap sort cur" style="width: 7%;">操作 <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${requestScope.pd == null}">
					<jsp:forward page="../fsf.do?op=queryFoods"></jsp:forward>
				</c:if>

				<c:forEach items="${requestScope.pd.data}" var="food">

					<tr style="border-bottom: #CCC000 solid 1px;">

						<td>${food.id}</td>
						<td>${food.foodName}</td>
						<td>${food.price}</td>
						<td>${food.discount}</td>
						<td>${food.num}</td>
						<td>${food.salNum}</td>
						<td>${food.des}</td>

						<%-- <td><img src="/img/<%=virtualPath%>"/></td>  --%>
						<%-- <td><img src="${food.logo}" alt="${food.logo}" /></td> --%>
						<%-- <td><Img src="${food.logo}" width="100px" height="100px"/></td> --%>
						<%-- <td><Img src='${pageContext.request.contextPath}/"+${food.logo}+"' width="100px" height="100px" /></td> --%>
						<%-- <td>${pageContext.request.contextPath}${food.logo}</td> --%>
						<td><img  src="${pageContext.request.contextPath}${food.logo}" width="100px" height="100px"/></td>
						<td>${food.busiName}(${food.address})</td>
						<td>${food.state==0?"售罄":"有货"}</td>
						<td><button class="btn btn-link update"
								href="#modal-container-671859" data-toggle="modal">修改</button>
							<button class="btn btn-link del">删除</button></td>
					</tr>

				</c:forEach>

			</tbody>
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



	<!-- 遮罩开始 -->
	<div class="row clearfix">
		<div class="col-md-12 column">

			<div class="modal fade" id="modal-container-671859" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">
								<br> &nbsp;&nbsp;&nbsp;修改菜品
							</h4>
						</div>
						<!-- 表单开始 -->
						<form class="form-horizontal"
							action="${pageContext.request.contextPath}/fsf.do?op=updateFoods"
							method="post">
							<div class="modal-body">

								<div class="form-group">

									<label for="foodName" class="col-sm-2 control-label"
										style="height: 30px; width: 90px">菜名</label>
									<div class="col-sm-10">
										<!-- <input type="hidden" name="op" value="updateFoods" /> -- -->
										<input type="hidden" class="form-control" id="id" name="id" />
										<input type="text" class="form-control" id="foodName"
											name="foodName" style="height: 30px; width: 450px" />
									</div>
								</div>
								<div class="form-group">
									<label for="price" class="col-sm-2 control-label" style="height: 30px; width: 90px">价格</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="price"
											name="price" style="height: 30px; width: 450px" />
									</div>
								</div>
								<div class="form-group">
									<label for="discount" class="col-sm-2 control-label" style="height: 30px; width: 90px">折扣</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="discount"
											name="discount" style="height: 30px; width: 450px" />
									</div>
								</div>
								<div class="form-group">
									<label for="num" class="col-sm-2 control-label" style="height: 30px; width: 90px">数量</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="num" name="num"
											style="height: 30px; width: 450px" />
									</div>
								</div>
								<div class="form-group">
									<label for="salNum" class="col-sm-2 control-label"
										style="height: 30px; width: 90px">销售数量</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="salNum"
											name="salNum" style="height: 30px; width: 450px" />
									</div>
								</div>
								<div class="form-group" style="width: 800px">
									<label for="des" class="col-sm-2 control-label"
										style="height: 30px; width: 90px">详细描述</label>
									<div class="col-sm-10">
										<textarea rows="10" cols="50" id="des" name="des"></textarea>
									</div>
								</div>
								<div class="form-group">
									<label for="logo" class="col-sm-2 control-label" style="height: 30px; width: 90px">图片</label>
									<div class="col-sm-10">
										<input type="file" class="form-control" id="logo" name="logo"
											value="" style="height: 30px; width: 450px" />
									</div>
								</div>
								<div class="form-group">
									<label for="state" class="col-sm-2 control-label" style="height: 30px; width: 90px">门店</label>
									<div class="col-sm-10">
										 <select class="select" size="1" name="busiName" id="busiName" style="height: 30px; width: 450px" >
										
										</select>										
										</div>
									</div>

								<div class="form-group">
									<label for="state" class="col-sm-2 control-label" style="height: 30px; width: 90px">状态</label>
									<div class="col-sm-10">									
										<!-- <input type="text" class="form-control" id="state" name="state" /> -->
										<select name="state" style="height: 30px; width: 450px">
											<option value="1">有货</option>
											<option value="0">售罄</option>
										</select>
									</div>
								</div>


							</div>

							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">关闭</button>
								<button type="submit" class="btn btn-warning">保存</button>
								&nbsp;&nbsp;&nbsp;

							</div>
						</form>

						<!-- 表单结束 -->

					</div>

				</div>

			</div>

		</div>
	</div>


	<!-- 遮罩结束 -->


	<%-- <script src="${pageContext.request.contextPath}/back/plugin/jquery/jquery.js"></script>
<script src="${pageContext.request.contextPath}/back/js/frame-base.js"></script> --%>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/back/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/back/layui/layui.js"
		charset="utf-8"></script>
	<script type="text/javascript">
	
	/*当前页面*/
	function curPage(page){
		location.href="${pageContext.request.contextPath}/fsf.do?op=queryFoods&page="+page+"&keywords="+document.getElementById("keywords").value;
	}
	//上一页
	function prePage(){
		var page=1;
		if(${d.page}>1){
			page=${d.page-1};
			
		}
		
		location.href="${pageContext.request.contextPath}/fsf.do?op=queryFoods&page="+page+"&keywords="+document.getElementById("keywords").value;
		
	}
	//下一页
	function nextPage(){
		var page=${d.totalPage};
		if(${d.page}<${d.totalPage}){
			page=${d.page+1};
			
		}
		
		location.href="${pageContext.request.contextPath}/fsf.do?op=queryFoods&page="+page+"&keywords="+document.getElementById("keywords").value;
		
	}
	
	</script>
	<script type="text/javascript">
	
	
	
		$(function() {
			$(".del").click(function del() {
				var foodName = $(this).parents("tr").find("td").eq(1).html();
				var flag = confirm("是否删除:"+foodName);
				if (flag == true) {
					//$(this).parents("tr"),当前行
					//$(this).parents("tr").find("td") 当前行的每一列值
					//$(this).parents("tr").find("td").eq(0).html()当前行的第一列值
					var id = $(this).parents("tr").find("td").eq(0).html();
					//var qId=$(this).parents("tr").find("td").eq(0).html();
					location.href = "${pageContext.request.contextPath}/fsf.do?op=delFoods&id=" + id;
				}
			})
			
			$(".update").click(
					function update() {
						$.get("${pageContext.request.contextPath}/bsf.do", function(data, status) {
							//	var arr = JSON.parse(data);
							console.log("11111");
								$.each(data, function(index, e) {
									$("#busiName").append("<option value="+e.id+">" + e.busiName +","+e.address +"</option>");
								});

							});
						var id = $(this).parents("tr").find("td").eq(0).html();
						console.log(id);
						var foodName = $(this).parents("tr").find("td").eq(1).html();
						var price = $(this).parents("tr").find("td").eq(2).html();
						var discount = $(this).parents("tr").find("td").eq(3).html();
						var num = $(this).parents("tr").find("td").eq(4).html();
						var salNum = $(this).parents("tr").find("td").eq(5).html();
						var des = $(this).parents("tr").find("td").eq(6).html();
						var logo = $(this).parents("tr").find("td").eq(7).html();
						var busiName = $(this).parents("tr").find("td").eq(8).html();
						var state = $(this).parents("tr").find("td").eq(9).html();
						console.log(id+foodName+price+discount+num+des+logo+state+busiName);
						$("#id").val(id);
						$("#foodName").val(foodName);
						$("#price").val(price);
						$("#discount").val(discount);	
						$("#num").val(num);
						$("#salNum").val(salNum);
						$("#des").val(des);
						$("#logo").val(logo);
						$("#busiName").val(busiName);
						$("#state").val(state);

					
					})
					
					
					
				
		})
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
    	  location.href="${pageContext.request.contextPath}/fsf.do?op=queryFoods&page="+obj.curr+"&pageSize="+obj.limit+"&keywords="+document.getElementById("keywords").value;
	}
    }

  });
  
  
});
</script>

</body>
</html>