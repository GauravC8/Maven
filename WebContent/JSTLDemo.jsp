<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<c:out value="${'Welcome to javaTpoint'}" />
	<p>
		<c:set var="sessionvariable" value="${80+8}" scope="session" />
		value of session variable before removing it:
		<c:out value="${sessionvariable}" />
		<c:remove var="sessionvariable" scope="session" />
		<br> Value of session variable after removing it:
		<c:out value="${sessionvariable}" />
	</p>
</body>
</html>