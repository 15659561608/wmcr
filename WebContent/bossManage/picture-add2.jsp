<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% %>
<!DOCTYPE HTML>
<html>
<head>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
<title>新增图片</title>
<link href="lib/webuploader/0.1.5/webuploader.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="page-container">
	<form class="form form-horizontal" id="form-article-add" action="${pageContext.request.contextPath}/PhotosSerlet"  method="post">
					<div class="row cl">
					<label  style= "margin-left: 200px">选择店铺：</label> <span
						class="select-box" style="width: 200px; margin-left: 15px;">
						<select class="select"  name="busiName" id="busiName">
					</select>
					</span>
				</div>
				<div class="row cl">
					<div class="col-xs-8 col-xs-offset-3">
						<input class="btn btn-primary" id="submit" type="submit"
							value="&nbsp;&nbsp;确认提交&nbsp;&nbsp;">
					</div>
				</div>
	</form>
</div>


<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 
<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer /作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/validate-methods.js"></script> 
<script type="text/javascript" src="lib/jquery.validation/1.14.0/messages_zh.js"></script> 
<script type="text/javascript" src="lib/webuploader/0.1.5/webuploader.min.js"></script> 
<script type="text/javascript">
function article_save(){
	alert("刷新父级的时候会自动关闭弹层。")
	window.parent.location.reload();
}
</script>
<script>
	//加载店铺数据
	$(function() {
		$.get("../bs.do?op=select",
				function(data, sataus) {
					$.each(data, function(index, b) {
						$("#busiName").append(
								"<option value="+b.id+">" + b.busiName
										+ "</option>");
					});
				});
	});
	</script>
</body>
</html>