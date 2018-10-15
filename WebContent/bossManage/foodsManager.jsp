<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.etc.entity.Boss"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
	Boss boss = null;

	boss = (Boss) session.getAttribute("boss");
%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->

<link rel="stylesheet" type="text/css"
	href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/css/style.css" />

<link rel="stylesheet" href="../layui/css/layui.css" media="all">


<!-- <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script> -->

<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/bossManage/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/back/layui/css/layui.css"
	media="all">


<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.1/js/affix.js"></script> -->
<script
	src="${pageContext.request.contextPath}/bossManage/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/bossManage/js/my.js">
	
</script>

<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<title>品牌管理</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		菜品管理 <span class="c-gray en">&gt;</span> 查看菜品 <a
			class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<%-- <div class="page-container">
		<div class="text-c">
			<form class="Huiform" method="post" action="" target="_self">
				<button class="btn btn-danger">搜索</button><input type="hidden" name="op" value="queryFoods"> <input
						type="text" class="form-controlSearch input-text " name="keywords" id="keywords"
						value="${keywords}"  placeholder="搜索..." style="width:150px;">
			</form>
		</div>  --%>

	<div class="cl pd-5 bg-1 bk-gray mt-20">
		<span class="l"><a href="javascript:;" onclick="datadel()"
			class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
				批量删除</a></span>
		<button class="btn btn-danger" style="margin-left: 750px">搜索</button>
		<input type="hidden" name="op" value="queryFoods"> <input
			type="text" class="form-controlSearch input-text " name="keywords"
			id="keywords" value="${keywords}" placeholder="搜索..."
			style="width: 150px;"> <span class="r"
			style="margin-left: 400px">共有数据：<strong>${requestScope.pd.total}</strong>
			条
		</span>
	</div>
	<%-- <form class="navbar-form navbar-right" method="post"
			action="${pageContext.request.contextPath}/fsf.do">
			<input type="hidden" name="op" value="queryFoods"> <input
				type="text" class="form-control" placeholder="搜搜..." name="keywords"
				id="keywords" value="${keywords}">
			<button class="btn btn-default">搜索</button>
		</form> --%>


	<div class="mt-20">
		<table class="table table-border table-bordered table-bg ">
			<thead>
				<tr class="text-c">
					<th width="25"><input type="checkbox" name="" value=""></th>
					<th>ID</th>
					<th>菜名</th>
					<th>价格</th>
					<th>折扣</th>
					<th>剩余数量</th>
					<th>销量</th>
					<th>详细描述</th>
					<th>图片</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${requestScope.pd == null}">
					<jsp:forward page="../fsf.do?op=queryFoods"></jsp:forward>
				</c:if>


				<c:forEach items="${requestScope.pd.data}" var="food">

					<tr>
						<th width="25"><input type="checkbox" name="" value=""></th>
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
						<td><Img src="${food.logo}" width="100px" height="100px" /></td>
						<td>${food.state==0?"售罄":"有货"}</td>
						<td><button class="btn btn-link update" data-toggle="modal"
								data-target="#myModal">修改</button>
							<button class="btn btn-link del">删除</button></td>
					</tr>

				</c:forEach>
			</tbody>
		</table>



		<!-- 分页开始 -->
		<!-- layui -->
		<div align="center">
			<fieldset class="layui-elem-field layui-field-title"
				style="margin-top: 30px;"></fieldset>

			<div id="demo7"></div>
		</div>
		<!-- 分页结束 -->


		<!-- <div id="demo7" style="text-align: center"></div> -->
		<!-- layui分页结束 -->
	</div>

	<!-- 模态开始 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">修改用户信息</h4>
				</div>
				<br>
				<form method="POST"
					action="${pageContext.request.contextPath}/fsf.do?op=updateFoods">
					<div class="form-group">

						<label for="foodName" class="col-sm-2 control-label"
							style="height: 30px; width: 90px">菜名</label>
						<div class="col-sm-10">
							<!-- <input type="hidden" name="op" value="updateFoods" /> -- -->
							<input type="hidden" class="form-control" id="id" name="id" /> <input
								type="text" class="form-control" id="foodName" name="foodName"
								style="height: 30px; width: 450px" />
						</div>
					</div>
					<div class="form-group">
						<label for="price" class="col-sm-2 control-label">价格</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="price" name="price"
								style="height: 30px; width: 450px" />
						</div>
					</div>
					<div class="form-group">
						<label for="discount" class="col-sm-2 control-label">折扣</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="discount"
								name="discount" style="height: 30px; width: 450px" />
						</div>
					</div>
					<div class="form-group">
						<label for="num" class="col-sm-2 control-label">数量</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="num" name="num"
								style="height: 30px; width: 450px" />
						</div>
					</div>
					<div class="form-group">
						<label for="salNum" class="col-sm-2 control-label"
							style="height: 30px; width: 90px">销售数量</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="salNum" name="salNum"
								style="height: 30px; width: 450px" />
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
						<label for="logo" class="col-sm-2 control-label">图片</label>
						<div class="col-sm-10">
							<input type="file" class="form-control" id="logo" name="logo"
								value="" style="height: 30px; width: 450px" />
						</div>
					</div>
					<div class="form-group">
						<label for="state" class="col-sm-2 control-label">状态</label>
						<div class="col-sm-10">
							<input type="hidden" class="form-control" id="busid" name="busid"
								value="${sessionScope.boss.id}" />

							<!-- <input type="text" class="form-control" id="state" name="state" /> -->
							<select name="state" style="height: 30px; width: 450px">
								<option value="0">有货</option>
								<option value="1">售罄</option>
							</select>
						</div>
					</div>


					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10"
							style="margin-left: 400px; margin-top: 25px">
							<button type="submit" class="btn btn-default">确认</button>
						</div>
					</div>
				</form>

				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
	</div>
	<!-- 模态结束 -->
	</div>

	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script>
	<script
		src="${pageContext.request.contextPath}/bossManage/js/holder.min.js"></script>
	<script src="${pageContext.request.contextPath}/back/layui/layui.js"
		charset="utf-8"></script>
	<!--/_footer 作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript"
		src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript">
	
