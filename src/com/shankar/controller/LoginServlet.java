package com.shankar.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("userEmail");
		String password = request.getParameter("userPassword");
		// Get the user object if email and password is correct
		/*if (user!=null) {*/
		if(email!=null && password != null) {
			 request.getSession().setAttribute("user", email);
             response.sendRedirect("index.jsp");
		} else {
			request.setAttribute("loginerror", "UserId or password you have entered is wrong");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
	}

}
