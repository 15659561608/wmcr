<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>
 

  <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.1/css/bootstrap-theme.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.1/css/bootstrap.css" rel="stylesheet">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.1/js/affix.js"></script>



    <!-- Custom styles for this template -->
   

</head>

<body>

	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<form method="POST" enctype="multipart/form-data" action="../usf.do">
				<div class="form-group">
					 <label for="foodName" class="col-sm-2 control-label">菜名</label>
					<div class="col-sm-10">
				
					<input type="hidden" class="form-control" id="busid" name="busid" value="2"/>
						<input type="text" class="form-control" id="foodName" name="foodName" />
					</div>
				</div>
				<div class="form-group">
					 <label for="price" class="col-sm-2 control-label">价格</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="price" name="price"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="discount" class="col-sm-2 control-label">折扣</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="discount" name="discount" />
					</div>
				</div>
				<div class="form-group">
					 <label for="num" class="col-sm-2 control-label">数量</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="num" name="num" />
					</div>
				</div>
				<div class="form-group">
					 <label for="salNum" class="col-sm-2 control-label">销售数量</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="salNum" name="salNum"/>
					</div>
				</div>
				<div class="form-group">
					 <label for="des" class="col-sm-2 control-label">详细描述</label>
					<div class="col-sm-10">
						<textarea rows="10" cols="130" id="des" name="des"></textarea>
					</div>
				</div>
				<div class="form-group">
					 <label for="logo" class="col-sm-2 control-label">图片</label>
					<div class="col-sm-10">
						<input type="file" class="form-control" id="logo" name="logo" />
					</div>
				</div>
				<div class="form-group" >
					 <label for="state" class="col-sm-2 control-label">状态</label>
					<select name="state" style="height:30px;width:80px;margin-left:16px;">
						 <option value="0">有货</option>
						<option value="1">售罄</option>
					</select>
				</div>
						
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="submit" class="btn btn-default">确认</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	

	

</body>

</html>