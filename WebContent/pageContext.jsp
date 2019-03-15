<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="getPageContext.jsp">
<%
String name =request.getParameter("name");
String fullname = request.getParameter("fullname");
out.println("Hello !"+name);
pageContext.setAttribute("name", name,PageContext.SESSION_SCOPE);
pageContext.setAttribute("fullname", fullname,PageContext.SESSION_SCOPE);

%>
<input type=submit value=ClickMe>
</form>
</body>
</html>