<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>集团IT电渠监控系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script src="js/jquery-1.8.3.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/common.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="js/highcharts.js"></script>
		<script src="js/highcharts-more.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/solid-gauge.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript" src="js/index.js"></script>
		<script type="text/javascript" src="js/energy.js"></script>
		<script src="js/bar.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/time.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/ajax.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/chart-runtime-bar.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/chart-pie-temp.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/chart-run-load.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/chart-nums-4.js" type="text/javascript" charset="utf-8"></script>
		<script type = "text/javascript" src = "js/element_script.js"></script>
		<link rel="stylesheet" href="css/style.css" />
		<script src="js/poptabs.js" type="text/javascript" charset="utf-8"></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
    <div class="header">
			<img class="logo" src="img/logo.png" />
			<span id="title">集团IT电渠监控系统</span>
			<span id="mytime" ></span>
        <div class = "navigation">
	    <ul><li class = "color1"><a href = "index.jsp">首页</a></li>
		<li><a href ="/orderquery">订单管理</a>
			<ul>
				<li><a href = "/orderquery">订单查询</a></li>
				<li><a href = "#">异常单查询</a></li>
				<li><a href = "#">重发门户</a></li>
				<li><a href = "#">重发下省</a></li>
				<li><a href = "index.jsp">返回</a></li>
			</ul>
		</li>
		<li class = "color2"><a>接口测试</a>
			<ul>
				<li><a href = "#">功能1</a></li>
				<li><a href = "#">功能1</a></li>
				<li><a href = "#">功能1</a></li>
				<li><a href = "index.jsp">返回</a></li>
			</ul>
		</li>
		<li class = "color3"><a href = "#">功能3</a></li>
		<li class = "color4"><a href = "#">功能4</a></li>
	   </ul>
     </div>
    </div>
		<div class="content ">
			<div class="left">
				<div class="l-container">
					<a id="map-link" href="http://42.99.16.142:7001/LoginFormWarning.jsp">
					<div id="container_pie_sum" class="div-container-1"></div></a>
					<div id="container_pie_single" class="div-container-1"></div>
				</div>
 			</div>
			<div class="right">
				<div class="r-header">
					<div class="data-num">
						<div class="num"><span id="data-leiji">9,653,876.1</span></div>
						<div class="dsc"><img src="img/city.png" /><span>订单量</span></div>
					</div>
					<div class="data-num">
						<div class="num "><span id="data-jiudian">2,488,765.9</span></div>
						<div class="dsc"><img src="img/shop.png" /> <span>正式单量</span></div>
					</div>
					<div class="data-num">
						<div class="num "><span id="data-yiyuan">756,892.1</span></div>
						<div class="dsc"><img src="img/yiyuan.png" /> <span>竣工量</span></div>
					</div>
					<div class="data-num">
						<div class="num "><span id="data-bangong">2,267,911.5</span></div>
						<div class="dsc"><img src="img/bangong.png" /> <span>在途单</span></div>
					</div>
					<div class="data-num">
						<div class="num "><span id="data-gongchang">886,125.5</span></div>
						<div class="dsc"><img src="img/gongchang.png" /> <span>异常单</span></div>
					</div>
					<div class="data-num">
						<div class="num "><span id="data-shuju">1,012,667.7</span></div>
						<div class="dsc"><img src="img/shuju.png" /> <span>ESS卡单</span></div>
					</div>
					<div class="data-num">
						<div class="num"><span id="data-qita">1,015,325.1</span></div>
						<div class="dsc"><img src="img/qita.png" /> <span>其他</span></div>
					</div>
					<div class="selected2"></div>
				</div>
				<div class="auto-run auto-run-active">电渠监控图</div>
				<img class="map-bg" src="img/background_map.png" />
				<div class="container-map">
					<img class="top-clip" src="img/clip.png" />
					<img class="bottom-clip" src="img/clip.png" />
					<img class="left-clip" src="img/clip2.png" />
					<img class="right-clip" src="img/clip2.png" />
					<div id="container_run_time" class="run-time">

					</div>
				<div id="btn1" class="img-huizong"></div>
				</div>
		</div>
	</div>
  </body>
</html>
