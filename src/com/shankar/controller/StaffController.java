package com.shankar.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Staff
 */
@WebServlet("/Staff")
public class StaffController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StaffController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("staff_id"));
		System.out.println(request.getParameter("father_name"));
		System.out.println(request.getParameter("mother_name"));
		System.out.println(request.getParameter("languages known"));
		System.out.println(request.getParameter("qualification"));
		System.out.println(request.getParameter("Designation"));
		System.out.println(request.getParameter("Class_Assigned"));
		System.out.println(request.getParameter("subjects_thought"));
		System.out.println(request.getParameter("Section_alotted"));
		System.out.println(request.getParameter("email"));
		System.out.println(request.getParameter("contact_no"));
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
