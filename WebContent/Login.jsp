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
try{
	String userid = request.getParameter("userId");    
    String pwd = request.getParameter("password");
    String Name;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysqljdbc","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from customerregister where UserId='" + userid + "' and Password='" + pwd + "'");
    /* 
	while (rs.next ()){
		String user=rs.getString("UserId");
		String pass=rs.getString("Password");
	}
	 if(user.equals(request.getParameter("username")) && pass.equals(request.getParameter("password")))
	{
	out.println("User is Valid");
	request.getSession(true);
	session.setAttribute("username", user);
	response.sendRedirect("Welcome.jsp");
	}else{
		out.println("You are not a Valid User");}
	} */
    if (rs.next()) {
        request.getSession();
    	session.setMaxInactiveInterval(60);
        session.setAttribute("userId", userid);
        session.setAttribute("Name", rs.getString("FirstName"));
        response.sendRedirect("Welcome.jsp");
    } else {
        out.println("Invalid password <a href='Login.html'>try again</a>");
    }
}catch(Exception e)
{
	e.printStackTrace();
}
 %>

</body>
</html>