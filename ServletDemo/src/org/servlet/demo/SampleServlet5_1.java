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
 * init(), service(), destroy()
 * 
 * init() method is called only once when the servlet object is created (servlet
 * object is created only once). Used for initializing code.
 * 
 * service() method is called for each request made to servlet. If the servlet
 * object exists only new thread is created and assigned to serve that request
 * (Servlet object is created only if it doesn't exit).
 * 
 * destroy() method is called only once at the end of the life-cycle of a
 * servlet. This is used for house keeping jobs like closing DB connection,
 * write cookie lists and garbage collection.
 * 
 * Servlet inheritance:
 * 
 * 1. Generic Servlet <--- init(ServletConfig), init(), service()
 * 
 * 2. HTTP Servlet <--- service(), doGet(), doPost(), doPut(), doDelete()
 * 
 * 3. SampleServlet5 <--- doGet()
 * 
 * 
 * This example shows init-param configuration using web.xml
 * 
 * @author nagesh_holur
 *
 */

public class SampleServlet5_1 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter writer = response.getWriter();

		String userName = request.getParameter("userName");
		if (userName == null || userName == "") {
			// Fetching init parameter by servlet configuration.
			userName = this.getServletConfig().getInitParameter("defaultUserName");
		}
		
		writer.println("Hello " + userName + " from ServletSample5_1 servlet GET, web.xml based configuration.");
		System.out.println("Hello " + userName + " from ServletSample5_1 servlet GET, web.xml based configuration.");

		System.out.println();
	}

}
