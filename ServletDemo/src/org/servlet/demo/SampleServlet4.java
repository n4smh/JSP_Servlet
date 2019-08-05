package org.servlet.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/***
 * Request, HTTP Session and Servlet Context
 * 
 * Request object is created per request. Session object is created per session
 * (associated with tab, available across servlets). Context is unique across
 * application (Common across tabs, machines, users and servlets).
 * 
 * @author nagesh_holur
 *
 */

public class SampleServlet4 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter writer = response.getWriter();

		// Request object
		String userName = request.getParameter("userName");

		// Session object
		HttpSession httpSession = request.getSession();

		// Context object
		ServletContext servletContext = request.getServletContext();

		writer.println("Hello " + userName + " from ServletSample4 servlet GET");
		System.out.println("Hello " + userName + " from ServletSample4 servlet GET");

		if (userName != null && userName != "") {
			httpSession.setAttribute("userName", userName);
			servletContext.setAttribute("userName", userName);
		}

		writer.println("UserName is " + userName);
		System.out.println("UserName is " + userName);

		writer.println("UserName in session is " + httpSession.getAttribute("userName"));
		System.out.println("UserName in session is " + httpSession.getAttribute("userName"));

		writer.println("UserName in context is " + servletContext.getAttribute("userName"));
		System.out.println("UserName in context is " + servletContext.getAttribute("userName"));

		System.out.println();
	}

}
