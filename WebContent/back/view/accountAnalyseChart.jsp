<%@page import="com.etc.service.impl.AccountlwqServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
   
    
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
</head>

<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="height:400px"></div>
    <!-- ECharts单文件引入 -->
    <script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script type="text/javascript">
        // 路径配置
        require.config({
            paths: {
                echarts: 'http://echarts.baidu.com/build/dist'
            }
        });
        
        // 使用
        require(
            [
                'echarts',
                'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
            ],
            function (ec) {
                // 基于准备好的dom，初始化echarts图表
                var myChart = ec.init(document.getElementById('main')); 
                
                var datass=[];//显示的数据值
                
                $.get("${pageContext.request.contextPath}/ChartServlrtlwq",function(data,status){
                	  
                	 /*  datass=data;
                	  console.log(datass); */
                  data=JSON.parse(data);
                	  $.each(data,function(index,p){
                		  datass.push(p);
                	  });
              
                
                var option = {
                    tooltip: {
                        show: true
                    },
                    legend: {
                        data:['数量']
                    },
                    xAxis : [
                        {
                            type : 'category',
                            data : ["用户","未审核用户","商家","未审核商家","门店","未审核门店","订单","评论"]
                        }
                    ],
                    yAxis : [
                        {
                            type : 'value'
                        }
                    ],
                    series : [
                        {
                            "name":"数量",
                            "type":"bar",
                            "data":datass
                        }
                    ]
                };
        
                // 为echarts对象加载数据 
                myChart.setOption(option); 
                });
            }
        );
    </script>
</body>