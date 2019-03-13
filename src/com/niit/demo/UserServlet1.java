package com.niit.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserServlet1
 */
@WebServlet("/UserServlet1")
public class UserServlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet1() {
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
		doGet(request, response);
		
		String uid = request.getParameter("userId");
		response.setContentType("CONTENT_TYPE");
		PrintWriter out = response.getWriter();
		ServletContext context=getServletContext();
		context.setAttribute("userId", uid);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/UserServlet2");
		if(dispatcher==null)
		{
			response.sendError(HttpServletResponse.SC_NO_CONTENT);
		}
		dispatcher.forward(request, response);
		out.close();
				
	}

}
