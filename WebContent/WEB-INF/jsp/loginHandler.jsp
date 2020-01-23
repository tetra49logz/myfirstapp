<%@page import="com.ticket.util.LoginCheck"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="loginBean" class="com.ticket.util.LoginBeanClass" scope="session"/>
<jsp:setProperty name="loginBean" property="*"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
	<body>
		<%
			String result = LoginCheck.loginCheck(loginBean);
		 
			if(result.equals("true"))
			{
				session.setAttribute("email",loginBean.getEmail());
				response.sendRedirect("home");
			}
		 
			if(result.equals("false"))
			{
				response.sendRedirect("login?status=false");
			}
		 
			if(result.equals("error"))
			{
		    	response.sendRedirect("login?status=error");
			}
		%>
		
	</body>
</html>