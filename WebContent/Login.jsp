<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ResultSet rs;
String user=new String("");
String pass=new String("");
response.setContentType("text/html");
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/mysqljdbc", "root", "root");
	Statement s = con.createStatement();
	s.executeQuery("select UserId,Password from User");
	rs = s.getResultSet();
	while (rs.next ()){
		user=rs.getString("UserId");
		pass=rs.getString("Password");
	}
	if(user.equals(request.getParameter("username")) && pass.equals(request.getParameter("password")))
	{
	out.println("User is Valid");
	request.getSession(true);
	session.setAttribute("username", user);
	response.sendRedirect("Welcome.jsp");
	}else{
		out.println("You are not a Valid User");}
	}catch(Exception e)
{
	e.printStackTrace();
}
%>

</body>
</html>