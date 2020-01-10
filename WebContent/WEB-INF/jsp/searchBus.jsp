<%@page import="com.ticket.SearhBus"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bus Details</title>
</head>
<body>

	<table border="3" cellpadding="8">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Arrival</th>
			<th>Departure</th>
			<th>Date</th>
			<th>Number</th>
			<th>Ticket Rate</th>
			<th>Book Bus</th>
		</tr>
		
		<%
			String email=(String)session.getAttribute("email");
	        
	        //redirect user to login page if not logged in
	        if(email==null)
	        {
	        	response.sendRedirect("login.jsp");
	        }
	        
			String routeCode = request.getParameter("from")+request.getParameter("to");
			String dateIn = request.getParameter("journey_date");
			
			ResultSet rs = SearhBus.getResultSet(routeCode,dateIn);	
			int count = 0;
			
			while(rs.next())
			{
				count++;
		%>
			<form action="reserve.jsp">
			<tr>
				<td><%= rs.getInt(1) %></td>
				<td><%= rs.getString(2) %></td>
				<td><%= rs.getString(4) %></td>
				<td><%= rs.getString(5) %></td>
				<td><%= rs.getString(6) %></td>
				<td><%= rs.getString(7) %></td>
				<td><%= rs.getString(8) %></td>
				
				<td>
					<select name="no_of_tickets">
						<% for(int i = 1; i <= 5; i++)
						{
						%>
							<option value="<%=i%>"><%=i%></option>	
						<%					
						}
						%>
					</select>
				</td>
				<td>
					<button type="submit" name="busId" value="<%=rs.getInt(1)%>">Book Bus</button>
				</td> <!-- map this button to bus id -->
				
			</tr>
			</form>
		<%
			}
			if(count==0)
			{
		%>		
			<h1>Bus Not Available</h>
		<%
			}			
		%>
	</table>
	<p align="center"><a href="logout.jsp">Logout</a></p>

</body>
</html>