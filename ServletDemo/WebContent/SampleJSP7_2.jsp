<!-- 
	Page Directives:
	It can be specified separately.
	
	Include Directive:
	It's used have the content of any other JSP or HTML within the current JSP.
	
 -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ page import="java.util.Date" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Servlet sample app</title>
    </head>

    <body>
    	<b><%@ include file="index.html" %></b>
        Current time: <%=new Date() %>
    </body>

</html>