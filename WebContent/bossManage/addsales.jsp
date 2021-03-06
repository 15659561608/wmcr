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
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<title>我的桌面</title>

 <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/Ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/Ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/Ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body>


	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		促销管理<span class="c-gray en">&gt;</span> 显示促销信息 <span class="c-gray en">&gt;</span>
		修改促销信息<a class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px"
			href="javascript:location.replace(location.href);" title="刷新"><i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="page-container">
		<form action="${pageContext.request.contextPath }/SalesServlet?op=add"
			method="post" class="form form-horizontal responsive"
			id="commentForm" novalidate="novalidate">
			<input type="hidden" value="${SalesInfo.salId }" name="salId" />
			
			<div class="row cl">
				<label class="form-label col-xs-3">标题：</label>
				<div class="formControls col-xs-8">
					<input type="text" class="input-text" placeholder="输入标题"
						name="title" aria-required="true" value="${SalesInfo.title }"
						id="busiName" autocomplete="off" required>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">折扣：</label>
				<div class="formControls col-xs-8">
					<input type="text" value="${SalesInfo.discount }" class="input-text"
						placeholder="4~16个字符，字母/中文/数字/下划线" name="discount" id="phone">
				</div>
			</div>
			
			<div class="row cl">
				<label class="form-label col-xs-3">内容：</label>
				<div class="row clearfix">
				<div class="formControls col-xs-8">
					<script id="editor" name="content" type="text/plain" style="width:1024px;height:500px;">${SalesInfo.content }</script>

				</div>
			</div>
			<div class="row cl">
					<label class="form-label col-xs-3">选择促销门店：</label>  <span
						class="select-box" style="width: 200px; margin-left: 15px;">
						<select class="select" size="1" name="busiId" id="busiId">
							<option value="-1">请选择</option>

					</select>
					</span>
				</div>
			
			</div>
			

						<div class="row cl">
							<div class="col-xs-8 col-xs-offset-3">
								<input class="btn btn-primary" type="submit"
									value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
							</div>
						</div>
		</form>
	</div>


</body>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/bossManage/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/bossManage/static/h-ui/js/H-ui.min.js"></script>
<script src="${pageContext.request.contextPath }/layui/layui.all.js"></script>

<script src="${pageContext.request.contextPath }/jqueryValidate/jquery.validate.min.js"
	type="text/javascript"></script>
<script src="${pageContext.request.contextPath }/jqueryValidate/messages_zh.js" type="text/javascript"></script>

<script>
	$.validator.setDefaults({
		submitHandler : function() {
			$("form").submit();
		}
	});

	$().ready(function() {
		$("#commentForm").validate({

			rules : {
				title : "required",
			
				
				discount : {
					required : true,
					number : true,
					minlength : 1,
					maxlength : 3
				},
				
			},
			messages : {
				title : "请输入标题",
				discount : "请输入折扣",
			}
		});

	});

	
</script>

<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('editor');


    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
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
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData () {
        alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
    }

    function clearLocalData () {
        UE.getEditor('editor').execCommand( "clearlocaldata" );
        alert("已清空草稿箱")
    }
</script>


<script>
//加载类别数据
$(function() {
	$.get("${pageContext.request.contextPath}/Business", "op=ajaxQuery",
			function(data, sataus) {
				$("#busiId").children("option").remove();
				$("#busiId").append("<option value='-1'>请选择</option>");
				$.each(data, function(index, v) {
					$("#busiId").append(
							"<option value='"+v.id+"'>" + v.busiName
									+ "</option>");
				});
			});
});
</script>
</html>
