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
	<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/layui/css/layui.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>我的桌面</title>

 <script type="text/javascript" charset="utf-8" src="Ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="Ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="Ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>


	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		订单管理 <span class="c-gray en">&gt;</span> 订单列表 <span class="c-gray en">&gt;</span>
		修改订单信息<a class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container">
		<form action="${pageContext.request.contextPath }/OrdersLMessageServlet?op=update"
			method="post" class="form form-horizontal responsive"
			id="commentForm" novalidate="novalidate">
			<input type="hidden" value="${busiInfo.id }" name="id" />
			
			
			<label class="form-label col-xs-3">状态</label>
								<div class="formControls col-xs-8">
									<div class="row clearfix" style="margin-top: 0">
										<div class="col-xs-6">
											<span class="select-box"> <select class="select"
												size="1" name="ordersStatus" id="ordersStatus">	
                                      	<option value="0">成功支付</option>
                                      	<option value="1">未支付</option>
                                      	<option value="2">取消支付</option>
											</select>
											</span>
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
	
	
</script>
<script src="/wmcr/jqueryValidate/jquery.validate.min.js"
	type="text/javascript"></script>
<script src="/wmcr/jqueryValidate/messages_zh.js" type="text/javascript"></script>

<script>
	
	
</script>

<script type="text/javascript">

    
</script>


<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>

</script>
</html>
