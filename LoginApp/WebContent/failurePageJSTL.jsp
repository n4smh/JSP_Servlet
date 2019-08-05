<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!--
	This is a sample JSTL page.
	Can fetch attributes from the scopes.
	
	Accessing and Modify the data in fetched attribute. 
-->
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Failure page </title>
	</head>
	<body>
		<jsp:useBean id="user" class="org.servlet.login.app.dto.User" scope="request"></jsp:useBean>
		<jsp:setProperty property="userName" name="user" value="Unknown user"/>
		
		Invalid username : <jsp:getProperty property="userId" name="user"/> <br>
		<jsp:getProperty property="userName" name="user"/>
	</body>
</html>