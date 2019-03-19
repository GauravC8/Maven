<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="BeanId" class="BeanClass.SimpleBean" scope="application"/>
<jsp:setProperty property="name" name="BeanId" value="Raj"/>
<jsp:setProperty property="age" name="BeanId" value="35"/>
</head>
<body>
Name is :<jsp:getProperty property="name" name="BeanId" /><br>
Age is : <jsp:getProperty property="age" name="BeanId"/>
</body>
</html>