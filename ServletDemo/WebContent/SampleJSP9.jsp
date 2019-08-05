<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- 
	Configured this JSP as servlet in web.xml.
	
	Servlet Config -> It's an object populated by tomcat, contains all the
					servlet configurations, available as member object to the
					application. Servlet config object is populated only once 
					when servlet is deployed for the first time.
					
	Servlet Context -> It's the scope just like page, session and request scopes.
	(Application context)
	
	init() -> Servlet Context (Application Context)	is accessible inside init.
			Session object is not available as it's created per service request.	 
 -->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Servlet sample app</title>
</head>

<body>
	<%!
		public void jspInit(){
			String defaultUserName = getServletConfig().getInitParameter("defaultUserName");
			ServletContext context = getServletContext();
			context.setAttribute("userName", defaultUserName);
		}		
	
	%>
	Default user name <%=getServletConfig().getInitParameter("defaultUserName")%> <br>
	Context user name <%=getServletContext().getAttribute("userName") %>
	
</body>
</html>