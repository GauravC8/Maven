package com.niit.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewCookie
 */
@WebServlet("/ViewCookie")
public class ViewCookie extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewCookie() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		Cookie[] cks =request.getCookies();
		/*String cn = null;
		String cv = null;
		String cp =null;*/
		PrintWriter out = response.getWriter();
		for(int i=0;i<cks.length;i++)
		{
			out.println("<br>"+cks[i].getName()+" "+cks[i].getValue());
		}
//		}
//		Cookie[] ckp =request.getCookies();
//		for(Cookie c:ckp)
//		{
//			cp= c.getValue();
//		}
//		
		
		response.setContentType("text/html");
//		
//		out.println("<b> Cookie Name :"+cn + "</b><br>");
//		out.println("<b> Cookie Value :"+cv+ "</b>");
//		out.println("<b> Cookie pass :"+cp+ "</b>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
