<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.etc.entity.Boss"%>
	
	 <%
	
	 Boss boss=(Boss)session.getAttribute("boss");
	
%> 
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
	<div class="page-container">
	<div class="row cl">
			<label class="form-label col-xs-3">缩略图：</label>
			<div class="formControls col-xs-8">
				<div class="layui-upload">
					<button type="button" class="layui-btn" id="test2">上传缩略图</button>
					<div class="layui-upload-list">
						<img class="layui-upload-img" id="demo2" >
						<p id="demoText"></p>
					</div>
				</div>
			</div>
		</div>
		<form method="POST"  action="../fsf.do?op=addFoods" class="form form-horizontal responsive"
			id="demoform" novalidate="novalidate">
			<div class="row cl">
				<label class="form-label col-xs-3">菜名：</label>
				<div class="formControls col-xs-8">	
						<input type="hidden" class="form-control" id="id" name="id"/>
						<input type="hidden" value="" id="logo-value" name="logo" />
						<input type="hidden" class="form-control" id="busid" name="busid" value="${sessionScope.boss.id}"/>
					<input type="text" class="input-text" placeholder="请输入美食名111"
						name="foodName" id="foodName" autocomplete="off" value="" />
						<div id="div1"></div>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">价格：</label>
				<div class="formControls col-xs-8">
					<input type="text" class="input-text" placeholder="$$价格。。。"
						name="price" id="price" autocomplete="off">
						<div id="div2"></div>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">折扣</label>
				<div class="formControls col-xs-8">
					<input type="text" class="input-text" placeholder="多少折扣呢？"
						name="discount" id="discount" autocomplete="off">
						<div id="div3"></div>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">数量</label>
				<div class="formControls col-xs-8">
					<input type="text" class="input-text" placeholder="输入美食数量.."
						name="num" id="num" autocomplete="off">
						<div id="div4"></div>
				</div>
			</div>
			<div class="row cl">
				<label class="form-label col-xs-3">销售数量</label>
				<div class="formControls col-xs-8">
				
					<input type="text" class="input-text" placeholder="销售数量"
						name="salNum" id="salNum" autocomplete="off">
						<div id="div5"></div>
				</div>
			</div>
			
			<div class="row clearfix">
				<label class="form-label col-xs-3">详细描述</label>
				<div class="formControls col-xs-8">
					<script id="editor" name="des" type="text/plain" style="width:1024px;height:500px;"></script>
					<div id="div6"></div>

				</div>
			</div>
			
			<!-- <div class="row cl">
			<label class="form-label col-xs-3">缩略图：</label>
			<div class="formControls col-xs-8">
				<div class="layui-upload">
				
					<button type="button" class="layui-btn" id="test2">上传缩略图</button>
					<div class="layui-upload-list">
						<img class="layui-upload-img" id="demo2" name="logo">
						<p id="demoText" ></p>
					</div>
				</div>
			</div>
		</div> -->

			<div class="row clearfix">
				<label class="form-label col-xs-3">状态：</label>
				<div class="formControls col-xs-8">

					<div class="col-xs-6">
						<span class="select-box"> 
						<select class="select" size="1" name="state">
								<option value="0" selected="">有货</option>			
						<option value="1">售罄</option>
						</select>
						</span>
					</div>
				</div>
			</div>
			<div class="row clearfix">
				<label class="form-label col-xs-3">门店：</label>
				<div class="formControls col-xs-8">

					<div class="col-xs-6">
						<span class="select-box"> 
						<select class="select" size="1" name="busiName" id="busiName">
								
						</select>
						</span>
					</div>
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

<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
<script src="../layui/layui.all.js"></script>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script type="text/javascript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="jquery.js"></script>

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
<script type="text/javascript">

