<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5shiv.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>我的桌面</title>
<style>
.form-label{
	width:10%;
	text-align:center;
}
</style>
</head>
<body>

<c:if test="${requestScope.boss ==null }">
	<jsp:forward page="../bis.do"></jsp:forward>
</c:if>

<div class="page-container">
	<div class="panel-body">
				
						<div class="row cl">
							<label class="form-label col-xs-3">手机：</label>
							<div class="formControls col-xs-8">
								<input type="text" readonly="readonly" value="${boss.account }" class="input-text" autocomplete="off" placeholder="手机" name="telephone" id="telephone">
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-3">密码：</label>
							<div class="formControls col-xs-8">
								<input type="password" readonly="readonly" class="input-text" value="${boss.pwd }" autocomplete="off" placeholder="密码" name="password" id="password">
							</div>
						</div>
					
						<div class="row cl">
							<label class="form-label col-xs-3">注册时间：</label>
							<div class="formControls col-xs-8">
								<input type="text" readonly="readonly" class="input-text" value="${boss.regDate }" autocomplete="off" placeholder="密码" name="date" id="date">
							</div>
						</div>
					
		
				</div>
</div>

<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script>
$(function(){ $("#tab_demo").Huitab();}); 
</script>
</body>
</html>