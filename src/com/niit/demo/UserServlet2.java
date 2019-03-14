package com.niit.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserServlet2
 */
@WebServlet("/UserServlet2")
public class UserServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserServlet2() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		//ServletContext context = getServletContext();
		PrintWriter out = response.getWriter();
		//Object obj = context.getAttribute("userId");
	/*	try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/mysqljdbc", "root", "root");
			Statement s1 = conn.createStatement();
			// String display ="Select * from people";

			ResultSet result = s1.executeQuery("Select * from candidates where id='" + obj.toString() + "'");
			while (result.next()) {
				out.println(result.getInt(1) + " " + result.getString(2) + " " + result.getString(3));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}*/
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/mysqljdbc", "root", "root");
			/*PreparedStatement st = conn.prepareStatement("Select * from candidates where id='" + obj.toString() + "'");*/
			PreparedStatement st = conn.prepareStatement("Select * from candidates where id=?");
			st.setInt(1,Integer.parseInt(request.getParameter("userId")));
			ResultSet result =st.executeQuery();
			while (result.next()) {
				out.println(result.getInt(1) + " " + result.getString(2) + " " + result.getString(3));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

/*	boolean flag = rs.next();if(flag==true)
	{
		System.out.println(result.getString(2) + result.getString(6));
	}else
	{
		out.println("<font color=red>Login Failed</font>");
	}*/
}