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
<!-- Fonts -->
<link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
<title>Login Page</title>
</head>

<body class="home">
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
	<div class="center">
			<h1>E-Ticket Booking</h1>
	</div>
	
	<h1>Enter Login Details</h1>
	<div align="center" class="container">
		<form action="loginHandler" method="post">
            <table cellpadding="8">
            
                <tr>
                    <td><b>Email:</b></td>
                    <td><input type="email" name="email" required/></td>
                </tr>
 
                <tr>
                    <td><b>Password:</b></td>
                    <td><input type="password" name="password" required/></td>
                </tr>
 
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Login"/></td>
                </tr>
 
            </table>
        </form>
        <a href="register"><button>Register</button></a>
	</div>
</body>
</html>