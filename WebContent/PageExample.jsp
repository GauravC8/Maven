<%@page import="java.util.logging.Logger"%>
<%@page import="javax.servlet.jsp.tagext.PageData"%>
<%@page import="com.sun.net.httpserver.HttpServer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<strong> Page Example </strong>
<%=page.getClass().getName() %>
<br><br>Hello:
<% 
Logger log = Logger.getLogger("page.getClass().getName()");
log.info("message");
%>
<br><br>
<%
String pageName = page.toString();
out.println("Page Name is :"+pageName);
%>
<h3>
Exception Raised :<%= exception.getMessage() %></h3>
</body>
</html>