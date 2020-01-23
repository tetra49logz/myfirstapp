<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<meta charset="ISO-8859-1">
<link href="<c:url value="/resources/bootstrap.css" />" rel="stylesheet">
<title>E-Ticket</title>
</head>
<body>
	<div class="container mt-5">
		<div class="row">
			<div class="col"><h1 class="text-center text-bold">E-Ticket Booking</h1></div>
		</div>
	</div>
	
	<div align="center" class="container">
           
           <a href="adminControl"><button class="btn btn-primary mt-3">Admin Control</button></a>
           <a href="login"><button class="btn btn-warning mt-3">User Control</button></a>
	</div>
</body>
</html>