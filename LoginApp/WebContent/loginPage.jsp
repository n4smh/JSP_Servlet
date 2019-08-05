<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="org.servlet.login.app.dto.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login page</title>
	</head>
	<body>
		<form action="login" method="post">
			<input type="text" name="userId" placeholder="User ID" /> 
			<input type="password" name="userPassword" placeholder="Password" />
			<button type="submit">Submit</button>
		</form>
	
		<br>
		
		<%
			User user = (User) request.getAttribute("user");
			if (user != null && (user.getUserName() == null || user.getUserName() == "")) {
				out.println("Invalid username or password");
			}
		%>
		
		<br>
		<p>
			Allowed values <br>
			Username : admin, root, usr <br>
			Password : (Any non empty string) <br>
		</p>
	</body>
</html>