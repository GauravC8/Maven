<%@ page language="java" isErrorPage="false" errorPage="Error.jsp" contentType="text/html" session="false"
%>

<!-- isErrorPage="false" errorPage="Error.jsp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Directives</title>
</head>
<body >
<%
int i=20;
int j=20/0;
out.println(j);
%>
</body>
</html>
<!-- 
Directives.jsp
Error.jsp
WelcomeMessage.html -->