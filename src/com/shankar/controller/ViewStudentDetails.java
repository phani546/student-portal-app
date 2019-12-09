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

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonArray;
import com.google.gson.JsonParser;
import com.shankar.model.StudentRegistrationModel;
import com.shankar.util.DBConnection;

/**
 * Servlet implementation class ViewStudentDetails
 */
@WebServlet("/ViewStudentDetails")
public class ViewStudentDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection dbCon = DBConnection.getDBCon();
		try {
			Statement stmt = dbCon.createStatement();
			int offset = Integer.parseInt(request.getParameter("jtStartIndex"));
			int pageSize = Integer.parseInt(request.getParameter("jtPageSize"));
			String sortBy = request.getParameter("jtSorting");
			
			String countQuery = "select count(*) as value from user";
			Statement stmt1 = dbCon.createStatement();
			ResultSet countRs = stmt1.executeQuery(countQuery);
			int val=0;
			while(countRs.next()) {
				val = countRs.getInt("value");
			}
			System.out.println("total record count:"+val);
			
			
			 String sqlQuery =
			 "SELECT `user`.`id`, `user`.`name`, `user`.`class`, `user`.`section`, `user`.`doj`, `user`.`fathername`, `user`.`motherName`,"
			 +
			  " `user`.`bloodgroup`, `user`.`econtactno`, `user`.`fathercontactno`, `user`.`fatheremailid`, `user`.`hobbies`, `user`.`photopath`, "
			  +
			  "`user`.`userName`, `user`.`password`, `user`.`gender` FROM `studentapp`.`user` order by "+ sortBy + " limit "+ pageSize + " offset "+ offset +";"
			  ;
			 
			System.out.println("query = " + sqlQuery);
			ResultSet rs = stmt.executeQuery(sqlQuery);
			JsonArray jarray = new JsonArray();
			int counter = 0;
			while (rs.next()) {
				counter++;
				StudentRegistrationModel stuModel = new StudentRegistrationModel();
				stuModel.setId(rs.getInt("id"));
				stuModel.setName(rs.getString("name"));
				stuModel.setStudentClass(rs.getString("class"));
				stuModel.setSection(rs.getString("section"));
				stuModel.setDoj(rs.getDate("doj").toString());
				stuModel.setFathername(rs.getString("fathername"));
				stuModel.setMothername(rs.getString("motherName"));
				stuModel.setBloodgroup(rs.getString("bloodgroup"));
				stuModel.setEcontactno(rs.getString("econtactno"));
				stuModel.setFathercontactno(rs.getString("fathercontactno"));
				stuModel.setFatheremailid(rs.getString("fatheremailid"));
				stuModel.setHobbies(rs.getString("hobbies"));
				stuModel.setPhotopath(rs.getString("photopath"));
				stuModel.setUserName(rs.getString("userName"));
				stuModel.setPassword(rs.getString("password"));
				stuModel.setGender(rs.getString("gender"));
				
				ObjectMapper mapper = new ObjectMapper();
				String jsonString = mapper.writeValueAsString(stuModel);
				JsonParser jp = new JsonParser();
				jarray.add(jp.parse(jsonString));
			}
			String finalResult = "{\"Result\":\"OK\",\"Records\":" + jarray + ",\"TotalRecordCount\": "+ val +"}";
			response.setContentType("application/json");
			response.getWriter().print(finalResult);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}
}