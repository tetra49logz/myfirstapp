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
<title>Login Page</title>
</head>

<body class="quick-sand">
	<%
	String email=(String)session.getAttribute("email");
    
    //redirect user to home page if already logged in
    if(email!=null)
    {
        response.sendRedirect("home");
    }

    String status=request.getParameter("status");
    
    if(status!=null)
    {
    	if(status.equals("false"))
    	{
    		   out.print("<h1>Incorrect login details!</h1>");	           		
    	}
    	else
    	{
    		out.print("<h1>Some error occurred!</h1>");
    	}	
    }
	%>
	<div class="container-fluid m-0 p-0">
		<div class="row">
			<div class="col bg-danger py-1">
				<h3 class="text-white pl-3">E-ticket</h3>
			</div>
		</div>
	</div>
	
	<div class="height">
		<div class="container align-items-center">
			<div class="row">
				<div class="col">
				<form action="loginHandler" method="post">
            	<table cellpadding="8" align="center">
            
	                <tr>
	                    <td><b>Email:</b></td>
	                    <td><input type="email" name="email" required/></td>
	                </tr>
	 
	                <tr>
	                    <td><b>Password:</b></td>
	                    <td><input type="password" name="password" required/></td>
	                </tr>
	 
	                <tr class="text-center">
	                    <td colspan="2"><input class="btn btn-danger" type="submit" value="Login"/> 
	                    	<a href="register"><button class="btn btn-primary">Register</button></a>
	                    </td>
	                </tr>
	 
            	</table>
       			</form>
				</div>
			</div>
		</div>
		
	</div>
	
	</body>
</html>