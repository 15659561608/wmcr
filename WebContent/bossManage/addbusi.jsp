<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	href="${pageContext.request.contextPath }/bossManage/static/h-ui.admin/skin/default/skin.css"
	id="skin" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/bossManage/static/h-ui.admin/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/layui/css/layui.css" />
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>我的桌面</title>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath }/Ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath }/Ueditor/ueditor.all.min.js">
	
</script>

<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8"
	src="../Ueditor/lang/zh-cn/zh-cn.js"></script>
<style>
.form-label {
	text-align: right;
}
</style>
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
		<div class="row cl">
			<label class="form-label col-xs-3">缩略图：</label>
			<div class="formControls col-xs-8">
				<div class="layui-upload">
					<button type="button" class="layui-btn" id="test1">上传缩略图</button>
					<div class="layui-upload-list">
						<img class="layui-upload-img" id="demo1">
						<p id="demoText"></p>
					</div>
				</div>
			</div>
		</div>
		<form action="../Business?op=add" method="post"
			class="form form-horizontal responsive" id="commentForm"
			novalidate="novalidate">
			<input type="hidden" value="${busiInfo.id }" name="id" /> <input
				type="hidden" value="${busiInfo.logo }" id="logo-value" name="logo" /> <input
				type="hidden" value="${busiInfo.licence }" id="licence-value" name="licence" />
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
						placeholder="电话" name="phone" id="phone">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">地址：</label>
				<div class="formControls col-xs-8">
					<input type="text" value="${busiInfo.address }" class="input-text"
						placeholder="地址" name="address" id="address">
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">门店简介：</label>
				<div class="row clearfix">
					<div class="formControls col-xs-8">
						<script id="editor" name="des" type="text/plain"
							style="width: 1024px; height: 500px;"></script>

					</div>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">平均消费：</label>
				<div class="formControls col-xs-8">
					<input type="text" value="${busiInfo.avgCost }" class="input-text"
						placeholder="平均消费" name="avgCost" id="avgCost">
				</div>
			</div>
			<div class="row cl">
				<div class="row cl">
					<label class="form-label col-xs-3">营业执照：</label>
					<div class="formControls col-xs-8">
						<div class="layui-upload">
							<button type="button" class="layui-btn" id="test2">上传营业执照</button>
							<div class="layui-upload-list">
								<img class="layui-upload-img" id="demo2">
								<p id="demoText"></p>
							</div>
						</div>
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-3">起送价：</label>
					<div class="formControls col-xs-8">
						<input type="text" class="input-text" autocomplete="off"
							placeholder="起送价" value="${busiInfo.starPrice }" name="starPrice"
							id="starPrice">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-3">配送费：</label>
					<div class="formControls col-xs-8">
						<input type="text" class="input-text" autocomplete="off"
							placeholder="配送费" name="disFee" value="${busiInfo.disFee }"
							id="disFee">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-3">在线支付：</label> <span
						class="select-box" style="width: 200px; margin-left: 15px;">
						<select class="select" size="1" name="onlinePay">
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

				<div class="row cl">
					<label class="form-label col-xs-3">支持预定：</label> <span
						class="select-box" style="width: 200px; margin-left: 15px;">
						<select class="select" size="1" name="isReserve">
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
				<div class="row cl">
					<label class="form-label col-xs-3">营业状态：</label> <span
						class="select-box" style="width: 200px; margin-left: 15px;">
						<select class="select" size="1" name="isBusiness">
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
				<div class="row cl">
					<label class="form-label col-xs-3">所在城市：</label> <span
						class="select-box" style="width: 200px; margin-left: 15px;">
						<select class="select" size="1" name="cityId" id="cityId">
							<option value="-1">请选择</option>

					</select>
					</span>
				</div>

				<div class="row cl">
					<label class="form-label col-xs-3">类别：</label> <span
						class="select-box" style="width: 200px; margin-left: 15px;">
						<select class="select" size="1" name="typeId" id="typeId">
							<option value="-1">请选择</option>

					</select>
					</span>
				</div>


				<div class="row cl">
					<div class="col-xs-8 col-xs-offset-3">
						<input class="btn btn-primary" id="submit" type="submit"
							value="&nbsp;&nbsp;提交审核&nbsp;&nbsp;">
					</div>
				</div>
		</form>
	</div>


</body>
<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script src="../layui/layui.all.js"></script>



