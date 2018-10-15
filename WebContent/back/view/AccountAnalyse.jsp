<%@page import="com.etc.service.impl.AccountlwqServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%
     AccountlwqServiceImpl ai=new AccountlwqServiceImpl();
     %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>统计分析</title>
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
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
 <div class="frame-header"><span class="page-reload cur">统计分析</span></div>
       
        <!--表格-->
        <div class="table-wrapper pl27 "  style="min-width:1090px;">
            <table class="table text-center">
                <thead>
                    <tr>
                        <th style="width: 280px;">
                        </th>
                        <th style="width: 280px;" class="sort cur">总数
                            <img class="bottom" src="${pageContext.request.contextPath}/img/jt-bottom.png" alt="">
                            <img class="top" style="display: none" src="${pageContext.request.contextPath}/img/jt-right-co.png" alt="">
                        </th>
                       <th style="width: 280px;" class="sort cur">待审核数
                            <img class="bottom" src="${pageContext.request.contextPath}/img/jt-bottom.png" alt="">
                            <img class="top" style="display: none" src="${pageContext.request.contextPath}/img/jt-right-co.png" alt="">
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><p><b>用户</b></p></td>
                        <td><p><%=ai.getSumUsers() %></p></td>
                        <td><p><%=ai.getSumUsersStatus() %></p></td>
            
                    </tr>
                     <tr class="info">
                        <td><p><b>商家</b></p></td>
                       <td><p><%=ai.getSumBoss() %></p></td>
                       <td><p><%=ai.getSumBossStatus() %></p></td>
                    </tr>
                     <tr >
                        <td><p><b>门店</b></p></td>
                       <td><p><%=ai.getSumBusi() %></p></td>
                        <td><p><%=ai.getSumBusiStatus() %></p></td>
                    </tr>
                     <tr>
                        <td><p><b>订单</b></p></td>
                        <td><p><%=ai.getSumOrders() %></p></td>
                        
                                      
                    </tr>
            
                     <tr>
                        <td><p><b>评论</b></p></td>
                        <td><p><%=ai.getSumComments() %></p></td>
                           
                    </tr>
                 
                
               
                </tbody>
            </table>
          
        </div>
       

</body>
<script src="${pageContext.request.contextPath}/back/plugin/jquery/jquery.js"></script>
<script src="${pageContext.request.contextPath}/back/js/frame-base.js"></script>
<script>

</script>
</html>