package com.shankar.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shankar.util.UserValidation;

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
		String username = request.getParameter("userName");
		String password = request.getParameter("userPassword");
		boolean isUserExists = UserValidation.validateUser(username, password);
		if (isUserExists) {
			request.getSession().setAttribute("user", username);
			response.sendRedirect("index.jsp");
		} else {
			request.setAttribute("loginerror", "UserId or password you have entered is wrong");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
	}
}
