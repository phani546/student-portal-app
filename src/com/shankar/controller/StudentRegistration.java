package com.shankar.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shankar.util.DBConnection;

/**
 * Servlet implementation class StudentRegistration
 */
@WebServlet("/StudentRegistration")
public class StudentRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
	com.shankar.model.StudentRegistration stuModel = new com.shankar.model.StudentRegistration();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		System.out.println( "sname"+request.getParameter("textnames"));
		System.out.println("sname"+request.getParameter("fathername"));
		System.out.println("sclass"+request.getParameter("studentclass"));
		System.out.println("ssection"+request.getParameter("section"));
		System.out.println("sbloodgroup"+request.getParameter("group"));
		System.out.println("sid"+request.getParameter("fatheremailid"));
		System.out.println("sdoj"+request.getParameter("doj"));
		System.out.println("secontactno"+request.getParameter("econtactno"));
		
		stuModel.setName(request.getParameter("textnames"));
		stuModel.setFathername(request.getParameter("fathername"));
		stuModel.setSection(request.getParameter("section"));
		stuModel.setStudentClass(request.getParameter("class"));
	    stuModel.setBloodgroup(request.getParameter("group"));
		stuModel.setEcontactno(request.getParameter("mobileno"));
		stuModel.setDoj(request.getParameter("doj"));
		stuModel.setFatheremailid(request.getParameter("fatheremailid"));
		
		insertStudentData(stuModel);
		
	}
	public void insertStudentData(com.shankar.model.StudentRegistration stuModel) {
		Connection dbCon = DBConnection.getDBCon();
		try {
			Statement stmt=dbCon.createStatement();
			String sqlQuery="INSERT INTO user (name,class,section,doj,fathername,bloodgroup,econtactno,fatheremailid)"
					+ "VALUES("+
					  '"'+stuModel.getName()+'"'+","+
					  '"'+stuModel.getStudentClass()+'"'+","+
					  '"'+stuModel.getSection()+'"'+","+
					  '"'+stuModel.getDoj()+'"'+","+
					  '"'+stuModel.getFathername()+'"'+","+
					  '"'+stuModel.getBloodgroup()+'"'+","+
					  '"'+ stuModel.getEcontactno() +'"'+","+
					  '"'+ stuModel.getFatheremailid()+'"'
					 +")";
			System.out.println("insert query = " + sqlQuery);
			stmt.execute(sqlQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	

}
