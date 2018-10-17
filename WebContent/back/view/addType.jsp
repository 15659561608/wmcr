<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>添加类别</title>
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/back/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/back/css/frame.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/back/css/addClass.css">
</head>
<body>
	<div class="col-md-7 column">
		<div>
			<div class="modal-header">

				<h4 class="modal-title" id="myModalLabel">
					<br> &nbsp;&nbsp;&nbsp;新增类别
				</h4>
			</div>
			<!-- 表单开始 -->

			<form class="form-horizontal"
				action="${pageContext.request.contextPath}/Tsc.do" method="post">
				<div class="modal-body">

					<div class="form-group">
						<label for="" class="col-sm-2 control-label">类别名</label>
						<div class="col-sm-4">
							<input type="hidden" name="op" value="addType" /> <input
								type="hidden" name="id" id="id" /> <input type="text"
								required="required" class="form-control" name="title" id="title" />
						</div>
					</div>


					<div class="form-group">
						<label for="" class="col-sm-2 control-label">父类名</label>
						<div class="col-sm-4">

							<select class="form-control" name="pId" id="pId" class="col-sm-12">


								<option value="">--请选择--</option>

							</select>
						</div>
					</div>

					<div class="modal-footer">
						<div class="col-sm-6">
							<button type="submit" class="btn btn-warning"
								style="width: 225px;">保存</button>

						</div>
					</div>
			</form>

			<!-- 表单结束 -->

		</div>
	</div>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/back/bootstrap/js/bootstrap.min.js"></script>
	<script>
		$(function() {
			$.get("${pageContext.request.contextPath}/Tsc.do?op=findType",
					function(data, status) {
						//	var arr = JSON.parse(data);

						$.each(data, function(index, e) {

							$("#pId").append(
									"<option value="+e.id+">" + e.title
											+ "</option>");
						});

					});
		});
	</script>
</body>
</html>