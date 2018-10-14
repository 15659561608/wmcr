<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
<!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<div class="frame-header">
		<span class="page-reload cur">商户列表</span>
	</div>
	<!--操作栏-->
	<div class="operates clearfix"
		style="overflow: auto; white-space: nowrap; font-size: 0;">
		<div class="pull-left left-inp defualt">
			<form class="navbar-form navbar-right" method="post"
				action="${pageContext.request.contextPath}/Bsc.do">
				<input type="hidden" name="op" value="queryBoss"> <input
					type="text" class="pull-left" style="margin-left: 10px;"
					placeholder="商户账号 " name="keywords" id="keywords"
					value="${keywords}">
				<button class="btn delete pramary" type="submit">搜索</button>
			</form>
		</div>
		<!-- <div class="right-btns" style="font-size: 0">
			
			<button class="btn delete pramary">审核</button>
			
		</div> -->
	</div>
	<!--表格-->
	<div class="table-wrapper pl27 " style="min-width: 1300px;">
		<table class="table text-center">
			<thead>
				<tr>
					<th style="width: 5%;" class="sort cur">商户ID <img
						class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt=""> <img
						class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 10%">商户账号 <img
						class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt=""> <img
						class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 20%;">商户密码 <img
						class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt=""> <img
						class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="sort cur" style="width: 15%;">注册时间 <img
						class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt=""> <img
						class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="no-nowrap sort cur" style="width: 10%;">商户状态 <img
						class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt=""> <img
						class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
					<th class="no-nowrap sort cur" style="width: 10%;">操作 <img
						class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt=""> <img
						class="top" style="display: none"
						src="${pageContext.request.contextPath}/back/img/jt-right-co.png"
						alt="">
					</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${requestScope.b==null}">
					<jsp:forward page="/Bsc.do?op=queryBoss"></jsp:forward>
				</c:if>
				<c:forEach var="boss" items="${requestScope.b.data}">
					<tr>

						<td>${boss.id}</td>
						<td>${boss.account}</td>
						<td>${boss.pwd}</td>
						<td>${boss.regDate}</td>
						<td>${boss.state==0?"未审核":(boss.state==1?"正常":"销毁")}</td>
						<td class="col-md-2"><button class="btn btn-link update"
								href="#modal-container-671859" data-toggle="modal">修改</button></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>

<!-- 分页开始 -->
	<div class="row clearfix text-center">
		<div class="col-md-12 column">
			<ul class="pagination">
				<li><a href="javascript:prePage()">上一页</a></li>


				<c:forEach begin="1" end="${b.totalPage}" var="index">

					<c:if test="${index == b.page}">
						<li class="active"><a href="#">${index}</a></li>
					</c:if>

					<c:if test="${index != b.page}">
						<li><a
							href="${pageContext.request.contextPath}/Bsc.do?op=queryBoss&page=${index}&keywords=${keywords}">${index}</a></li>
					</c:if>
				</c:forEach>


				<li><a href="javascript:nextPage()">下一页</a></li>
			</ul>
		</div>

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
								<br> &nbsp;&nbsp;&nbsp;修改商户状态
							</h4>
						</div>
						<!-- 表单开始 -->
						<form class="form-horizontal" action="Bsc.do" method="post">
							<div class="modal-body">

								<div class="form-group">
									<label for="" class="col-sm-2 control-label">商户账号</label>
									<div class="col-sm-4">
										<input type="hidden" name="op" value="update" /> 
										<input
											type="hidden" name="id" id="id" />
											<input type="text"
											required="required" class="form-control" name="account"
											id="account" readonly="false" />
									</div>
								</div>

								<div class="form-group">
									<label for="" class="col-sm-2 control-label">商户状态</label>
									<div class="col-sm-3">
										<select class="form-control" name="bossstate" id="bossstate">
											<option value="0">未审核 </option>
											<option value="1">正常 </option>
											<option value="2">销毁 </option>
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
<script src="${pageContext.request.contextPath}/back/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	//上一页
	function prePage(){
		var page=1;
		if(${b.page}>1){
			page=${b.page-1};
			
		}
		
		location.href="${pageContext.request.contextPath}/Bsc.do?op=queryBoss&page="+page+"&keywords="+document.getElementById("keywords").value;
		
	}
	//下一页
	function nextPage(){
		var page=${b.totalPage};
		if(${b.page}<${b.totalPage}){
			page=${b.page+1};
			
		}
		
		location.href="${pageContext.request.contextPath}/Bsc.do?op=queryBoss&page="+page+"&keywords="+document.getElementById("keywords").value;
		
	}
	
	</script>
		<script "text/javascript">
	
	$(function() {
	    $(".update").click(
			function() {
			    var id=$(this).parents("tr").find("td").eq(0)
			             .text();
			
				var account = $(this).parents("tr").find("td").eq(1)
						.text();
				
				var state = $(this).parents("tr").find("td").eq(4)
						.text();
                $("#id").val(id);
				$("#account").val(account);
				$("#bossstate").val(state == "未审核" ? 0 :(state=="正常"? 1 : 2 ));
			});
	});
	</script>
	</body>
</html>