<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%
pageContext.setAttribute("color", "yellow");
pageContext.setAttribute("size", "26");
pageContext.setAttribute("textclr", "Blue");
pageContext.setAttribute("foregr", "green");
%>

</head>
<body bgcolor='${pageScope.color}' text="${pageScope.textclr}">
<h3>Use of implicit object in EL</h3>
<font color="${pageScope.foregr}" size="${pageScope.size }">
Background color and text
</font>

</body>
</html>