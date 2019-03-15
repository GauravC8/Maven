<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Discount Page</title>
</head>
<body>
<h1>Welcome to Maven Shop</h1>
<jsp:useBean id="bean" scope="page" class="BeanClass.DiscountBean">
<jsp:setProperty property="totalamt" name="bean" param="txtamount"/>
Rs.<jsp:getProperty property="totalamt" name="bean"/></jsp:useBean>
</body>
</html>