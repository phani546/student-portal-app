package com.shankar.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shankar.model.StudentRegistrationModel;
import com.shankar.util.DBConnection;

/**
 * Servlet implementation class ViewStudentDetails
 */
@WebServlet("/ViewStudentDetails")
public class ViewStudentDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StudentRegistrationModel stm = new StudentRegistrationModel();
		response.getWriter().append("Served at: ").append(request.getContextPath());
		Connection dbCon = DBConnection.getDBCon();
		try {
			Statement stmt = dbCon.createStatement();
			String sqlQuery = "select * from user";
			System.out.println("insert query = " + sqlQuery);
			ResultSet rs = stmt.executeQuery(sqlQuery);
			while(rs.next()) {
				request.setAttribute("studentId", rs.getInt("id"));
				request.setAttribute("studentname", rs.getInt("name"));
				request.setAttribute("class", rs.getInt("class"));
				request.setAttribute("section", rs.getInt("section"));
				request.getRequestDispatcher("/viewstudentdetails.jsp").forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
