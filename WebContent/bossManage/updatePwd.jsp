<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<link rel="stylesheet" href="../layui/css/layui.css" media="all">
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>我的桌面</title>
<style>
.form-label{
	width:10%;
}
</style>
</head>
<body>
<div class="page-container">
<div class="panel-body">
					<form action="" method="post" class="form form-horizontal responsive" id="demoform" novalidate="novalidate">
						<div class="row cl">
							<label class="form-label col-xs-3">请输入旧密码：</label>
							<div class="formControls col-xs-8">
								<input name="oldPwd" lay-verify="pass"  type="password" class="layui-input" autocomplete="off" placeholder="密码" id="oldPwd">
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-3">请输入新密码：</label>
							<div class="formControls col-xs-8">
								<input name="pwd" lay-verify="pass"  type="password" class="layui-input" autocomplete="off" placeholder="密码" id="pwd">
							</div>
						</div>
						<div class="row cl">
							<label class="form-label col-xs-3">密码验证：</label>
							<div class="formControls col-xs-8">
								<input name="confPwd" lay-verify="pass"  type="password" class="layui-input" autocomplete="off" placeholder="密码" id="confPwd">
							</div>
						</div>
						<div class="row cl">
							<div class="col-xs-8 col-xs-offset-3">
								<input id="submit"  class="layui-btn" lay-submit="" lay-filter="demo1" class="btn btn-primary" type="button" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
							</div>
						</div>
					</form>
				</div>
</div>

<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script> 


<script src="../layui/layui.all.js"></script>
</body>
<script>



function checkPwd(pwd,confPwd){
	if(pwd != confPwd){
		layer.msg('两次输入密码不一致', {
		    time: 20000, //20s后自动关闭
		    btn: ['我知道了']
		  });
		return false;
	}else if(pwd=="" || confPwd==""){
		layer.msg('密码不能为空', {
		    time: 20000, //20s后自动关闭
		    btn: ['我知道了']
		  });
		return false;
	}
	else{
		return true;
	}
	
}

$("#confPwd,#pwd,#oldPwd").blur(function(){
	 if($(this).val()!=0){    
	        var reg = /^[a-zA-Z\d_]{6,}$/;     
	        var r = $(this).val().match(reg);     
	        if(r==null){
	        	$("#submit").attr("disable","disable");
	        	 layer.msg('您输入的密码格式不正确', {
	 			    time: 20000, //20s后自动关闭
	 			    btn: ['我知道了']
	 			  });
	        }    
	       
	        }    
});

$("#submit").click(function(){
	var oldPwd=$("#oldPwd").val();

	var pwd=$("#pwd").val();
	var confPwd=$("#confPwd").val();
	if(checkPwd(pwd,confPwd)){
		$.post("../bs.do?op=updatePwd","oldPwd="+oldPwd+"&pwd="+pwd,function(data,status){
			if(data=="密码错误"){
				layer.msg('您输入的原始密码不正确', {
				    time: 20000, //20s后自动关闭
				    btn: ['我知道了']
				  });
			}else if(data=="true"){
				layer.msg('密码修改成功！', {
				    time: 20000, //20s后自动关闭
				    btn: ['我知道了']
				  });
				$("#oldPwd").val("");
			}else{
				layer.msg('系统错误，请稍后重试', {
				    time: 20000, //20s后自动关闭
				    btn: ['我知道了']
				  });
			}
		});
	}else{
		return false;
	}
	

});

</script>




</html>