<script>
	//加载城市数据
	$(function() {
		$.get("../CityServlet", "op=ajaxQuery",
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
		$.get("../TypeServlet", "op=ajaxQuery",
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
	
	//图片ajax上传
	
	$("#logo").change(function(){
		$("#logo-upload").css("display","");
		
		$("#logo-upload").click(function(){
			/* $.get("${pageContext.request.contextPath}/UploadHandleServlet","new FormData($('#logo-form'))",function(){
				
			}); */
			$("#logo-form").ajaxSubmit(function(data){
                alert(data);
           })
			 
		
		}); 
		
	});
</script>
<script
	src="${pageContext.request.contextPath }/jqueryValidate/jquery.validate.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath }/jqueryValidate/messages_zh.js"
	type="text/javascript"></script>

<script>

//jqueryValidate验证
	$.validator.setDefaults({
		submitHandler : function() {
		
			$("form").submit();
			
			$("#submit").click(function(){
				layer.msg("正在提交，请稍候..", {
					time : 20000, //20s后自动关闭
				});
				return false;
			});
		}
	});
	//手机号码验证  
	jQuery.validator
			.addMethod(
					"isMobile",
					function(value, element) {
						var length = value.length;
						var mobile = /^(13[0-9]{9})|(18[0-9]{9})|(14[0-9]{9})|(17[0-9]{9})|(15[0-9]{9})$/;
						return this.optional(element)
								|| (length == 11 && mobile.test(value));
					}, "请正确填写手机号码");
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
				},typeId : {
					required : true,
					min : 0
				},
				agree : "required"
			},
			messages : {
				busiName : "请输入门店名",
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
	
	
	//显示消息
	$(function(){
		if(${requestScope.msg!=null}){
			layer.msg('${requestScope.msg}', {
				time : 20000, //20s后自动关闭
				btn : [ '我知道了' ]
			});
		}
	});
</script>

<script type="text/javascript">
	//实例化编辑器
	//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
	var ue = UE.getEditor('editor');

	function isFocus(e) {
		alert(UE.getEditor('editor').isFocus());
		UE.dom.domUtils.preventDefault(e)
	}
	function setblur(e) {
		UE.getEditor('editor').blur();
		UE.dom.domUtils.preventDefault(e)
	}
	function insertHtml() {
		var value = prompt('插入html代码', '');
		UE.getEditor('editor').execCommand('insertHtml', value)
	}
	function createEditor() {
		enableBtn();
		UE.getEditor('editor');
	}
	function getAllHtml() {
		alert(UE.getEditor('editor').getAllHtml())
	}
	function getContent() {
		var arr = [];
		arr.push("使用editor.getContent()方法可以获得编辑器的内容");
		arr.push("内容为：");
		arr.push(UE.getEditor('editor').getContent());
		alert(arr.join("\n"));
	}
	function getPlainTxt() {
		var arr = [];
		arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
		arr.push("内容为：");
		arr.push(UE.getEditor('editor').getPlainTxt());
		alert(arr.join('\n'))
	}
	function setContent(isAppendTo) {
		var arr = [];
		arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
		UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
		alert(arr.join("\n"));
	}
	function setDisabled() {
		UE.getEditor('editor').setDisabled('fullscreen');
		disableBtn("enable");
	}

	function setEnabled() {
		UE.getEditor('editor').setEnabled();
		enableBtn();
	}

	function getText() {
		//当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
		var range = UE.getEditor('editor').selection.getRange();
		range.select();
		var txt = UE.getEditor('editor').selection.getText();
		alert(txt)
	}

	function getContentTxt() {
		var arr = [];
		arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
		arr.push("编辑器的纯文本内容为：");
		arr.push(UE.getEditor('editor').getContentTxt());
		alert(arr.join("\n"));
	}
	function hasContent() {
		var arr = [];
		arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
		arr.push("判断结果为：");
		arr.push(UE.getEditor('editor').hasContents());
		alert(arr.join("\n"));
	}
	function setFocus() {
		UE.getEditor('editor').focus();
	}
	function deleteEditor() {
		disableBtn();
		UE.getEditor('editor').destroy();
	}
	function disableBtn(str) {
		var div = document.getElementById('btns');
		var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
		for (var i = 0, btn; btn = btns[i++];) {
			if (btn.id == str) {
				UE.dom.domUtils.removeAttributes(btn, [ "disabled" ]);
			} else {
				btn.setAttribute("disabled", "true");
			}
		}
	}
	function enableBtn() {
		var div = document.getElementById('btns');
		var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
		for (var i = 0, btn; btn = btns[i++];) {
			UE.dom.domUtils.removeAttributes(btn, [ "disabled" ]);
		}
	}

	function getLocalData() {
		alert(UE.getEditor('editor').execCommand("getlocaldata"));
	}

	function clearLocalData() {
		UE.getEditor('editor').execCommand("clearlocaldata");
		alert("已清空草稿箱")
	}
</script>

<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use('upload', function(){
  var $ = layui.jquery
  ,upload = layui.upload;
  
  //缩略图上传
  var uploadInst = upload.render({
    elem: '#test1'
    ,url: '${pageContext.request.contextPath }/UploadHandleServlet'
    ,before: function(obj){
      //预读本地文件示例，不支持ie8
      obj.preview(function(index, file, result){
        $('#demo1').attr('src', result); //图片链接（base64）
      });
    }
    ,done: function(res){
      //如果上传失败
      if(res.code <1){
        return layer.msg('上传失败');
      }else{
    	  layer.msg('上传成功');
    	var logoPath=eval(res).data.path;
    	 $("#logo-value").attr("value",logoPath);
      }
      //上传成功
    }
    ,error: function(){
      //演示失败状态，并实现重传
      var demoText = $('#demoText');
      demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
      demoText.find('.demo-reload').on('click', function(){
        uploadInst.upload();
      });
    }
  });
  
  //营业执照上传
  var uploadInst = upload.render({
    elem: '#test2'
    ,url: '${pageContext.request.contextPath }/UploadHandleServlet'
    ,before: function(obj){
      //预读本地文件示例，不支持ie8
      obj.preview(function(index, file, result){
        $('#demo2').attr('src', result); //图片链接（base64）
      });
    }
    ,done: function(res){
      //如果上传失败
      if(res.code <1){
        return layer.msg('上传失败');
      }else{
    	  layer.msg('上传成功');
    	var licencePath=eval(res).data.path;
    	$("#licence-value").attr("value",licencePath);
      }
      //上传成功
    }
    ,error: function(){
      //演示失败状态，并实现重传
      var demoText = $('#demoText');
      demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
      demoText.find('.demo-reload').on('click', function(){
        uploadInst.upload();
      });
    }
  });
 
  
});
</script>
</html>
