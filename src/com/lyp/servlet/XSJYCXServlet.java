package com.lyp.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lyp.bean.Book;
import com.lyp.bean.BookDao;
import com.lyp.bean.JieYue;
import com.lyp.dao.JieyueDao;

/**
 * Servlet implementation class BookFindServlet
 */
public class XSJYCXServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 当前页码
		int currPage = 1;
		// 判断传递页码是否有效
		if(request.getParameter("page") != null){
			// 对当前页码赋值
			currPage = Integer.parseInt(request.getParameter("page"));
		}
		// 实例化ProductDao
		JieyueDao dao = new JieyueDao();
		// 查询所有商品信息
		List<JieYue> list = dao.find(currPage);
		// 将list放置到request之中
		request.setAttribute("list", list);
		// 总页数
		int pages ;
		// 查询总记录数
		int count = dao.findCount();
		// 计算总页数
		if(count % JieYue.PAGE_SIZE == 0){
			// 对总页数赋值
			pages = count / JieYue.PAGE_SIZE;
		}else{
			// 对总页数赋值
			pages = count / JieYue.PAGE_SIZE + 1;
		}
		// 实例化StringBuffer
		StringBuffer sb = new StringBuffer();
		// 通过循环构建分页条
		for(int i=1; i <= pages; i++){
			// 判断是否为当前页
			if(i == currPage){
				// 构建分页条
				sb.append("[" + i + "]");
			}else{
				// 构建分页条
				sb.append("<a href='XSJYCXServlet?page=" + i + "'>" + i + "</a>");
			}
			// 构建分页条
			sb.append("　");
		}
		// 将分页条的字符串放置到request之中
		request.setAttribute("bar", sb.toString());
		// 转发到product_list.jsp页面
		request.getRequestDispatcher("product_list1.jsp").forward(request, response);
	}

}
