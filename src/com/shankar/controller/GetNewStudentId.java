package com.shankar.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shankar.util.DBConnection;

/**
 * Servlet implementation class GetNewStudentId
 */
@WebServlet("/GetNewStudentId")
public class GetNewStudentId extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public GetNewStudentId() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection dbCon = DBConnection.getDBCon();
		try {
			Statement stmt = dbCon.createStatement();
			String countQuery = "select id from user order by id desc";
			ResultSet countRs = stmt.executeQuery(countQuery);
			int val=0;
			while(countRs.next()) {
				val = countRs.getInt("id")+1;
			}
			System.out.println("total record count:"+val);
			response.getWriter().print(val);
		}catch(Exception e) {
			e.printStackTrace();
			response.getWriter().print(e);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
