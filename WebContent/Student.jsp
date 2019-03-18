<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body> 
<form action="Display.jsp"> 
Student Name: <input type="text" name="stuname" /><br>
Student RollNum:<input type="text" name="rollno" /><br>
<input type="submit" value="Submit Details!!"/> 
</form> 
<br>
<br>
<h1>Getting values from application object</h1>
<%
 application.setAttribute("author", "Gaurav");
 application.setAttribute("Site", "niit-tech.com");
 %>
 <a href="Display.jsp">Click</a>

</body> 
</html>

