<!-- 
	Page Directives:
	language - All the script tags used are Java code. 
	contentType - OutPut format of this page.
	pageEncoding - 
	import - puts as import at the beginning of the servlet while converting.
 -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.Date"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Servlet sample app</title>
    </head>

    <body>
        Current time: <%=new Date() %>
    </body>

</html>