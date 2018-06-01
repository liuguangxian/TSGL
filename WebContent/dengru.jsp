<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生图书管理系统</title>
<script type="text/javascript">
	function resetValue(){
		document.getElementById("userName").value="";
		document.getElementById("password").value="";
	}
</script>
<style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
		div.student{
			height: 150px;
            text-align: center;
			font-family: arial, helvetica sans-serif;     //字体
			padding: 200px;
        }
        div.stu{
            font-size: 40px;
            text-align: center;
            margin: 40px 30px 0px 240px;
            padding: 10px;
            position: absolute;
            color: blue;
            font-style: oblique;     
            font-weight: bold;       //加粗
		}
</style>
<style type="text/css">
    /*div.box1{
    	height:400px;
    	width: 350px;
    	margin-top:40px; 
    	margin-left:500px;
    	border: 1px solid black;
    }*/
	#userName{
		background:url(images/user.png) rgba(0,0,0,.1) no-repeat;
		width: 200px;
		height: 30px;
		border:solid #ccc 1px;
		border-radius: 3px;
		padding-left: 32px;
		margin-bottom: 30px;
	}
#password{
		background: url(images/pwd.jpg) rgba(0,0,0,.1) no-repeat;
		width: 200px;
		height: 30px;
		border:solid #ccc 1px;
		border-radius: 3px;
		padding-left: 32px;
		margin-bottom: 30px;
	}
	#submit{
		width: 90px;
		height: 30px;
		background: rgba(0,0,0,.1);
		border:solid #ccc 1px;
		border-radius: 3px;
	}
	#submit:hover{
		cursor: pointer;
		background:#D8D8D8;
	}
	#button{
		width: 90px;
		height: 30px;
		background: rgba(0,0,0,.1);
		border:solid #ccc 1px;
		border-radius: 3px;
	}
	#button:hover{
		cursor: pointer;
		background:#D8D8D8;
	}
</style>
</head>
<script language="javascript">
function open(){
	var window = "left=380,top=200,width=260,height=200,resizable=0 ,scrollbars=0,menubar=no,status=0";
}
</script>
<body background="images/luwei.jpg">
<div class="student">
    <div class="stu" style="letter-spacing: 45px">欢迎使用图书馆管理系统！</div>
</div>
<div class="box1" align="center" >
<form action="LoginServlet" mothod="post">
   <table width="" height="" border="0" fitColumns="true">
     <tr height="70">
				<td colspan="4"></td>
			</tr>
			<tr height="10">
				<td width="40%"></td>
				<td width="10%"></td>
				<td><input type="text" value="${userName }" name="userName" id="userName"  placeholder="用户名"  style="margin-left:-140px;"/></td>
				<td width="30%"></td>
			</tr>
			<tr height="10">
				<td width="40%"></td>
				<td width="10%"></td>
				<td><input type="password" value="${password }" name="password" id="password"  placeholder="密码"  style="margin-left:-140px;"/></td>
				<td width="30%"></td>
			</tr>
			<tr height="10">
				<td width="40%"></td>
				<td width="10%"><input type="submit" id="submit"  value="登录"/></td>
				<td><input type="button" value="重置"  id="button" onclick="resetValue()"/></td>
				<td width="30%"></td>
			</tr>
			<tr height="10">
				<td width="40%"></td>
				<td colspan="3">
					<font color="red">${error }</font>
				</td>
			</tr>
			<tr >
				<td></td>
			</tr>
   </table>
</form>
</div>
</body>
</html>