<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WelcomePage</title>
</head>
<body>
<p align="center">
<%    if ((session.getAttribute("userId") == null) || (session.getAttribute("userId") == "")) { session.invalidate(); %>
You are not logged in <br/>
<a href="Login.html">Please Login</a>
<% return;
} else { %>
Welcome <%= session.getAttribute("Name") %>
<a href='Logout.jsp'>Log out</a>
<% } %>

<%-- <%
   String name = request.getParameter( "username" );
   session.setAttribute( "username", name );
%>	
Hello,
<%= session.getAttribute("user")%>
<% String uid = (String) session.getAttribute("user");
if (uid == null {
		response.sendRedirect("Login.html");
	} else {
			out.println(" <h1>You have successfully created the Session of User : " + uid + "</h1>");
%>
<%}%>

 
<a href="Logout.jsp">Logout</a> --%>
</p>
</body>
</html>








