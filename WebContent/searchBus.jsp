<%@page import="com.ticket.SearhBus"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bus Details</title>
</head>
<body>
<table border="3" cellpadding="8">
	<tr>
		<th>bus id</th>
		<th>bus name</th>
		<th>bus arrival</th>
		<th>bus departure</th>
		<th>bus date</th>
		<th>bus Number</th>
		<th>bus Ticket Rate</th>
	</tr>
		<%
			String routeCode = request.getParameter("from")+request.getParameter("to");
			String dateIn = request.getParameter("journey_date");
			
			ResultSet rs = SearhBus.getResultSet(routeCode,dateIn);	
			int count = 0;
			
			while(rs.next())
			{
				count++;
		%>
			<tr>
				<td><%= rs.getInt(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(4) %></td>
				<td><%= rs.getString(5) %></td>
				<td><%= rs.getString(6) %></td>
				<td><%= rs.getString(7) %></td>
				<td><%= rs.getString(8) %></td>
			</tr>
		<%
			}
			if(count==0)
			{
				out.println("<h1>Bus Not Available</h>");
			}			
		%>				
	</table>
</body>
</html>