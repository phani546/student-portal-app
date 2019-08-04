package com.shankar.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
	    List<StudentRegistrationModel> aList = new ArrayList<StudentRegistrationModel>();
		Connection dbCon = DBConnection.getDBCon();
		try {
		    Statement stmt = dbCon.createStatement();
			String sqlQuery = "select id,name,class,section from user";
			System.out.println("query = " + sqlQuery);
			ResultSet rs = stmt.executeQuery(sqlQuery);
			while(rs.next()) {
				StudentRegistrationModel stuModel = new StudentRegistrationModel();
				stuModel.setId(rs.getInt("id"));
				stuModel.setName(rs.getString("name"));
				stuModel.setStudentClass(rs.getString("class"));
				stuModel.setSection(rs.getString("section"));
				aList.add(stuModel);
			}
			request.setAttribute("students", aList);
			request.getRequestDispatcher("/view.jsp").include(request, response);
			System.out.println("studen obj = " + aList.size());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
