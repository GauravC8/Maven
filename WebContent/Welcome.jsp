<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>WelcomePage</title>
</head>
<body>
<%
	String uid = (String) session.getAttribute("user");
	if (uid == null) {
		response.sendRedirect("Login.html");
%>
<%
	} else {
			out.println(" <h1>You have successfully created the Session of User : " + uid + "</h1>");
%>
	<a href="Logout.jsp">Logout</a>
<%
	}
%>
</body>
</html>