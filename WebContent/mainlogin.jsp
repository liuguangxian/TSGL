<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书管理主页面</title>
<%
	// 权限验证
	if(session.getAttribute("currentUser")==null){
		response.sendRedirect("denglv.jsp");
		return;
	}
%>
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.3.3/themes/icon.css">
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/jquery.easyui.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.3.3/locale/jquery.easyui.lang.zh_CN.js"></script>
<script type="text/javascript">
	$(function(){
		// 数据
		var treeData=[{
			text:"管理项目",
			children:[{
				text:"所有图书信息",
				attributes:{
					url:"BookFindServlet"
				}
			},{
				text:"添加图书信息",
				attributes:{
					url:"index.jsp"
				}
			},{
				text:"修改图书名称",
				attributes:{
					url:"UpdatanameServlet"
				}
			},{
				text:"修改图书价格",
				attributes:{
					url:"Updataprice1Servlet"
				}
			},{
				text:"修改图书数量",
				attributes:{
					url:"FindServlet"
				}
			},{
				text:"修改图书作者",
				attributes:{
					url:"UpdataauthorServlet"
				}
			},{
				text:"学生借阅查询",
				attributes:{
					url:"XSJYCXServlet"
				}
			},{
				text:"删除图书记录",
				attributes:{
					url:"FindServlet1"
				}
			}]
		}];
/*$(function(){
		// 数据
		var treeData=[{
			text:"管理项目",
			children:[{
				text:"学生管理",
				attributes:{
					url:"BookFindServlet"
				}
			}]
		}];*/
		//点击相应的叶子会弹出相应的内容
		// 实例化树菜单
		$("#tree").tree({
			data:treeData,
			lines:true,
			onClick:function(node){
				if(node.attributes){
					openTab(node.text,node.attributes.url);
				}
			}
		});
		
		// 新增Tab
		function openTab(text,url){
			if($("#tabs").tabs('exists',text)){
				$("#tabs").tabs('select',text);
			}else{
				//到对应的地址
				var content="<iframe frameborder='0' scrolling='auto' style='width:100%;height:100%' src="+url+"></iframe>";
				$("#tabs").tabs('add',{
					title:text,
					closable:true,
					content:content
				});
			}
		}
	});
</script>
</head>
<body class="easyui-layout">
<div region="north" style="height:80px;background-color:#E0EDFE" >
<div align="center" style="width: 100%;float: left;"><img src="images/tushuguanli.jpg"></div>
<!--<div align="center" style="font-size:50px;color:blue;" ><em>欢迎使用图书管理系统</em></div>  -->
<div style="position:absolute;right:-120px;bottom:0 ;<!--  padding-top: 10px;padding-right: 200px; -->">欢迎您：&nbsp;<font color="#FF1078" size="3">${currentUser.userName }</font></div>
<div style="position:absolute;right:0;bottom:0 ;" ><a href="denglv.jsp" style="text-decoration:none;"><div style="font-size:15px;color:#EA2000">退出登录</div></a></div>
</div>
<div region="center"  style="height:80px;background-color:#E0EDFE">
<div class="easyui-tabs" fit="true" border="false" id="tabs">
<div title="首页">
<div align="center" style="padding-top:100px;"><font color="red" size="10">欢迎使用</font></div>
</div>
</div>
</div>
<div region="west" style="width:150px;background-color:#24A7B9;background:url(images/nvhai.jpg);" title="导航菜单" split="true">
<ul id="tree"></ul>
</div>
<div region="south"  style="height:30px;background-color:#EFD618;" align="center" ><div style="font-size:20px;color:red;">图书管理系统</div></div>



</body>
</html>