<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理信息系统首页</title>
<%
	// 权限验证
	if(session.getAttribute("currentUser")==null){
		response.sendRedirect("denglv.jsp");
		return;
	}
%>
<style type="text/css">
#list{
width:100%;
height:50px;
}
#list li{
float:left;
list-style-type:none;
}
#list li a{
color:#000000;
text-decoration:none;
padding-top:4px;
display:block;
width:100px;
height:25px;
text-align:center;
background-color:#F9F9F9;
margin-left:2px;
}
#list li a:hover{
background:#BBBBBB;
color：#FFFFFF；
}
#list li a.actiove{
border:1px solid #ffffff;
border-top-color:#808080;
border-left-color:#808080;
background-color:#d4d0c8;
}
</style>
</head>
<body background="images/童年.jpg" >
<p>Welcome to my system！</p>
<ul id="list">
  <center><li><a href="Class.jsp">基本信息</a></li>
  <li><a href="StudentServlet">图书</a></li>
  <li><a href="FindServlet">图书信息</a></li>
  <li><a href="Kebiao.jsp">你好</a></li>
  <li><a href="ChengjiServlet">好的</a></li>
  <li><a href="denglv.jsp"><b>退出登录</b></a></li></center>
</ul>
</body>
</html>