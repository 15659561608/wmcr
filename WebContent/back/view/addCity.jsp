<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>添加管理员</title>
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
					<br> &nbsp;&nbsp;&nbsp;新增城市
				</h4>
			</div>
			<!-- 表单开始 -->

			<form class="form-horizontal"
				action="${pageContext.request.contextPath}/Cs.do" method="post">
				<div class="modal-body">

					<div class="form-group">
						<label for="" class="col-sm-2 control-label">城市名</label>
						<div class="col-sm-4">
							<input type="hidden" name="op" value="addCity" /> <input
								type="hidden" name="id" id="id" /> <input type="text"
								required="required" class="form-control" name="cityName"
								id="cityName" />
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