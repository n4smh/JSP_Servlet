package org.servlet.login.app;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.servlet.login.app.dto.User;
import org.servlet.login.app.service.LoginService;

/***
 * Redirection: Server side, Client side and to another Servlet.
 * 
 * Passing attributes: Using Session in Client side redirection and request in
 * Server side redirection.
 * 
 * Request Parameter: It's is used to get the data from client. It will be of
 * type String. These are the attributes sent in request when the form is
 * submitted or in the request ULR or in the body content of the request.
 * 
 * Request Attribute: These are the request scope attributes. It's set and
 * retrieved by setAttribute and getAttribute respectively using request object.
 * It can be any primitive or Object type.
 * 
 * @author nagesh_holur
 *
 */

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userId = request.getParameter("userId");
		String userPassword = request.getParameter("userPassword");

		LoginService loginService = new LoginService();

		Boolean isAuthenticate = loginService.authenticate(userId, userPassword);
		User user = loginService.getUserDetails(userId);

		if (isAuthenticate) {
			request.getSession().setAttribute("user", user);

			// Redirection happens at the client side (browser handles it).
			// If the redirection is to another servlet then servlet ULR should
			// be passed as argument. In this case self redirection is "/login".
			response.sendRedirect("successPage.jsp");
			return;

		} else {

			// Saving user in request scope.
			request.setAttribute("user", user);
			System.out.println(user.getUserId() + " : " + user.getUserName());

			// Redirection happens at the server side, browser is not aware of
			// new request. There by scope of the request still exits in the
			// redirected page. Attributes in the request objects are
			// accessible.
			// Works for both JSP and JSTL.
			// RequestDispatcher requestDispatcher =
			// request.getRequestDispatcher("failurePageJSTL.jsp");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("loginPage.jsp");
			requestDispatcher.forward(request, response);
		}
	}

}
