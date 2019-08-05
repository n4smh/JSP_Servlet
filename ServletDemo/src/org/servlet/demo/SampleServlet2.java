package org.servlet.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***
 * web.xml configuration based Servlet.
 * 
 * @author nagesh_holur
 *
 */

public class SampleServlet2 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter writer = response.getWriter();
		writer.println("Served at: " + request.getContextPath());
		writer.println("This is the context root of this application");

		System.out.println("Hello from ServletSample2 servlet GET");
	}

}