$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"aoColumnDefs": [
	  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	  {"orderable":false,"aTargets":[0,6]}// 制定列不参与排序
	]
});
</script>



	<script>
		/*当前页面*/
		function curPage(page){
			location.href="${pageContext.request.contextPath}/fsf.do?op=queryFoods&page="+page+"&keywords="+document.getElementById("keywords").value;
		}
		/*获取前一页面*/
		function prePage(){
			var page=1;
			if(${pd.page} >1){
				page=${pd.page}-1;
			}
			location.href="${pageContext.request.contextPath}/fsf.do?op=queryFoods&page="+page+"&keywords="+document.getElementById("keywords").value;
		}
		/*获取下一页面*/
		function nextPage(){
			var page=${pd.totalPage};
			if(${pd.page} <${pd.totalPage}){
				page=${pd.page}+1;
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
						var id = $(this).parents("tr").find("td").eq(0).html();
						console.log(id);
						var foodName = $(this).parents("tr").find("td").eq(1).html();
						var price = $(this).parents("tr").find("td").eq(2).html();
						var discount = $(this).parents("tr").find("td").eq(3).html();
						var num = $(this).parents("tr").find("td").eq(4).html();
						var salNum = $(this).parents("tr").find("td").eq(5).html();
						var des = $(this).parents("tr").find("td").eq(6).html();
						var logo = $(this).parents("tr").find("td").eq(7).html();
						var state = $(this).parents("tr").find("td").eq(8).html();
						console.log(id+foodName+price+discount+num+des+logo+state);
						$("#id").val(id);
						$("#foodName").val(foodName);
						$("#price").val(price);
						$("#discount").val(discount);	
						$("#num").val(num);
						$("#salNum").val(salNum);
						$("#des").val(des);
						//$("#logo").val(logo);
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
	<!-- 	<script type="text/javascript">
	
		$(".search").click(function(){
			location.href="${pageContext.request.contextPath}/fsf.do?op=queryFoods&keyWords="+document.getElementById("keywords")
		})
	
	</script> -->

	<!-- 	<script src="../layui/layui.js" charset="utf-8"></script>
	注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的
	<script>
layui.use(['laypage', 'layer'], function(){
  var laypage = layui.laypage
  ,layer = layui.layer;
  
  //完整功能
  laypage.render({
    elem: 'demo7'
    ,count: ${pd.total} ,
    curr:${pd.page}
    ,limit:${pd.pageSize}
    ,layout: ['count', 'prev', 'page','limit','next', 'skip']
    ,jump: function(obj,first){
    console.log(obj);
    console.log(first);
     
    if(!first){
    	 //do something
    	location.href="${pageContext.request.contextPath}/fsf.do?op=queryFoods&page="+obj.curr+"&pageSize="+obj.limit;
    	      }
    	    }
    	  });

});
</script> -->
	<!-- <script type="text/javascript">

	$(function(){
		var salNum = $(this).parents("tr").find("td").eq(5).html();
		if(salNum==0){
			$("#state").val(0);
		}
	})

</script> -->


</body>
</html>