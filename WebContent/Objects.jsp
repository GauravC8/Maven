<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="BeanClass.UserBean1" scope="session"/>
<% user.setUsername("GAURAV");
user.setPassword("pass123");
%>
<b>Accessing Beans using EL :</b><br>
${'${'}user.username } = ${user.username }<br>
${'${'}user.password } = ${user.password }<br>
<jsp:useBean id="list" class="java.util.ArrayList"/>
<% 
	list.add("item1");
	list.add("item2");
%>
<br><b>Accessing element of array list instance lst using EL</b><br>
${'${' }list.[0]} = ${list[0] }<br>
${'${' }list.[1]} = ${list[1] }
</body>
</html>
<!-- 
UserBean1.java
Object.jsp -->