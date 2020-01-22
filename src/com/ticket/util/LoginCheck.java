package com.ticket.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginCheck 
{
	public static String loginCheck(LoginBeanClass loginBean)
	{
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String fqcn = "com.mysql.jdbc.Driver";
		String dburl = "jdbc:mysql://localhost:3306/eticket?user=root&password=root";
		String query= "select * from user_profile where email=? and password=?";
		
		try
		{
			Class.forName(fqcn);
			conn = DriverManager.getConnection(dburl);
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,loginBean.getEmail());
			pstmt.setString(2,loginBean.getPassword());
			
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				return "true";
			}
			else{
				return "false";
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return "error";
	}
}
