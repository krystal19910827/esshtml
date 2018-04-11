<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>集团IT电渠监控系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script src="js/jquery-1.8.3.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/orderquery.js" type="text/javascript" charset="utf-8"></script>
     <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/table.css" />
  	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
 
  </head>
  
  <body>
    <div class="header">
			<img class="logo" src="img/logo.png" />
			<span id="title">集团IT电渠监控系统</span>
			<span id="mytime" ></span>
			<div class = "navigation"><ul> 
			<li><a href = "pages/orderquery.jsp">订单查询</a></li>
 		    <li><a href = "#">异常单查询</a></li>
			<li><a href = "#">重发门户</a></li>
			<li><a href = "#">重发下省</a></li>
			<li><a href = "index.jsp">返回</a></li></ul>
	        </div>
	  </div>
	<div class="content ">
		 <div class="left">
		<div class="l-container">
         <div class="registration">
		   <div class="avtar"><img src="img/color.jpg" /></div>			
		   <div class="form-info">
				<iform id ="form1" action="" name="orderquery"  method="get" >
					<p>外部订单号:<input type="text" class="text" id="outorder"  name="outorder" ></p>
					<p>4G订单号:<input type="text" class="text" id="order4G"  name="order4G" ></p>
					<p>号码查询:<input type="text" class="text" id="phonenum"  name="phonenum"  ></p>
					<p><span style="position:absolute;left:58px;color: #fff;">数据库：</span></p>
					<select class="btn-select" id="tnsselect" name="tnsselect">
 					    <option value="essdb">ESS读库</option>
 					    <option value="lterdr">4G读库</option>
 					    <option value="广东">广东库</option>
			            <option value="江苏">江苏库</option>
			            <option value="四川">四川库</option>
			            <option value="浙江">浙江库</option>
			            <option value="安徽">安徽库</option>
			            <option value="陕西">陕西库</option>
			            <option value="福建">福建库</option>
			            <option value="上海">上海库</option>
			            <option value="河北">河北库</option>
			            <option value="内蒙古">内蒙古库</option>
			            <option value="湖南">湖南库</option>
			            <option value="辽宁">辽宁库</option>
			            <option value="湖北">湖北库</option>
			            <option value="贵州">贵州库</option>
			            <option value="山东">山东库</option>
			            <option value="重庆">重庆库</option>
			            <option value="新疆">新疆库</option>
			            <option value="北京">北京库</option>
			            <option value="天津">天津库</option>
			            <option value="江西">江西库</option>
			            <option value="青海">青海库</option>
			            <option value="甘肃">甘肃库</option>
			            <option value="吉林">吉林库</option>
			            <option value="河南">河南库</option>
			            <option value="黑龙江">黑龙江库</option>
			            <option value="云南">云南库</option>
			            <option value="广西">广西库</option>
			            <option value="山西">山西库</option>
			            <option value="海南">海南库</option>
			            <option value="宁夏">宁夏库</option>
			            <option value="西藏">西藏库</option>
		            </select></p>
					<input type="submit" id ="submitForm" value="查询" >
					</iform>
			</div>			
			
	   </div>
	  </div>
		 </div>
		 <div class="right">
		 <div class="auto-run auto-run-active"></div>
				<img class="map-bg" src="img/background_map.png" />
				<div class="container-map">
					<img class="top-clip" src="img/clip.png" />
					<img class="bottom-clip" src="img/clip.png" />
					<img class="left-clip" src="img/clip2.png" />
					<img class="right-clip" src="img/clip2.png" />
					<div style="width:850px;margin:0 auto;">
						<iform id ="form2" src="showquery.jsp" name="orderquery"   >
						</iform></div>
				
		</div>
	</div>
  </body>
</html>