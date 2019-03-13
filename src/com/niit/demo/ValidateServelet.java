package com.niit.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ValidateServelet
 */
@WebServlet("/ValidateServelet")
public class ValidateServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidateServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			//String name = request.getParameter("user");
			String password = request.getParameter("pass");
			if(password.equals("testing"))
			{
				out.println("hollallalalal");
				RequestDispatcher rd = request.getRequestDispatcher("WelcomeServlet");
				rd.forward(request, response);
			}else {
				out.println("<font color='red'><b>You have entered incorrect password</b></font>");
				RequestDispatcher rd = request.getRequestDispatcher("indexValidation.html");
				rd.include(request, response);
			}
		}finally{ out.close();}
	}

}
