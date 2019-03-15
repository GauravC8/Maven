<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="BeanId" class="BeanClass.UserBean" scope="session"/>
<jsp:setProperty property="username" name="BeanId"/>
<jsp:setProperty property="password" name="BeanId"/>
</head>
<body>
<% BeanId.getEmailid(); %>
<jsp:getProperty property="username" name="BeanId"/>
<jsp:getProperty property="email" name="BeanId"/>
</body>
</html>