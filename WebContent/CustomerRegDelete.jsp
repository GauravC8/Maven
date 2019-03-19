<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		//Integer UserId=request.getParameter("txtUserId");
		String Password = request.getParameter("txtpassword");
		String Confirm = request.getParameter("txtconfirm");
		String FirstName = request.getParameter("txtfirstname");
		String LastName = request.getParameter("txtlastname");
		String Gender = request.getParameter("rbgender");
		String Age = request.getParameter("txtage");
		String TelephoneNo = request.getParameter("txtphoneno");
		String MobileNo = request.getParameter("txtmobileno");
		String Email = request.getParameter("txtemail");
		String Address = request.getParameter("txtaddress");
		String Pincode = request.getParameter("txtpincode");
		String AnnualIncome = request.getParameter("txtannualincome");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/mysqljdbc", "root", "root");
			PreparedStatement s = con.prepareStatement("Delete from CustomerRegister where UserId=?");
			s.setString(1, Password);
			out.println("<font color=red size=7> Details Successfully Deleted </font><BR/><BR/>");
			//out.println("Deleted UserId is : " + UserId + "<BR/>");
			out.println("Deleted Password is : " + Password + "<BR/>");
			out.println("Deleted Confirm Password is : " + Confirm + "<BR/>");
			out.println("Deleted First Name is : " + FirstName + "<BR/>");
			out.println("Deleted Last Name is : " + LastName + "<BR/>");
			out.println("Deleted Gender is : " + Gender + "<BR/>");
			out.println("Deleted Age is : " + Age + "<BR/>");
			out.println("Deleted Telephone Number is : " + TelephoneNo + "<BR/>");
			out.println("Deleted Mobile Number is : " + MobileNo + "<BR/>");
			out.println("Deleted Email is : " + Email + "<BR/>");
			out.println("Deleted Address is : " + Address + "<BR/>");
			out.println("Deleted Pincode is : " + Pincode + "<BR/>");
			out.println("Deleted Annual Income is : " + AnnualIncome + "<BR/>");
		} catch (SQLException sqle) {
			out.println(sqle);
		} catch (Exception e) {
			out.println(e);
		}
	%>
</body>
</html>