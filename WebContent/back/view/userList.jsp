<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>用户列表</title>
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
    <div class="frame-header"><span class="page-reload cur">用户列表</span></div>
    <!--操作栏-->
    <div class="operates clearfix" style="overflow: auto;white-space: nowrap; font-size: 0;">
<form  method="post">
        <div class="pull-left left-inp defualt">
            <input type="text" class="pull-left" style="margin-left: 10px;" placeholder="用户名、手机号" name="keywords"id="keywords" value="${keywords}">
            <button class="btn delete pramary">搜索</button>
        </div>
        <div class="right-btns" style="font-size: 0">
</form>
            
        </div>
    </div>
    <!--表格-->
    <div class="table-wrapper pl27 " style="min-width:1000px;">
        <table class="table text-center">
            <thead>
                <tr>
                    <th class="yt" style="width: 5%;">用户Id
                        <input type="checkbox" class="allCheck" id="all"><label for="all" style="width: 40px">&nbsp;&nbsp;&nbsp;</label></th>
                    <th style="width: 16%;" class="sort cur">用户名
                        <img class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width:5%">姓名
                        <img class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width:9%">手机号
                        <img class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width: 15%;">注册时间
                        <img class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width: 15%;">收货地址
                        <img class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width: 3%;">纬度
                        <img class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width: 3%;">经度
                        <img class="bottom" src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png" alt="">
                    </th>
                    <th class="sort cur" style="width: 9%;">状态
                     <a   href="javascript:getStateByOrder()">
                        <img class="bottom"  src="${pageContext.request.contextPath}/back/img/jt-bottom.png" alt="">
                        <img class="top" style="display: none" src="${pageContext.request.contextPath}/back/img/jt-right-co.png" alt="">
                   </a>
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
								<jsp:forward page="/csc.do?op=queryCustomersByPage"></jsp:forward>
							</c:if>
							<c:forEach items="${requestScope.pd.data}" var="c">

							<tr>
							<td>
                        <input type="checkbox" name="pkId" id="${c.id}"> <label for="${c.id}">${c.id}</label></td>
                    
								
								<td>${c.account}</td>
								<td>${c.custName}</td>
								<td>${c.phone}</td>
								<td>${c.regDate}</td>
								<td>${c.address}</td>
								<td>${c.lat}</td>
								<td>${c.lon}</td>
								<td>${c.state ==0? "通过" : "未审核"}</td>
								<td>
								<a href="${pageContext.request.contextPath}/csc.do?userId=${c.id}&state=${c.state}&op=updateCustomerState">修改[超链接]</a>
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
<script type="text/javascript">
function prePage(){
	var page = 1;
	if(${pd.page}>1){
		page=${pd.page}-1;
	}
	location.href="${pageContext.request.contextPath}/csc.do?op=queryCustomersByPage&page="+page+"&keywords="+document.getElementById("keywords").value;
}
/**
 * 下一页
 */
function nextPage(){
	var page = ${pd.totalPage};
	if(${pd.page}<${pd.totalPage}){
		page=${pd.page}+1;
	}
	location.href="${pageContext.request.contextPath}/csc.do?op=queryCustomersByPage&page="+page+"&keywords="+document.getElementById("keywords").value;
}
/**
 * 跳转到X页
 */
function jumpPage(page){
	
	location.href="${pageContext.request.contextPath}/csc.do?op=queryCustomersByPage&page="+page+"&keywords="+document.getElementById("keywords").value;
}

function getStateByOrder()
{
	   //${pd.page}当前是第几页
	   //什么情况下才有下一页?	   
	   location.href="${pageContext.request.contextPath}/csc.do?op=queryCustomersByOrder&page="+page+"&keywords="+document.getElementById("keywords").value;
}

</script>
</html>