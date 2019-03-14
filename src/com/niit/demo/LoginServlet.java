package com.niit.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username == null || username.equals("") || password ==null || password.equals(""))
		{
			out.println("Please enter both username "+ "and password. <br/><br/>");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login.html");
					requestDispatcher.include(request,response);
		}else if(username.equals("gaurav") && password.equals("1234"))
		{
			HttpSession session = request.getSession();
			session.setAttribute("username",username);
			session.setAttribute("password", password);
			out.println("Loged in successfully <br>");
			out.println("Click below the link to see" + "The value of username and password <br>");
			out.println("<a href='DisplaySessionValueServlet'>Click Here</a>");
			out.close();
		}else
		{
			out.print("Wrong username or password <br><br>");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login.html");
			requestDispatcher.include(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
