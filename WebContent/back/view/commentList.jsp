<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>评论列表</title>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/back/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/back/css/frame.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/back/css/addClass.css">
    <style>
        .table-wrapper .table td label{
            width: 40px;
            text-align: left;
        }
    </style>
</head>

<body>
    <div class="frame-header"><span class="page-reload cur">评论列表</span></div>
    <!--操作栏-->
    <div class="operates clearfix" style="overflow: auto;white-space: nowrap; font-size: 0;">

        <div class="pull-left left-inp defualt">
<%-- 
        <form  method="post">
            <input type="text" class="pull-left" style="margin-left: 10px;" placeholder="用户名、店铺名" name="keywords"id="keywords" value="${keywords}">
			<input type="hidden" name="op" value="queryCommentByPage">
            <button class="btn delete pramary">搜索</button>
        </div>
        
</form>
           --%>  
           
           
           <form class="navbar-form navbar-right" method="post"
				action="${pageContext.request.contextPath}/cmt.do">
				<input type="hidden" name="op" value="queryCommentByPage"> <input
					type="text" class="pull-left" style="margin-left: 10px;"
					placeholder="用户名、店铺名 " name="keywords" id="keywords"
					value="${keywords}">
				<button class="btn delete pramary" type="submit">搜索</button>
			</form>
        </div>
    </div>
    <!--表格-->
    <div class="table-wrapper pl27 " style="min-width:1000px;">
        <table class="table text-center">
            <thead>
                <tr>
                    <th class="yt" style="width: 9%;">评论编号★
                        <input type="checkbox" class="allCheck" id="all"><label for="all" style="width: 40px">&nbsp;&nbsp;&nbsp;</label></th>
                    <th style="width: 16%;" class="sort cur">评论用户名
                        <img class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width:9%">评论店铺名
                        <img class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width:9%">好评星级
                        <img class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width: 9%;">评论内容
                        <img class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width: 9%;">评论时间
                        <img class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width: 9%;">审核
                        <img class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png" alt="">
                    </th>
                    
                </tr>
            </thead>
 <!-- 表格主体 -->
 <tbody>
						
						<c:if test="${requestScope.pd == null}">
								<jsp:forward page="/cmt.do?op=queryCommentByPage"></jsp:forward>
							</c:if>
							<c:forEach items="${requestScope.pd.data}" var="c">

							<tr>
							<td>
                        <input type="checkbox" name="pkId" id="${c.id}"> <label for="${c.id}">${c.id}</label></td>
                    
								
								<td>${c.account}</td>
								<td>${c.busiName}</td>
								<%-- <td>${c.praise == 5?"★★★★★":${c.praise == 4?"★★★★":${c.praise == 3?"★★★":${c.praise == 2?"★★":★}}}}</td> --%>
								<%-- <td>${c.praise==5?"★★★★★":${c.praise==4?"★★★★":"★★★"}}</td> --%>
								 <td>${c.praise}</td> 
								<td>${c.content}</td>
								<td>${c.comDate}</td>

								
								<td> 
								<button class="btn btn-link del">删除[按钮]</button>
								</td>
								</tr>
								</c:forEach>
						</tbody>
 
 <!-- 表格主体结束 -->
 
          
        </table>
    </div>
    <div class="table-tel clearfix">
        <div style="border-bottom: 1px solid #fff; overflow: hidden;" class="no-hover">
            <div class="fl tb1 tb1s" style="text-align: left;   ">
                <input type="checkbox" class="allCheck" id="all" ><label for="all" style="width: 45px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label></th>
            </div>
            <div class="fl tb2" style="text-align:left; width: 190px;display: table">&emsp;<span class="cur">短信</span>&emsp;<span class="cur">邮件</span>&emsp;<span class="cur">微信</span>&emsp;<span class="cur">审核</span>&emsp;
            </div>
   
            
            
  <!--分頁的開始  -->
					<center>
 
 <nav aria-label="Page navigation" style=""   >
            
  <ul class="pagination pagination-lg centered">
    <li>
      <a href="javascript:prePage()" aria-label="上一页">
        <span aria-hidden="true">&laquo;</span>
      </a>
    
    </li>
      <!--pd.totalPage  -->
      <c:forEach begin="1" end="${pd.totalPage}" var="index">
      <c:if test="${index== pd.page}">
    <li class="active"><a href="#">${index}</a></li>
</c:if>
<c:if test="${index!= pd.page}">
    <li><a href="javascript:jumpPage(${index})">${index}</a></li>
</c:if>

 </c:forEach>
   
    <li>
      <a href="javascript:nextPage()" aria-label="下一页">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>

	

            </nav> 
          	</center>
					<!-- 分頁的結束 -->		
  
  
  
  
  
  
  <%-- 
            <!-- 分页 -->
            <div class="tab-margin clearfix " style="width: 400px; position: absolute; left: 50%; margin-left: -120px;"">
                <div class="fl tb3" style="width: 225px;float: left;">
                    <div class="page-wrapper text-left">
                        <button class="btn-s"><img src="${pageContext.request.contextPath}/back/img/left-icon.png" alt=""></button>
                        <a href="#" class="active">1</a>
                        <a href="#" class="">2</a>
                        <a href="#" class="">3</a>
                        <button class="btn-s"><img src="${pageContext.request.contextPath}/back/img/right-icon.png" alt=""></button>
                    </div>
                </div>

              
            </div>
            <!-- 分页 -->
             --%>
    
            
        </div>
        
        
        
        
        
        
        
        
        
    </div>
    
    
    
    
    
    
    
</body>
<script src="${pageContext.request.contextPath}/back/plugin/jquery/jquery.js"></script>
<script src="${pageContext.request.contextPath}/back/js/frame-base.js"></script>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/back/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript">


function prePage(){
	var page = 1;
	if(${pd.page}>1){
		page=${pd.page}-1;
	}
	location.href="${pageContext.request.contextPath}/cmt.do?op=queryCommentByPage&page="+page+"&keywords="+document.getElementById("keywords").value;
}
/**
 * 下一页
 */
function nextPage(){
	var page = ${pd.totalPage};
	if(${pd.page}<${pd.totalPage}){
		page=${pd.page}+1;
	}
	location.href="${pageContext.request.contextPath}/cmt.do?op=queryCommentByPage&page="+page+"&keywords="+document.getElementById("keywords").value;
}
/**
 * 跳转到X页
 */
function jumpPage(page){
	
	location.href="${pageContext.request.contextPath}/cmt.do?op=queryCommentByPage&page="+page+"&keywords="+document.getElementById("keywords").value;
}

function getStateByOrder()
{
	   //${pd.page}当前是第几页
	   //什么情况下才有下一页?	   
	   location.href="${pageContext.request.contextPath}/csc.do?op=queryCustomersByOrder&page="+page+"&keywords="+document.getElementById("keywords").value;
}

$(function() {

	// 事件 class为del的按钮的事件
	$(".del").click(function() {

		var flag = confirm("是否确定删除？删除的数据将不可恢复.");
		if (flag == true) {
			//$(this) 当前的按钮的文本
			//$(this).parents("tr") 当前行对象
			//$(this).parents("tr").find("td") 找当前行的列td
			//$(this).parents("tr").find("td").eq(0) 当前行的第一个td
			alert($(this).parents("tr").find("td").eq(0).text());
			var comId = $(this).parents("tr").find("td").eq(0).text()
			//将这个结果 传递给servlet
			location.href = "${pageContext.request.contextPath}/cmt.do?op=del&comId=" + comId;
		}
	});
});
</script>
</html>