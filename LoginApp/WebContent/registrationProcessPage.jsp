<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Process page</title>
	</head>
	<body>
		<jsp:useBean id="user1" class="org.servlet.login.app.dto.User" scope="request">
			
			<jsp:setProperty property="userId" name="user1" param="userId"/>
			<jsp:setProperty property="userName" name="user1" param="userName"/>
			
			<!-- No need to specify param if the property name matches the request parameter name -->
			
			<jsp:setProperty property="userCity" name="user1" />
			<jsp:setProperty property="userState" name="user1" />
		</jsp:useBean>
		
		Using multiple setProperty statement:<br>
		User ID : <jsp:getProperty property="userId" name="user1"/><br>
		User Name : <jsp:getProperty property="userName" name="user1"/><br>
		User City : <jsp:getProperty property="userCity" name="user1"/><br>
		User State : <jsp:getProperty property="userState" name="user1"/><br><br>
		
		<jsp:useBean id="user2" class="org.servlet.login.app.dto.User" scope="request">
			<jsp:setProperty property="*" name="user2"></jsp:setProperty>
		</jsp:useBean>
		
		Using single setProperty statement:<br>
		User ID : <jsp:getProperty property="userId" name="user2"/><br>
		User Name : <jsp:getProperty property="userName" name="user2"/><br>
		User City : <jsp:getProperty property="userCity" name="user2"/><br>
		User State : <jsp:getProperty property="userState" name="user2"/><br>
		
	</body>
</html>