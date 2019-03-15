<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=(String)pageContext.getAttribute("name",PageContext.SESSION_SCOPE);
String fullname=(String)pageContext.getAttribute("fullname");
out.println("Hey !"+name);
out.println("Your Full Name is :"+fullname);
%>
</body>
</html>
<!-- 
PageContext.html

pageContext.jsp 
getPageContext.jsp-->