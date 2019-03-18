<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%
pageContext.setAttribute("pageColor", "green");
%>
</head>
<body bgcolor = "${pageScope.pageColor}">
<h1>Welcome to the ${param.shopstop} ShopStop</h1>
Here are some basic comparison
<p>
Is 1 less than 2? ${1<2 }<br>
Does 5 equal 5? ${5==5 }<br>
Is 6  greater than 7? ${6 gt 7}<br>
<p>Math</p>
6+7 = ${6+7} <br>
8x9 = ${8*9} <br>
<hr>
You appear to be using following browser:<br>
${header["user-agent"] }
</body>
</html>