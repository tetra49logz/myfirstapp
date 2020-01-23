package com.ticket.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SearhBus
{
	static ResultSet rs = null;
	
	public static ResultSet getResultSet(String routeCode,String dateIn)
	{
		/*String routeCode = req.getParameter("from")+req.getParameter("to");
		String dateIn = req.getParameter("journey_date");*/
		String[] dateConv = dateIn.split("-");
		String date = "";
		String month = "";
		String year = "";
		
		for(int i = 0; i < dateConv.length; i++)
		{
			if(i == 1)
			{
				month = dateConv[1];
			}
			if(i == 0)
			{
				year = dateConv[0];
			}
			if(i == 2)
			{
				date = dateConv[2];
			}
		}
		String dateOut = date+"/"+month+"/"+year;
		
		// Jdbc essentials
		String fqcn = "com.mysql.jdbc.Driver";
		String dburl = "jdbc:mysql://localhost:3306/eticket?user=root&password=root";
		String query = "Select * from bus_data where route_code = ?";
		
		// Objects
		Connection conn = null;
		PreparedStatement pstmt = null;
		
			try 
			{
				Class.forName(fqcn);
				conn = DriverManager.getConnection(dburl);
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1, routeCode);
				
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
