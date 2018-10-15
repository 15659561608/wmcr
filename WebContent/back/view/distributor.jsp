<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<title>商户列表</title>
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
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div class="frame-header">
		<span class="page-reload cur">配送员列表</span>
	</div>
	<!--操作栏-->
	<div class="operates clearfix"
		style="overflow: auto; white-space: nowrap; font-size: 0;">
		<div class="pull-left left-inp defualt">
			<form class="navbar-form navbar-right" method="post"
				action="${pageContext.request.contextPath}/Ds.do">
				<input type="hidden" name="op" value="queryDis"> <input
					type="text" class="pull-left" style="margin-left: 10px;"
					placeholder="配送员姓名 " name="keywords" id="keywords"
					value="${keywords}">
				<button class="btn delete pramary" type="submit">搜索</button>
			</form>
		</div>
	</div>
	<!--表格-->
	<div class="table-wrapper pl27 " style="min-width: 1200px;">
		<table class="table text-center">
			<thead>
				<tr>
					<th style="width: 5%;" class="sort cur">ID <img class="bottom"
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
					<th class="sort cur" style="width: 10%;">电话 <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 20%;">生日 <img
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

					<th class="sort cur" style="width: 8%;">配送数量 <img
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
				<c:if test="${requestScope.d==null}">
					<jsp:forward page="/Ds.do?op=queryDis"></jsp:forward>
				</c:if>
				<c:forEach var="dis" items="${requestScope.d.data}">
					<tr>

						<td>${dis.id}</td>
						<td>${dis.disName}</td>
						<td>${dis.phone}</td>
						<td>${dis.birthday}</td>
					
						<td>${dis.lat}</td>
						<td>${dis.lon}</td>
						<td>${dis.num}</td>
						<td>${dis.state==0?"正常":"销毁"}</td>
						<td class="col-md-2"><button class="btn btn-link update"
								href="#modal-container-671859" data-toggle="modal">修改</button></td>
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
								<br> &nbsp;&nbsp;&nbsp;修改配送员
							</h4>
						</div>
						<!-- 表单开始 -->
						<form class="form-horizontal" action="${pageContext.request.contextPath}/Ds.do" method="post">
							<div class="modal-body">

								<div class="form-group">
									<label for="" class="col-sm-2 control-label">姓名</label>
									<div class="col-sm-4">
										<input type="hidden" name="op" value="updateDis" /> <input
											type="hidden" name="id" id="id" /> <input type="text"
											required="required" class="form-control" name="disName"
											id="disName" readonly="false" />
									</div>
								</div>
								<div class="form-group">
									<label for="" class="col-sm-2 control-label">电话</label>
									<div class="col-sm-4">
										<input type="text" required="required" class="form-control"
											name="phone" id="phone" />
									</div>
								</div>

								<div class="form-group">
									<label for="" class="col-sm-2 control-label">状态</label>
									<div class="col-sm-3">
										<select class="form-control" name="state" id="state">
											<option value="0">正常</option>
											<option value="1">销毁</option>
											
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
	

	//上一页
	function prePage(){
		var page=1;
		if(${d.page}>1){
			page=${d.page-1};
			
		}
		
		location.href="${pageContext.request.contextPath}/Ds.do?op=queryDis&page="+page+"&keywords="+document.getElementById("keywords").value;
		
	}
	//下一页
	function nextPage(){
		var page=${d.totalPage};
		if(${d.page}<${d.totalPage}){
			page=${d.page+1};
			
		}
		
		location.href="${pageContext.request.contextPath}/Ds.do?op=queryDis&page="+page+"&keywords="+document.getElementById("keywords").value;
		
	}
	
	</script>
	<script>
	
	$(function() {
	    $(".update").click(
			function() {
			    var id=$(this).parents("tr").find("td").eq(0)
			             .text();
			
				var disName = $(this).parents("tr").find("td").eq(1)
						.text();
				
				var phone = $(this).parents("tr").find("td").eq(2)
				        .text();
				
				var state = $(this).parents("tr").find("td").eq(7)
						.text();
				
                $("#id").val(id);
				$("#disName").val(disName);
				$("#phone").val(phone);
				$("#state").val(state == "正常"? 0 : 1 );
				
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
    ,count: ${d.total}
    ,curr:${d.page}
    ,limit:${d.pageSize}
    ,theme: '#FFB800'
    ,layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']
    ,jump: function(obj,first){
      console.log(obj)
      console.log(first)
      
      if (!first) {
    	  location.href="${pageContext.request.contextPath}/Ds.do?op=queryDis&page="+obj.curr+"&pageSize="+obj.limit+"&keywords="+document.getElementById("keywords").value;
	}
    }
    
    
  });
  
  
});
</script>
</body>
</html>