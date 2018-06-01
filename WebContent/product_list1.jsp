<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.List"%>
<%@page import="com.lyp.bean.JieYue"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有商品信息</title>
<style type="text/css">
	td{font-size: 12px;}
	h2{margin: 0px}
</style>
</head>
<body   background="images/nvhai.jpg">
<table align="center" width="650" border="1" height="450" bordercolor="brownamber" bgcolor="" cellpadding="1" cellspacing="1">
	<tr bgcolor="">
		<td align="center" colspan="5">
			<h2>所有学生借阅信息</h2>
		</td>
	</tr>
	<tr align="center" bgcolor="" >
		<td><b>ID</b></td>
		<td><b>学号</b></td>
		<td><b>姓名</b></td>
		<td><b>借阅图书名称</b></td>
		<!--  <td><b>单位</b></td>-->
	</tr>
	<%
		List<JieYue> list = (List<JieYue>)request.getAttribute("list");
		for(JieYue p : list){
	%>
	<tr align="center" bgcolor="">
		<td><%=p.getId()%></td>
		<td><%=p.getSno()%></td>
		<td><%=p.getSname()%></td>
		<td><%=p.getBookname()%></td>
	</tr>
	<%	
		}
	%>
	<tr>
		<td align="center" colspan="5" bgcolor="">
			<%=request.getAttribute("bar")%>
		</td>
	</tr>
</table>
<!--  <center><a href="index.jsp">返回主菜单</a></center>-->
</body>
</html>