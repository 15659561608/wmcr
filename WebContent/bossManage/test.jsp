<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%
	    String path = request.getContextPath();
	    String basePath = request.getScheme() + "://"
	            + request.getServerName() + ":" + request.getServerPort()
	            + path + "/";
	%>	 
	<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
	<html>
	  <head>
	    <base href="<%=basePath%>">
	    
	    <title>文件上传</title>
	    
	 <link href="bossManage/css/uploadify.css" rel="stylesheet" type="text/css" />
	 <script type="text/javascript" src="bossManage/js/jquery-1.11.0.min.js"></script>
	 <script type="text/javascript" src="bossManage/js/jquery.uploadify-3.1.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
	 $("#uploadify").uploadify({
		 			'auto'           : false,
	                'swf'       	 : '<%=path%>/scripts/uploadify.swf',
	                'uploader'       : '<%=path%>../upload',//后台处理的请求
	                'queueID'        : 'fileQueue',//与下面的id对应
	                'queueSizeLimit' :1,
	                'fileTypeDesc'   : 'rar文件或zip文件',
	                'fileTypeExts' 	 : '*.rar;*.zip', //控制可上传文件的扩展名，启用本项时需同时声明fileDesc
	                'multi'          : true,
	                'buttonText'     : '上传'
	 });
	});
	</script>
	 </head>
	<body>
	 		<div id="fileQueue"></div>
	        <input type="file" name="uploadify" id="uploadify" />
	        <p>
		        <a href="javascript:$('#uploadify').uploadify('upload')">开始上传</a> 
		        <a href="javascript:$('#uploadify').uplaodify('cancel','*')">取消上传</a>
	        </p>
	  </body>
	</html>
