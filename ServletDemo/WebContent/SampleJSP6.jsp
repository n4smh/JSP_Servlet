<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- 
	Every jsp is converted to servlet by Tomcat on run, servlet is generated when it is deployed. 
	
	By default every code within script tag is put into deGet() method of the servlet (That's why method
	declaration - multiInteger - is not allowed in script tag). 
	
	All the static contents goes inside PrintWriter.println() method.
	
	Code within declaration tag goes outside doGet(), there by method declaration is allowed.
	
	Once the servlet is generated by Tomcat it is stored at temporary location
	<apache_tomcat_home_path>\work\Catalina\localhost\<context_root>\org\apache\jsp\<jsp_file_name>_jsp.java
	
 -->

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Servlet sample app</title>
	</head>

	<body>
		Hello
		<%!	
			// This is for declration and available for all the script blocks 
			int maxInt = Integer.MAX_VALUE;
					
			public long addInteger(int a, int b){
				return a+b;
			}
		%>
		<%
			int i = 1;
			int j = 2;
			int k = i + j;

			while (i <= 5) {
				out.println("<br>Count: " + i++);
			}
			out.println("<br>The value of k is " + k);
			
			// It's not allowed
			/* public long multiInteger(int a, int b){
				return a*b;
			} */
		%>
		<% 
			// As value of i is 10 by the end of last iteration. 
			while (i <= 10) {
		%>
				<br>Count:  <%=i++ %>
		<%
			}
		%>
		
		<br> The value of k is <%=k%>!
		<br> Max integer value is <%=maxInt %>
		<br> 2 + 3 = <%=addInteger(2, 3) %>
		
		
	</body>
</html>