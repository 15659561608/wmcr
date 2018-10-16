<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>地图</title>

<link type="text/css" rel="stylesheet" href="css/public.css" />

<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/effects.js"></script>

</head>

<body>

<div class="pageBox page4">     
	<div class="map pagenow" data-rel="fadeIn"> 
		
		<div class="item db">
			<img src="images/db.png" /> 
			<div class="area"></div> 
			<div class="area current"></div> 
			<div class="info"> 
				<div class="box"> 
					<div class="left"> 
						<h3>东北区</h3> 
						
					</div> 
					<i></i> 
				</div> 
				<span class="round r1 pagenow delay100" data-rel="scaleIn"></span> 
				<span class="round r2 pagenow delay200" data-rel="scaleIn"></span> 
			</div> 
		</div> 
		
		<div class="item hb"> 
			<img src="images/hb.png" /> 
			<div class="area"></div> 
			<div class="area current"></div> 
			<div class="info"> 
				<div class="box"> 
					<div class="left"> 
						<h3>华北区</h3> 
						
					</div> 
					<i></i> 
				</div> 
				<span class="round r1 pagenow delay300" data-rel="scaleIn"></span> 
				<span class="round r3 pagenow delay400" data-rel="scaleIn"></span> 
			</div> 
		</div> 
		
		<div class="item xn">
			<img src="images/xn.png" /> 
			<div class="area"></div> 
			<div class="area current"></div> 
			<div class="info"> 
				<div class="box"> 
					<div class="left"> 
						<h3>西南区</h3> 
						
					</div> 
					<i></i> 
				</div> 
				<span class="round r1 pagenow delay900" data-rel="scaleIn"></span> 
				<span class="round r2 pagenow delay1000" data-rel="scaleIn"></span> 
				<span class="round r3 pagenow delay800" data-rel="scaleIn"></span> 
			</div> 
		</div> 
		
		<div class="item xb">
			<img src="images/xb.png" /> 
			<div class="area"></div> 
			<div class="area current"></div> 
			<div class="info"> 
				<div class="box"> 
					<div class="left"> 
						<h3>西北区</h3> 
						
					</div> 
					<i></i> 
				</div> 
				<span class="round r1 pagenow delay600" data-rel="scaleIn"></span> 
				<span class="round r2 pagenow delay500" data-rel="scaleIn"></span> 
				<span class="round r3 pagenow delay700" data-rel="scaleIn"></span> 
			</div> 
		</div> 
		
		<div class="item hd">
			<img src="images/hd.png" /> 
			<div class="area"></div> 
			<div class="area current"></div> 
			<div class="loc">厦门总部</div> 
			<div class="info"> 
				<div class="box"> 
					<div class="left"> 
						<h3>华东区</h3> 
						
					</div> 
					<i></i> 
				</div> 
				<span class="round r1 pagenow delay1200" data-rel="scaleIn"></span> 
				<span class="round r3 pagenow delay1300" data-rel="scaleIn"></span> 
			</div> 
		</div> 
		
		<div class="item hz">
			<img src="images/hz.png" /> 
			<div class="area"></div> 
			<div class="area current"></div> 
			<div class="info"> 
				<div class="box"> 
					<div class="left"> 
						<h3>华中区</h3> 
						
					</div> 
					<i></i> 
				</div> 
				<span class="round r2 pagenow delay1100" data-rel="scaleIn"></span> 
			</div> 
		</div> 
		
		<div class="item hn">
			<img src="images/hn.png" /> 
			<div class="area"></div> 
			<div class="area current"></div> 
			<div class="info"> 
				<div class="box"> 
					<div class="left"> 
						<h3>华南区</h3> 
						
					</div> 
					<i></i> 
				</div> 
				<span class="round r2 pagenow delay1400" data-rel="scaleIn"></span> 
			</div> 
		</div> 
		
	</div> 

	<div class="world pagenow" data-rel="fadeIn">
		<span class="dot"><em>中国</em></span>
	</div> 
	
	<div class="change pagenow" data-rel="fadeInRight"> 
	
		<div class="tab">
			<ul>
				<li>分店老板：大饼</li>
				<li>分店老板：小强</li>
				<li>分店老板：经理</li>
				<li>分店老板：智东</li>
				<li>分店老板：阿芳</li>
				<li>分店老板：果粒</li>
			</ul>
		</div> 
		 
	</div>
	     
</div>

</body>
</html>