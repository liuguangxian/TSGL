<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加图书信息</title>
<script type="text/javascript">
	function resetValue(){
		document.getElementById("name").value="";
		document.getElementById("pricce").value="";
		document.getElementById("bookCount").value="";
		document.getElementById("author").value="";
	}
</script>
<script type="text/javascript">
	function check(form){
		with(form){
			if(name.value == ""){
				alert("图书名称不能为空");
				return false;
			}
			if(price.value == ""){
				alert("价格不能为空");
				return false;
			}
			if(author.value == ""){
				alert("作者不能为空");
				return false;
			}
			return true;
		}
	}
</script>
</head>
<body   background="images/nvhai.jpg">
	<form action="AddBook.jsp" method="post" onsubmit="return check(this);">
		<table align="center" width="650" height="350" border="1" bordercolor="pink">
			<tr>
				<td align="center" colspan="4">
					<h2>添加图书信息</h2>
					<hr>
				</td>
			</tr>
			<tr>
				<td align="right">图书名称：</td>
				<td><input type="text" name="name" /></td>
			</tr>
			<tr>
				<td align="right">价　　格：</td>
				<td><input type="text" name="price" /></td>
			</tr>
			<tr>
				<td align="right">数　　量：</td>
				<td><input type="text" name="bookCount" /></td>
			</tr>
			<tr>
				<td align="right">作　　者：</td>
				<td><input type="text" name="author" /></td>
			</tr>
			<tr>
				<td align="center" colspan="2">
					<input type="submit" value="添　加">
				</td>
			</tr>
		</table>
	</form>

	<!--  <center>
	<a href="FindServlet">查询图书</a><br>
	<a href="BookFindServlet">查询所有图书</a>
	</center>-->
</body>
</html>