<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select Bus</title>
</head>
<body>
	 
	 <%
	 	String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null)
        {
        	response.sendRedirect("login.jsp");
        }
     %>
     
      <p>Welcome <%=email%></p>  
      
      <h1>E-Ticket Booking</h1>
		<section>
		<form action="searchBus.jsp">
			<fieldset>
				<label>Trip Info</label>
				
				<select name="from">
					<option value="ER">Erode</option>
					<option value="BAN">Bangalore</option>
					<option value="CHE">Chennai</option>
					<option value="MAD">Madurai</option>
				</select>
				
				<select name="to">
					<option value="ER">Erode</option>
					<option value="BAN">Bangalore</option>
					<option value="CHE">Chennai</option>
					<option value="MAD">Madurai</option>
				</select>
				
				<input type="date" name="journey_date" required pattern="\d{4}-\d{2}-\d{2}">
				<input type="submit" value="Search Buses">
			</fieldset>
		</form>
		</section>
        
      <a href="logout.jsp">Logout</a>
</body>
</html>