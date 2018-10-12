<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="UTF-8">
    <title>登陆帐号</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/back/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/back/css/frame.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/back/css/addClass.css">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <div class="frame-header"><span class="page-reload cur">登录帐号</span></div>
    <!--操作栏-->
    <div class="operates clearfix" style="overflow: auto;white-space: nowrap; font-size: 0;">
        <div class="pull-left left-inp defualt">
           <!--  <input type="text" class="pull-left" style="margin-left: 10px;" name="keywords" placeholder="账号名">
            <button class="btn delete pramary">搜索</button> -->
            	<form class="navbar-form navbar-right" method="post"
					action="${pageContext.request.contextPath}/OrdersLServlet">
					<input type="hidden" name="op" value="queryansByPage"> <input
						type="text" class="form-control" placeholder="账号名"
						name="keywords" id="keywords" value="${keywords}">
					<button class="btn btn-default">搜索</button>
				</form>
        </div>
    
    </div>
    <!--表格-->
    <div class="table-wrapper pl27 " style="min-width: 300px;">
        <table class="table text-center">
            <thead>
                <tr>
                    <th style="width: 1%;" class="yt">
                       <input type="checkbox" class="allCheck" id="all"><label for="all">&nbsp;&nbsp;&nbsp;</label></th>
                    <th style="width: 2%;" class="sort cur">订单ID
                        <img class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width: 2%">用户名
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width: 2%;">店面
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width: 2%;">时间
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="no-nowrap sort cur" style="width: 2%;">订单金额
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="no-nowrap sort cur" style="width: 2%;">菜单名
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="no-nowrap sort cur" style="width:3%;">数量
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width:3%;">状态
                        <img class="bottom" src="../img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="../img/jt-right-co.png" alt="">
                    </th>
                    
                  
                </tr>
            </thead>
            <tbody>
             <c:if test="${requestScope.pd == null}">
								<jsp:forward page="/OrdersLServlet?op=queryansByPage"></jsp:forward>
							</c:if>
 
							<c:forEach items="${requestScope.pd.data}" var="a">


								<tr>
								<td> </td>
									<td>${a.id}</td>
									<td>${a.account}</td>
									<td>${a.busiName}</td>
									<td>${a.ordDate}</td>
									<td>${a.money}</td>
									<td>${a.foodName}</td>
									<td>${a.num}</td>
									<td>${a.state}</td>
								</tr>

							</c:forEach>


            </tbody>
        </table>
    </div>
      <!-- 分页 开始 -->

				<div class="row clearfix text-center">
					<div class="col-md-12 column">
						<ul class="pagination">
							<li><a href="javascript:prePage()">上一页</a></li>

							<!-- pd.totalPage -->
							<c:forEach begin="1" end="${pd.totalPage}" var="index">

								<c:if test="${index == pd.page}">
									<li class="active"><a href="#">${index}</a></li>
								</c:if>
								<c:if test="${index!=pd.page}">
									<li><a href="javascript:jumpPage(${index})">${index}</a></li>
								</c:if>
							</c:forEach>
							<li><a href="javascript:nextPage()">下一页</a></li>
						</ul>
					</div>
				</div>

				<!-- 分页 结束 -->
</body>
<script src="../plugin/jquery/jquery.js"></script>
<script src="../js/frame-base.js"></script>

<script>
	   //使用javascript代码来实现上一页
	   function prePage()
	   {
		   //${pd.page}当前是第几页
		   //什么情况下才有上一页
		   var page = 1;
		   if(${pd.page}>1)
			   {
			      page=${pd.page}-1;
			   }
		   
		   location.href="${pageContext.request.contextPath}/OrdersLServlet?op=queryansByPage&page="+page+"&keywords="+document.getElementById("keywords").value;
	   }
	 //使用javascript代码来实现"下一页"
	   function nextPage()
	   {
		   //${pd.page}当前是第几页
		   //什么情况下才有下一页?
		   var page = ${pd.totalPage};
		   if(${pd.page}<${pd.totalPage})
			   {
			      page=${pd.page}+1;
			   }
		   
		   location.href="${pageContext.request.contextPath}/OrdersLServlet?op=queryansByPage&page="+page+"&keywords="+document.getElementById("keywords").value;
	   }
	   
	   //翻页[跳转到指定的页]
	   function jumpPage(page)
	   {
	      location.href="${pageContext.request.contextPath}/OrdersLServlet?op=queryansByPage&page="+page+"&keywords="+document.getElementById("keywords").value;
	   }
	   
	   
	</script>



</html>