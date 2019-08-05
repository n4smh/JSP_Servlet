<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!-- 
	Scopes in servlet:
	
	PageContext -> Just setting value to PageContext attribute results in
				PageScope.It is available in only in JSP not in servlet.
				Using this both session and application scope objects can 
				be set.
	
	When findAttribute is called on any attribute its sequence of check is 
	i.	 PAGE_SCOPE
	ii.	 SESSION_SCOPE
	iii. APPLICATION_SCOPE
	
	It doesn't check in request attributes.
		
 -->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Servlet sample app</title>
</head>

<body>
	<%
		// pageContext.setAttribute("userName", "page", PageContext.PAGE_SCOPE);
		// pageContext.setAttribute("userName", "session", PageContext.SESSION_SCOPE);
		// pageContext.setAttribute("userName", "application", PageContext.APPLICATION_SCOPE);
		// pageContext.removeAttribute("userName",PageContext.SESSION_SCOPE);
		// pageContext.removeAttribute("userName",PageContext.APPLICATION_SCOPE);
						
	%>
	Find attribute matched in <%=pageContext.findAttribute("userName") %>
	Page :
	<%=pageContext.getAttribute("userName")%>
	Session :
	<%=session.getAttribute("userName")%>
	Context :
	<%=application.getAttribute("userName")%>

</body>
</html>