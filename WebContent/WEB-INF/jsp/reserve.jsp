<%@page import="java.util.Arrays"%>
<%@page import="com.ticket.util.Reserve"%>
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
<title>Select Seat</title>
</head>
<body>
		<table border="3" cellpadding="8" align="center">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Arrival</th>
				<th>Departure</th>
				<th>Date</th>
				<th>Number</th>
				<th>Ticket Rate</th>
			</tr>
	<%
		String busIdString = request.getParameter("busId");
		String seats = request.getParameter("no_of_tickets");
		
		int no_of_tickets = Integer.parseInt(seats);
		System.out.println(no_of_tickets);
		int busId = Integer.parseInt(busIdString);
		
		ResultSet rs = Reserve.getResultSet(busId);	
		
		if(rs.next())
		{
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
		</table>
	<%
		}
	%>
		<h1>Select the tickets : </h1>
	<%
		String[] seat = rs.getString(9).split(",");
	%>
		<h2><%= Arrays.toString(seat) %></h2>
	<form action="viewTicket.jsp">		
	<%
		for(int i = 1; i <= no_of_tickets; i++)
		{
	%>
			<h3>Passenger <%=i%></h3>
			Passenger Name : <input type="text" name="passengerName <%=i%>">
			Passenger Age : <input type="text" name="passengerAge <%=i%>"> 
			Select Seat : <select name="passangerSeat<%=i%>">
				<% 
				for(int j = 0; j < 10; j++)
				{
					int value = Integer.parseInt(seat[j]);
				%>
					<option><%=value%></option>
				<%					
				}
				%> 
			</select>
	<%
		}
		int ticketPrice = Integer.parseInt(rs.getString(8));
		int totalPrice = no_of_tickets * ticketPrice;
	%>
	
		<h3>Totatl Ticket Price : Rs.<%=totalPrice%></h3>
	<input type="submit" value="Book Ticket">
	</form>	
</body>
</html>