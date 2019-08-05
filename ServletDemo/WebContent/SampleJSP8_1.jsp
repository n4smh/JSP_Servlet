<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- 
	Scopes in servlet:
	
	Request -> request, Session -> session and context -> application. 
	Implicit objects are provided for all the three.

 -->

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Servlet sample app</title>
	</head>

	<body>
		<% 
			// Request object
			String userName = request.getParameter("userName");
			
			if (userName != null && userName != "") {
				session.setAttribute("userName", userName);
				application.setAttribute("userName", userName);
			}
		%>
		
		Parm : <%=userName %>
		Session : <%=session.getAttribute("userName") %>
		Context : <%=application.getAttribute("userName") %> 
		
	</body>
</html>