<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Libraries -->
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!-- Bootstrap -->
<link href="<c:url value="/resources/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/resources/custom.css" />" rel="stylesheet">
<!-- Fonts -->
<link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
<title>Select Bus</title>
</head>
<body class="quick-sand">
	 
	 <%
	 	String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null)
        {
        	response.sendRedirect("login");
        }
     %>
     
     <div class="container-fluid m-0 p-0">
		<div class="row">
			<div class="col bg-danger py-1">
				<h3 class="text-white pl-3">E-ticket</h3>
			</div>
		</div>
	</div>
     
    <div>
      <h4 align="center" class="my-3">Welcome <%=email%></h4>  
		<section class="container text-center">
		<form action="searchBus">
			<fieldset>
				<label><h3>Trip Info</h3></label>
				
				<select name="from" class="p-1">
					<option value="" disabled selected>From</option>
					<option value="ER">Erode</option>
					<option value="BAN">Bangalore</option>
					<option value="CHE">Chennai</option>
					<option value="MAD">Madurai</option>
				</select>
				
				<select name="to" class="p-1">
					<option value="" disabled selected>To</option>
					<option value="ER">Erode</option>
					<option value="BAN">Bangalore</option>
					<option value="CHE">Chennai</option>
					<option value="MAD">Madurai</option>
				</select>
				
				<input type="date" name="journey_date" required pattern="\d{4}-\d{2}-\d{2}">
				<input class="btn btn-secondary" type="submit" value="Search Buses">
			</fieldset>
		</form>
		</section>
        
      </div>
      <div align="center" class="mt-3">
      	<a href="logout"><button class="btn btn-danger">Logout</button></a>
      </div>
</body>
</html>