package com.ticket.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Reserve 
{
static ResultSet rs = null;
	
	public static ResultSet getResultSet(int busId)
	{
		
		// Jdbc essentials
		String fqcn = "com.mysql.jdbc.Driver";
		String dburl = "jdbc:mysql://localhost:3306/eticket?user=root&password=root";
		String query = "Select * from bus_data where bus_id = ?";
		
		// Objects
		Connection conn = null;
		PreparedStatement pstmt = null;
		
			try 
			{
				Class.forName(fqcn);
				conn = DriverManager.getConnection(dburl);
				pstmt = conn.prepareStatement(query);
				pstmt.setInt(1, busId);
				
				rs = pstmt.executeQuery();
			}
			catch (ClassNotFoundException e) 
			{
				e.printStackTrace();
			}
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
	
		return rs;
	}
	
}
