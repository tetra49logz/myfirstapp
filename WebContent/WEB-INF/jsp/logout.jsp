<!-- file modified by logesh on 25.12.2019-->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log Out</title>
</head>
<body>

	<%
		session.invalidate();
		response.sendRedirect("home");
	%>
	
</body>
</html>