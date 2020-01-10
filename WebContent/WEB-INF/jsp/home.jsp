<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="bootstrap.css">
<meta charset="ISO-8859-1">
<title>Select Bus</title>
</head>
<body class="home">
	 
	 <%
	 	String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null)
        {
        	response.sendRedirect("login.jsp");
        }
     %>
     
    <div class="header">
      <h1 id="site_name">E-Ticket Booking</h1>
      <p align="center">Welcome <%=email%></p>  
		<section id="search">
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
        
      <p align="center"><a href="logout.jsp">Logout</a></p>
      </div>
</body>
</html>