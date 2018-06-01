package com.lyp.bean;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateServlet
 */
public class UpdataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.valueOf(request.getParameter("id"));
		int bookCount = Integer.valueOf(request.getParameter("bookCount")); 
		try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://localhost:3306/new_schema";
			// 数据库用户名
			String username = "root";
			// 数据库密码
			String password = "246476";
			// 创建Connection连接
			Connection conn = DriverManager.getConnection(url,username,password);
			// 更新SQL语句
			String sql = "update t_books set bookCount=? where id=?";
			// 获取PreparedStatement
			PreparedStatement ps = conn.prepareStatement(sql);
			// 对SQL语句中的第一个参数赋值
			ps.setInt(1, bookCount);
			// 对SQL语句中的第二个参数赋值
			ps.setInt(2, id);
			// 执行更新操作
			ps.executeUpdate();
			// 关闭PreparedStatement
			ps.close();
			// 关闭Connection
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		} 
		// 重定向到FindServlet
		response.sendRedirect("FindServlet");
	}

}
