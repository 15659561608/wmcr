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
							<c:if test="${requestScope.t==null}">
								<jsp:forward page="/Tsc.do?op=findType"></jsp:forward>
							</c:if>
							<select name="pId" class="col-sm-12">
							
								<c:forEach items="${requestScope.t}" var="ty">
									<option  value="${ty.id}">${ty.title}</option>
								</c:forEach>
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
</body>
</html>