<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Registration page</title>
	</head>
	<body>
		<form action="registrationProcessPage.jsp" method="post" >
			<input type="text" name="userId" placeholder="User ID"/><br>
			<input type="text" name="userName" placeholder="Username"/><br>
			<input type="text" name="userCity" placeholder="City"/><br>
			<input type="text" name="userState" placeholder="State"/><br>
			<button type="submit">Submit</button>
		</form>
	</body>
</html>