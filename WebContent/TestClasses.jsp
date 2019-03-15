<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.niit.emirates.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Emirates ticket Booking</h1>
	<b>Passenger Name</b>
	<%=AirUtils.makeItUpper("gaurav")%><br>
	<b>Total fare</b><%=AirUtils.calTax(10000)%>
</body>
</html>