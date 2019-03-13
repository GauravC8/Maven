package com.niit.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletServlet
 */
@WebServlet("/ServletServlet")
public class ServletServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>Servlet Servlet</title></head>");
		out.println("<body bgcolor =\"aqua\">");
		out.println("<h1>Request methods</h1>");
		out.println("<h1>Servelet ServletServlet at:" + request.getContextPath() + "</h1>");
		out.println("<h1>Servelet ServletServlet requested URI :" + request.getRequestURI() + "</h1>");
		out.println("<h1>Servelet ServletServlet protocol :" + request.getProtocol() + "</h1>");
		out.println("<h2>Server name : "+request.getServerName() +"</h1>");
		out.println("<h2>Server Port No. : "+request.getServerPort() +"</h1>");
		out.println("<h3>Random Value for each Request : "+ Math.random() + "</h3>");
		out.println("</body></html>");
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
