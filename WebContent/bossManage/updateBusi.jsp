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
	href="bossManage/static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css"
	href="bossManage/static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="bossManage/lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css"
	href="bossManage/static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="bossManage/static/h-ui.admin/css/style.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>我的桌面</title>


</head>
<body>


	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		门店管理 <span class="c-gray en">&gt;</span> 门店列表 <span class="c-gray en">&gt;</span>
		修改门店信息<a class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container">
		<form action="${pageContext.request.contextPath }/Business?op=update"
			method="post" class="form form-horizontal responsive"
			id="commentForm" novalidate="novalidate">
			<input type="hidden" value="${busiInfo.id }" name="id" />
			<div class="row cl">
				<label class="form-label col-xs-3">缩略图：</label>
				<div class="formControls col-xs-8">
					<span class="btn-upload form-group"> <input
						class="input-text upload-url" type="text" name="uploadfile-2"
						id="uploadfile-2" readonly="" style="width: 200px"> <a
						href="javascript:void();" class="btn btn-primary upload-btn"><i
							class="Hui-iconfont"></i> 浏览文件</a> <input value="${busiInfo.logo }"
						type="file" multiple="" name="logo" class="input-file">
					</span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">门店名：</label>
				<div class="formControls col-xs-8">
					<input type="text" class="input-text" placeholder="输入门店名"
						name="busiName" aria-required="true" value="${busiInfo.busiName }"
						id="busiName" autocomplete="off" required>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">电话：</label>
				<div class="formControls col-xs-8">
					<input type="text" value="${busiInfo.phone }" class="input-text"
						placeholder="4~16个字符，字母/中文/数字/下划线" name="phone" id="phone">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">地址：</label>
				<div class="formControls col-xs-8">
					<input type="text" value="${busiInfo.address }" class="input-text"
						placeholder="4~16个字符，字母/中文/数字/下划线" name="address" id="address">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">门店简介：</label>
				<div class="formControls col-xs-8">
					<input type="text" value="${busiInfo.des }" class="input-text"
						placeholder="4~16个字符，字母/中文/数字/下划线" name="address" id="address">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">平均消费：</label>
				<div class="formControls col-xs-8">
					<input type="text" value="${busiInfo.avgCost }" class="input-text"
						placeholder="4~16个字符，字母/中文/数字/下划线" name="avgCost" id=""avgCost"">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">营业执照：</label>
				<div class="formControls col-xs-8">
					<span class="btn-upload form-group"> <input
						class="input-text upload-url" type="text" name="uploadfile-2"
						id="uploadfile-2" readonly="" style="width: 200px"> <a
						href="javascript:void();" class="btn btn-primary upload-btn"><i
							class="Hui-iconfont"></i> 浏览文件</a> <input type="file" multiple=""
						name="licence" value="${busiInfo.licence }" class="input-file">
					</span>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">起送价：</label>
				<div class="formControls col-xs-8">
					<input type="text" class="input-text" autocomplete="off"
						placeholder="手机" value="${busiInfo.starPrice }" name="starPrice"
						id="starPrice">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">配送费：</label>
				<div class="formControls col-xs-8">
					<input type="text" class="input-text" autocomplete="off"
						placeholder="手机" name="disFee" value="${busiInfo.disFee }"
						id="disFee">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">在线支付：</label>
				<div class="formControls col-xs-8">
					<div class="row clearfix" style="margin-top: 0">
						<div class="col-xs-6">
							<span class="formControls select-box"> <select
								class="select" size="1" name="onlinePay">
									<option value="-1">请选择</option>
									<c:choose>
										<c:when test="${busiInfo.onlinePay==0 }">
											<option selected="selected" value="0">不支持</option>
											<option value="1">支持</option>
										</c:when>
										<c:otherwise>
											<option value="0">不支持</option>
											<option selected="selected" value="1">支持</option>
										</c:otherwise>
									</c:choose>


							</select>
							</span>
						</div>
						<label class="form-label col-xs-3">支持预定：</label>
						<div class="formControls col-xs-8">
							<div class="row clearfix" style="margin-top: 0">
								<div class="col-xs-6">
									<span class="formControls  select-box"> <select
										class="select" size="1" name="isReserve">
											<option value="-1">请选择</option>
											<c:choose>
												<c:when test="${busiInfo.isReserve==0 }">
													<option selected="selected" value="0">不支持</option>
													<option value="1">支持</option>
												</c:when>
												<c:otherwise>
													<option value="0">不支持</option>
													<option selected="selected" value="1">支持</option>
												</c:otherwise>
											</c:choose>
									</select>
									</span>
								</div>

							</div>
						</div>
					</div>

					<div class="row">
						<label class="form-label col-xs-3">营业状态：</label>
						<div class="formControls col-xs-8">
							<div class="row clearfix" style="margin-top: 0">
								<div class="col-xs-6">
									<span class="select-box"> <select class="select"
										size="1" name="isBusiness">
											<option value="-1" selected="">请选择</option>
											<c:choose>
												<c:when test="${busiInfo.isBusiness==0 }">
													<option selected="selected" value="0">停业</option>
													<option value="1">营业中</option>
												</c:when>
												<c:otherwise>
													<option value="0">停业</option>
													<option selected="selected" value="1">营业中</option>
												</c:otherwise>
											</c:choose>
									</select>
									</span>
								</div>
								<label class="form-label col-xs-3">所在城市：</label>
								<div class="formControls col-xs-8">
									<div class="row clearfix" style="margin-top: 0">
										<div class="col-xs-6">
											<span class="select-box"> <select class="select"
												size="1" name="cityId" id="cityId">
													<option value="-1">请选择</option>

											</select>
											</span>
										</div>
									</div>
								</div>
								<label class="form-label col-xs-3">类别：</label>
								<div class="formControls col-xs-8">
									<div class="row clearfix" style="margin-top: 0">
										<div class="col-xs-6">
											<span class="select-box"> <select class="select"
												size="1" name="typeId" id="typeId">
													<option value="-1">请选择</option>

											</select>
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="row cl">
							<div class="col-xs-8 col-xs-offset-3">
								<input class="btn btn-primary" type="submit"
									value="&nbsp;&nbsp;提交审核&nbsp;&nbsp;">
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
<script>
	//加载城市数据
	$(function() {
		$.get("${pageContext.request.contextPath}/CityServlet", "op=ajaxQuery",
				function(data, sataus) {
					$("#cityId").children("option").remove();
					$("#cityId").append("<option value='-1'>请选择</option>");
					$.each(data, function(index, v) {
						$("#cityId").append(
								"<option value='"+v.id+"'>" + v.cityName
										+ "</option>");
					});
				});
	});
	//加载类别数据
	$(function() {
		$.get("${pageContext.request.contextPath}/TypeServlet", "op=ajaxQuery",
				function(data, sataus) {
					$("#typeId").children("option").remove();
					$("#typeId").append("<option value='-1'>请选择</option>");
					$.each(data, function(index, v) {
						$("#typeId").append(
								"<option value='"+v.id+"'>" + v.title
										+ "</option>");
					});
				});
	});
	//校验地址
	$("#address").blur(
			function() {
				$.post("${pageContext.request.contextPath}/Business",
						"op=ajaxCheckAddress&address=" + $(this).val(),
						function(data, status) {
							if (data == "false") {
								$(this).val("");
								layer.msg('您输入的位置不够精确', {
									time : 20000, //20s后自动关闭
									btn : [ '我知道了' ]
								});
							}

						});
			});
