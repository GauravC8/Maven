<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%!double radius = 6.0;

	private double getRadius() {
		return radius;
	}

	private double getDiameter() {
		return (radius * 2);
	}

	private double getArea() {
		return (3.14 * radius);
	}

	private double getCircumference() {
		return 3.14 * radius * 2;

	}
	%>
</head>
<body>
	<h1>Calculation Circle Parameters</h1>
	<b>Radius of Circle</b>
	<%=getRadius()%> cm <br>
	<b>Diameter of circle : </b>
	<%=getDiameter()%> cm
	<br>
	<b>Area of Circle is: </b>
	<%=getArea()%> <sup>2</sup>
	<br>
	<b>Circumference of circle:</b>
	<%=getCircumference()%>
	cm
	<br>
	</body>
</html>