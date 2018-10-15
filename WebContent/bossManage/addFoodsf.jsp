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
 <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.1/css/bootstrap-theme.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.1/css/bootstrap.css" rel="stylesheet">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.1/js/affix.js"></script>


 <!-- <link rel="stylesheet" type="text/css"
	href="static/h-ui/css/H-ui.min.css" /> -->
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css"
	href="lib/Hui-iconfont/1.0.8/iconfont.css" /> 
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/skin/default/skin.css" id="skin" />
<link rel="stylesheet" type="text/css"
	href="static/h-ui.admin/css/style.css" /> 
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>

	<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath}/bossManage/css/bootstrap.min.css" rel="stylesheet">


  <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.1/js/affix.js"></script> -->
<script src="${pageContext.request.contextPath}/bossManage/js/bootstrap.min.js"></script>

  
<!--[if IE 6]>
<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script>
<![endif]-->
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<title>品牌管理</title>
</head>
<body>
	<nav class="breadcrumb">
		<i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span>
		产品管理 <span class="c-gray en">&gt;</span> 品牌管理 <a
			class="btn btn-success radius r"
			style="line-height: 1.6em; margin-top: 3px ；margin-left:200px"
			href="javascript:location.replace(location.href);" title="刷新">刷新<i
			class="Hui-iconfont">&#xe68f;</i></a>
	</nav>
	<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<form method="POST" enctype="multipart/form-data" action="../usf.do">
				<div class="form-group">
					 <label for="foodName" class="col-sm-2 control-label" >菜名</label>
					<div class="col-sm-10">
				
					<input type="hidden" class="form-control" id="busid" name="busid" value="2"/>
						<input type="text" class="form-control" id="foodName" name="foodName" placeholder="请输入美食名" />
					</div>
				</div>
				<div class="form-group">
					 <label for="price" class="col-sm-2 control-label">价格</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="price" name="price" placeholder="$$价格。。。" />
					</div>
				</div>
				<div class="form-group">
					 <label for="discount" class="col-sm-2 control-label">折扣</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="discount" name="discount" placeholder="多少折扣呢？"  />
					</div>
				</div>
				<div class="form-group">
					 <label for="num" class="col-sm-2 control-label">数量</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="num" name="num" placeholder="输入美食数量.." />
					</div>
				</div>
				 <div class="form-group">
					 <label for="salNum" class="col-sm-2 control-label">销售数量</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="salNum" name="salNum" placeholder="销售数量" />
					</div>
				</div> 
				<div class="form-group">
					 <label for="des" class="col-sm-2 control-label">详细描述</label>
					<div class="col-sm-10">
						<textarea rows="10" cols="104" id="des" name="des" placeholder="说两句，吸引顾客吧~~" ></textarea>
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
	<!--_footer 作为公共模版分离出去-->
	<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
	<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
	<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.js"></script>
	<script src="${pageContext.request.contextPath}/bossManage/js/holder.min.js"></script>
	<!--/_footer 作为公共模版分离出去-->

	<!--请在下方写此页面业务相关的脚本-->
	<script type="text/javascript"
		src="lib/My97DatePicker/4.8/WdatePicker.js"></script>
	<script type="text/javascript"
		src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
	<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
	<script type="text/javascript">
$('.table-sort').dataTable({
	"aaSorting": [[ 1, "desc" ]],//默认第几个排序
	"bStateSave": true,//状态保存
	"aoColumnDefs": [
	  //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
	  {"orderable":false,"aTargets":[0,6]}// 制定列不参与排序
	]
});
</script>




<script type="text/javascript">
	//上一页
	function prePage(){
		var page=1;
		if(${pd.page}>1){
			page=${pd.page-1};
			
		}
		
		location.href="${pageContext.request.contextPath}/fsf.do?op=queryFoods&page="+page+"&keywords="+document.getElementById("keywords").value;
		
	}
	//下一页
	function nextPage(){
		var page=${b.totalPage};
		if(${pd.page}<${pd.totalPage}){
			page=${pd.page+1};
			
		}
		
		location.href="${pageContext.request.contextPath}/fsf.do?op=queryFoods&page="+page+"&keywords="+document.getElementById("keywords").value;
		
	}
	
	</script>


	<script type="text/javascript">
		$(function() {
			$(".del").click(function del() {
				var foodName = $(this).parents("tr").find("td").eq(1).html();
				var flag = confirm("是否删除:"+foodName);
				if (flag == true) {
					//$(this).parents("tr"),当前行
					//$(this).parents("tr").find("td") 当前行的每一列值
					//$(this).parents("tr").find("td").eq(0).html()当前行的第一列值
					var id = $(this).parents("tr").find("td").eq(0).html();
					//var qId=$(this).parents("tr").find("td").eq(0).html();
					location.href = "${pageContext.request.contextPath}/fsf.do?op=delFoods&id=" + id;
				}
			})
			
			$(".update").click(
					function update() {
						var id = $(this).parents("tr").find("td").eq(0).html();
						console.log(id);
						var foodName = $(this).parents("tr").find("td").eq(1).html();
						var price = $(this).parents("tr").find("td").eq(2).html();
						var discount = $(this).parents("tr").find("td").eq(3).html();
						var num = $(this).parents("tr").find("td").eq(4).html();
						var salNum = $(this).parents("tr").find("td").eq(5).html();
						var des = $(this).parents("tr").find("td").eq(6).html();
						var logo = $(this).parents("tr").find("td").eq(7).html();
						var state = $(this).parents("tr").find("td").eq(8).html();
						$("#id").val(id);
						$("#foodName").val(foodName);
						$("#price").val(price);
						$("#discount").val(discount);	
						$("#num").val(num);
						$("#salNum").val(salNum);
						$("#des").val(des);
						$("#logo").val(${food.logo});
						$("#state").val(state);

					
					})
		})
	</script>

<!-- 	<script src="../layui/layui.js" charset="utf-8"></script>
	注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的
	<script>
layui.use(['laypage', 'layer'], function(){
  var laypage = layui.laypage
  ,layer = layui.layer;
  
  //完整功能
  laypage.render({
    elem: 'demo7'
    ,count: ${pd.total} ,
    curr:${pd.page}
    ,limit:${pd.pageSize}
    ,layout: ['count', 'prev', 'page','limit','next', 'skip']
    ,jump: function(obj,first){
    console.log(obj);
    console.log(first);
     
    if(!first){
    	 //do something
    	location.href="${pageContext.request.contextPath}/fsf.do?op=queryFoods&page="+obj.curr+"&pageSize="+obj.limit;
    	      }
    	    }
    	  });

});
</script> -->
<script type="text/javascript">

	$(function(){
		var salNum = $(this).parents("tr").find("td").eq(5).html();
		if(salNum==0){
			$("#state").val(0);
		}
	})

</script>


</body>
</html>