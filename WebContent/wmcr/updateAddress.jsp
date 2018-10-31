<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	href="${pageContext.request.contextPath }/bossManage/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/bossManage/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/bossManage/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/bossManage/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/bossManage/static/h-ui.admin/css/style.css" />
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/layui/css/layui.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>我的桌面</title>

 <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/Ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/Ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="Ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>

	<div class="page-container">
		<form action="${pageContext.request.contextPath }/ohs.do?op=doUpdateAddress&id=${customers.id}"
			method="post" class="form form-horizontal responsive"
			id="commentForm" novalidate="novalidate">
			<div class="row cl">
				<label class="form-label col-xs-3">收单人：</label>
				<div class="formControls col-xs-8">
					<input type="text" class="input-text" placeholder="输入收单人"
						name="custName" aria-required="true" value="${customers.custName }"
						id="custName" autocomplete="off" required>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">电话：</label>
				<div class="formControls col-xs-8">
					<input type="text" value="${customers.phone }" class="input-text"
						placeholder="4~16个字符，字母/中文/数字/下划线" name="phone" id="phone">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">地址：</label>
				<div class="formControls col-xs-8">
					<input type="text" value="${customers.address }" class="input-text"
						placeholder="4~16个字符，字母/中文/数字/下划线" name="address" id="address">
				</div>
			</div>

						<div class="row cl">
							<div class="col-xs-8 col-xs-offset-3">
								<input class="btn btn-primary" type="submit"
									value="&nbsp;&nbsp;修改&nbsp;&nbsp;">
							</div>
						</div>
		</form>
	</div>


</body>
<script type="text/javascript"
	src="bossManage/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript"
	src="bossManage/static/h-ui/js/H-ui.min.js"></script>
<script src="layui/layui.all.js"></script>
<script src="/wmcr/jqueryValidate/jquery.validate.min.js"
	type="text/javascript"></script>
<script src="/wmcr/jqueryValidate/messages_zh.js" type="text/javascript"></script>

<script>
	$.validator.setDefaults({
		submitHandler : function() {
			$("form").submit();
		}
	});
	//手机号码验证  
	jQuery.validator.addMethod("isMobile", function(value, element) {  
	 var length = value.length;  
	 var mobile = /^(13[0-9]{9})|(18[0-9]{9})|(14[0-9]{9})|(17[0-9]{9})|(15[0-9]{9})$/;  
	 return this.optional(element) || (length == 11 && mobile.test(value));  
	}, "请正确填写手机号码"); 
	$().ready(function() {
		$("#commentForm").validate({

			rules : {
				buisName : "required",
				phone : {
					minlength : 11,
					isMobile:true
				},
				address : {
					required : true,
					minlength : 2
				},
			},
			messages : {
				busiName : "请输入门店名",
				username : {
					required : "请输入用户名",
					minlength : "用户名必需由两个字母组成"
				},
			}
		});

	});

	
</script>




</html>
