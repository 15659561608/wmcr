<%@page import="java.util.List"%>
<%@ page import="com.etc.entity.Type"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<title>类别列表</title>
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
		<span class="page-reload cur">类别列表</span>
	</div>
	<!--操作栏-->
	<div class="operates clearfix"
		style="overflow: auto; white-space: nowrap; font-size: 0;">
		<div class="pull-left left-inp defualt">
			<form class="navbar-form navbar-right" method="post"
				action="${pageContext.request.contextPath}/Tsc.do">
				<input type="hidden" name="op" value="queryType"> <input
					type="text" class="pull-left" style="margin-left: 10px;"
					placeholder="类别名 " name="keywords" id="keywords"
					value="${keywords}">
				<button class="btn delete pramary" type="submit">搜索</button>
			</form>
		</div>
		<!-- <div class="right-btns" style="font-size: 0">
			
			<button class="btn delete pramary">审核</button>
			
		</div> -->
	</div>
	<!--表格-->
	<div class="table-wrapper pl27 " style="min-width: 1200px;">
		<table class="table text-center">
			<thead>
				<tr>
					<th style="width: 5%;" class="sort cur">类别ID <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 10%">类别名 <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 20%;">父类别 <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="no-nowrap sort cur" style="width: 10%;">操作 <img
						class="bottom"
						src="${pageContext.request.contextPath}/back/img/jt-bottom.png"
						alt=""> <img class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${requestScope.t==null}">
					<jsp:forward page="/Tsc.do?op=queryType"></jsp:forward>
				</c:if>
				<c:forEach var="type" items="${requestScope.t.data}">
					<tr>

						<td>${type.id}</td>
						<td>${type.title}</td>
						<td>${type.fuTitle}</td>

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
								<br> &nbsp;&nbsp;&nbsp;修改父类别
							</h4>
						</div>
						<!-- 表单开始 -->
						<form class="form-horizontal"
							action="${pageContext.request.contextPath}/Tsc.do" method="post">
							<div class="modal-body">

								<div class="form-group">
									<label for="" class="col-sm-2 control-label">类别名</label>
									<div class="col-sm-4">
										<input type="hidden" name="op" value="update" /> <input
											type="hidden" name="id" id="id" /> <input type="text"
											required="required" class="form-control" name="title"
											id="title" readonly="false" />
									</div>
								</div>

								<div class="form-group">
									<label for="" class="col-sm-2 control-label">父类别</label>
									<div class="col-sm-4">
										<select class="form-control" name="fuTitle" id="fuTitle" required="required">
											<option value="">--请选择--</option>
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

	<script>
	
	$(function() {
	    $(".update").click(
			function() {
			    var id=$(this).parents("tr").find("td").eq(0)
			             .text();
			
				var title = $(this).parents("tr").find("td").eq(1)
						.text();
				
				
				
			
                $("#id").val(id);
				$("#title").val(title);
			
				 // $("#fuTitle option[value='"+key+"']").attr("selected","selected"); 

			});
	    

		$.get("${pageContext.request.contextPath}/Tsc.do?op=findType", function(data, status) {
		//	var arr = JSON.parse(data);
	

			$.each(data, function(index, e) {

				$("#fuTitle").append("<option value="+e.id+">" + e.title + "</option>");
			});

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
    ,count: ${t.total}
    ,curr:${t.page}
    ,limit:${t.pageSize}
    ,theme: '#FFB800'
    ,layout: ['count', 'prev', 'page', 'next', 'limit', 'refresh', 'skip']
    ,jump: function(obj,first){
      console.log(obj)
      console.log(first)
      
      if (!first) {
    	  location.href="${pageContext.request.contextPath}/Tsc.do?op=queryType&page="+obj.curr+"&pageSize="+obj.limit

+"&keywords="+document.getElementById("keywords").value;
	}
    }
    
    
  });
  
 
  
  

  
});
</script>
</body>
</html>