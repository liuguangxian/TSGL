<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.List"%>
<%@page import="com.lyp.bean.Book"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有图书信息</title>
<style type="text/css">
	form{margin: 0px;}
	td{font-size: 12px;}
	h2{margin: 2px}
</style>
<script type="text/javascript">
	function check(form){
		with(form){
			if(bookCount.value == ""){
				alert("请输入更新数量！");
				return false;
			}
			if(isNaN(bookCount.value)){
				alert("格式错误！");
				return false;
			}
			return true;;
		}
	}
</script>
</head>
<body   background="images/nvhai.jpg">
	<table align="center" width="1000" border="2" height="400" bordercolor="#AE6C18" bgcolor="" cellpadding="1" cellspacing="1">
		<tr bgcolor="">
			<td align="center" colspan="9">
				<h2>所有图书信息</h2>
			</td>
		</tr>
		<tr align="center" bgcolor="" >
			<td><b>ID</b></td>
			<td><b>图书名称</b></td>
			<td><b>价格</b></td>
			<td><b>数量</b></td>
			<td><b>作者</b></td>	
			<td><b>修改数量</b></td>

		</tr>
			<%
				// 获取图书信息集合
					List<Book> list = (List<Book>)request.getAttribute("list");
					// 判断集合是否有效
					if(list == null || list.size() < 1){
						out.print("没有数据！");
					}else{
						// 遍历图书集合中的数据
						for(Book book : list){
			%>
				<tr align="center" bgcolor="">
					<td><%=book.getId()%></td>
					<td><%=book.getName()%></td>
					<td><%=book.getPrice()%></td>
					<td><%=book.getBookCount()%></td>
					<td><%=book.getAuthor()%></td>
					<td>
						<form action="UpdataServlet" method="post" onsubmit="return check(this);">
							<input type="hidden" name="id" value="<%=book.getId()%>">
							<input type="text" name="bookCount" size="5" backcolor="#AE6C18" style="border:0px;background-color:white;">
							<input type="submit" value="修　改">
							<!--  <a href="ServletDelete?id=<%=book.getId()%>"  style="font-size:16px;"> 删除该记录</a>-->
						</form>
					</td>
				</tr>
				
			<%

					}
				}
			%>
			
	</table>
	<center><a href="index.jsp">回到首页面</a></center>
</body>
</html>