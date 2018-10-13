<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<!-- layui开始 -->
<link rel="stylesheet" href="../layui/css/layui.css" media="all">
<!-- layui结束 -->
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>品牌管理</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		产品管理 <span class="c-gray en">&gt;</span> 品牌管理 <a
			class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container">
		<div class="text-c">
			<form class="Huiform" method="post" action="" target="_self">
				<input type="text" placeholder="分类名称" value="" class="input-text"
					style="width: 120px"> <span class="btn-upload form-group">
					<input class="input-text upload-url" type="text"
					name="uploadfile-2" id="uploadfile-2" readonly style="width: 200px">
					<a href="javascript:void();" class="btn btn-primary upload-btn"><i
						class="Hui-iconfont">&#xe642;</i> 上传logo</a> <input type="file"
					multiple name="file-2" class="input-file">
				</span> <span class="select-box" style="width: 150px"> <select
					class="select" name="brandclass" size="1">
						<option value="1" selected>国内品牌</option>
						<option value="0">国外品牌</option>
				</select>
				</span><a href="addFoods.jsp"><button type="button"
						class="btn btn-success" id="" name=""
						onClick="picture_colume_add(this);">
						<i class="Hui-iconfont">&#xe600;</i> 添加
					</button></a>
			</form>
		</div>
		<div class="cl pd-5 bg-1 bk-gray mt-20">
			<span class="l"><a href="javascript:;" onclick="datadel()"
				class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i>
					批量删除</a></span> <span class="r">共有数据：<strong>54</strong> 条
			</span>
		</div>
		 <form class="navbar-form navbar-right" method="post"
					action="${pageContext.request.contextPath}/fsf.do">
					<input type="hidden" name="op" value="queryFoods"> <input
						type="text" class="form-control" placeholder="搜搜..."
						name="keywords" id="keywords" value="${keywords}">
					<button class="btn btn-default">搜索</button>
				</form> 
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
						<jsp:forward page="/fsf.do?op=queryFoods"></jsp:forward>
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
							 <td>${food.logo}</td> 
							<td>${food.state}</td>
							<td class="col-md-2"><button class="btn btn-link">修改</button>
								<button class="btn btn-link">删除</button></td>
						</tr>

					</c:forEach>
				</tbody>
			</table>


			<div id="demo7" style="text-align: center"></div>
			<!-- layui分页结束 -->
		</div>






	</div>
	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script>
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

	<script src="../layui/layui.js" charset="utf-8"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
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
</script>
</body>
</html>