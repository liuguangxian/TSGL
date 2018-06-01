package com.lyp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.lyp.model.Booklist;
import com.lyp.bean.StringUtil;
import com.lyp.model.PageBean;

public class BookpageDao {
	public ResultSet BooklistServlet(Connection con,PageBean pageBean)throws Exception{
		StringBuffer sb=new StringBuffer("select * from t_books");
		if(pageBean!=null){
			sb.append(" limit "+pageBean.getStart()+","+pageBean.getRows());
		}
		PreparedStatement pstmt=con.prepareStatement(sb.toString().replaceFirst("and", "where"));
		return pstmt.executeQuery();
	}
	//获取总记录数
		public int nameCount(Connection con,Booklist booklist)throws Exception{
			StringBuffer sb=new StringBuffer("select count(*) as total from t_books");
			if(StringUtil.isNotEmpty(booklist.getName())){
				sb.append(" and name like '%"+booklist.getName()+"%'");
			}
			PreparedStatement pstmt=con.prepareStatement(sb.toString().replaceFirst("and", "where"));
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()){
				return rs.getInt("total");
			}else{
				return 0;
			}
		}
}