</script>
<script src="/wmcr/jqueryValidate/jquery.validate.min.js"
	type="text/javascript"></script>
<script src="/wmcr/jqueryValidate/messages_zh.js" type="text/javascript"></script>

<script>
	$.validator.setDefaults({
		submitHandler : function() {
			//alert("提交事件!");
		}
	});
	$().ready(function() {
		$("#commentForm").validate({

			rules : {
				buisName : "required",
				phone : {
					minlength : 11,
					isMobile : true
				},
				address : {
					required : true,
					minlength : 2
				},
				avgCost : {
					required : true,
					number : true,
					minlength : 1,
					maxlength : 6
				},
				disFee : {
					required : true,
					number : true,
					minlength : 1,
					maxlength : 6
				},
				isReserve : {
					required : true,
					min : 0
				},
				isBusiness : {
					required : true,
					min : 0
				},
				onlinePay : {
					required : true,
					min : 0
				},
				cityId : {
					required : true,
					min : 0
				},
				agree : "required"
			},
			messages : {
				busiName : "请输入门店名",
				phone : "请输手机号",
				username : {
					required : "请输入用户名",
					minlength : "用户名必需由两个字母组成"
				},
				cityId : "请选择所在城市",
				onlinePay : "请选择是否在线支付",
				isBusiness : "请选择营业状态",
				isReserve : "请选择是否接受预定",
			}
		});

	});
</script>

</html>