$(document).ready(function(){
	//价格格式
	 var reg = /(^[1-9]\d*(\.\d{1,2})?$)|(^0(\.\d{1,2})?$)/;
	//折扣格式
	 var reg1=/(^0\.[1-9]{1,2}$)|(^0\.[0-9]{1}[1-9]{1}$)|(^1{1}$)|(^1{1}\.0{2}$)|(^1{1}\.0{1}$)/;
	//数量格式
	 var reg2=/^[1-9]\d*$/;
	  $("#foodName").mouseover(function(){
		  if($("#foodName").val()==""){
			  $("#div1").text("菜名不为空");
			  $("#div1").css("color","red");
		  }else{
			  $("#div1").text("");
		  }
	   
	  });
	  $("#foodName").mouseout(function(){
		  if($("#foodName").val()!=""){
			  $("#div1").text("");
		  }else if($("#foodName").val()==""){
			  $("#div1").text("菜名不为空");
			  $("#div1").css("color","red");
		  }
	  });
	  $("#price").mouseover(function(){
		  if($("#price").val()=="" || !reg.test($("#price").val())){
			  $("#div2").text("请输入正确的价格格式");
			  $("#div2").css("color","red");
		  }else{
			  $("#div2").text("");
		  }
	   
	  });
	  $("#price").mouseout(function(){
		  if($("#price").val()!="" && reg.test($("#price").val())){
			  $("#div2").text("");
		  }else{
			  $("#div2").text("请输入正确的价格格式");
			  $("#div2").css("color","red");
		  }
	  });
	  
	  $("#discount").mouseover(function(){
		  if($("#discount").val()=="" || !reg1.test($("#discount").val())){
			  $("#div3").text("请输入正确的价格格式");
			  $("#div3").css("color","red");
		  }else{
			  $("#div3").text("");
		  }
	   
	  });
	  $("#discount").mouseout(function(){
		  if($("#discount").val()!="" && reg1.test($("#discount").val())){
			  $("#div3").text("");
		  }else{
			  $("#div3").text("请输入正确的价格格式");
			  $("#div3").css("color","red");
		  }
	  });
	  
	  $("#num").mouseover(function(){
		  if($("#num").val()=="" || !reg2.test($("#num").val())){
			  $("#div4").text("请输入正确的数量格式");
			  $("#div4").css("color","red");
		  }else{
			  $("#div4").text("");
		  }
	   
	  });
	  $("#num").mouseout(function(){
		  if($("#num").val()!="" && reg2.test($("#num").val())){
			  $("#div4").text("");
		  }else{
			  $("#div4").text("请输入正确的数量格式");
			  $("#div4").css("color","red");
		  }
	  });
	  $("#salNum").mouseover(function(){
		  if($("#salNum").val()=="" || !reg2.test($("#salNum").val())){
			  $("#div5").text("请输入正确的销售数量格式");
			  $("#div5").css("color","red");
		  }else{
			  $("#div5").text("");
		  }
	   
	  });
	  $("#salNum").mouseout(function(){
		  if($("#salNum").val()!="" && reg2.test($("#salNum").val())){
			  $("#div5").text("");
		  }else{
			  $("#div5").text("请输入正确的销售数量格式");
			  $("#div5").css("color","red");
		  }
	  });
	 
	  
	});


</script>
<script type="text/javascript">
$(function() {
    //鼠标离文本框判断名称是否重复
    //#buyerName 获取要判断的文本框
    //绑定propertychange 即刻搜索事件(键盘按下就提示)
    $("#buyerName").bind("input propertychange",function(){
        $.ajax({
            type : "POST",
            url : "/checkBuyerFigure.htm",
            data : {
                //获取文本框的值
                buyerName : $("#buyerName").val()
            },
            dataType : "json",
            success : function(data) {
                $('#errorbuyerName').empty(); // 清空resText里面的所有内容
                $("#errorbuyerName").text(data.msg);
                //设置获取submit的，设置submit的属性（false禁止提交，true允许提交）
                if(data.msg=="可以使用此名"){
                    $(".save-subnit input").attr("disabled",false);
                }
                if(data.msg!="可以使用此名"){
                    $(".save-subnit input").attr("disabled",true);
                }
            }
        });
    })
}


</script>

<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use('upload', function(){
  var $ = layui.jquery
  ,upload = layui.upload;
  
  //（未使用）上传
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
  
  //图片上传
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
    	$("#logo-value").attr("value",licencePath);
    //	console.log(licencePath);
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



<script type="text/javascript">
$(function() {
		$.get("${pageContext.request.contextPath}/bsf.do", function(data, status) {
	//	var arr = JSON.parse(data);
	console.log("11111");
		$.each(data, function(index, e) {
			$("#busiName").append("<option value="+e.id+">" + e.busiName +","+e.address +"</option>");
		});

	});
});

</script>

</html>