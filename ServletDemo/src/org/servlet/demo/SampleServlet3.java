package org.servlet.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/***
 * GET and POST methods.
 * 
 * Form parameter fetching.
 * 
 * @author nagesh_holur
 *
 */
public class SampleServlet3 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter writer = response.getWriter();
		writer.println("Served at: " + request.getContextPath());
		writer.println("This is the context root of this application");
		writer.println();

		// Pass parameter in URL as context followed by ?parameterName=value
		String userName = request.getParameter("userName");
		writer.println("Hello " + userName + " from ServletSample3 servlet GET");
		System.out.println("Hello " + userName + " from ServletSample3 servlet GET");

		String isMale = request.getParameter("isMale");
		writer.println("isMale : " + isMale);
		System.out.println("isMale : " + isMale);

		String isEmployed = request.getParameter("isEmployed");
		writer.println("isEmployed : " + isEmployed);
		System.out.println("isEmployed : " + isEmployed);

		// Multiple values for single parameter
		String[] intrests = request.getParameterValues("intrests");
		writer.print("Intrests : ");
		System.out.print("Intrests : ");
		if (intrests != null) {
			for (String intrest : intrests) {
				writer.print(intrest + " ");
				System.out.print(intrest + " ");
			}
		}
		writer.println();
		System.out.println();
		
		System.out.println();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter writer = response.getWriter();
		writer.println("Served at: " + request.getContextPath());
		writer.println("This is the context root of this application");
		writer.println();

		// Pass parameter in URL as context followed by ?parameterName=value
		String userName = request.getParameter("userName");
		writer.println("Hello " + userName + " from ServletSample3 servlet POST");
		System.out.println("Hello " + userName + " from ServletSample3 servlet POST");

		String isMale = request.getParameter("isMale");
		writer.println("isMale : " + isMale);
		System.out.println("isMale : " + isMale);

		String isEmployed = request.getParameter("isEmployed");
		writer.println("isEmployed : " + isEmployed);
		System.out.println("isEmployed : " + isEmployed);

		// Multiple values for single parameter
		String[] intrests = request.getParameterValues("intrests");
		writer.print("Intrests : ");
		System.out.print("Intrests : ");
		if (intrests != null) {
			for (String intrest : intrests) {
				writer.print(intrest + " ");
				System.out.print(intrest + " ");
			}
		}
		writer.println();
		System.out.println();
		
		System.out.println();
	}
}
