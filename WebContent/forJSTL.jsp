<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Example c:forEach tag in JSTL</title>
</head>
<body>
<c:forEach var="counter" begin="1" end="10">
 <c:out value="${counter}"/>
</c:forEach>
<br>
<br>
<c:forTokens items="www.niit-tech.com" delims="." var="site">
 <c:out value="${site}"/>
</c:forTokens>
</body>
</html>