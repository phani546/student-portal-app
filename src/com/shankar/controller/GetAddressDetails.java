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
import com.shankar.model.AddressModel;
import com.shankar.util.DBConnection;

/**
 * Servlet implementation class GetAddressDetails
 */
@WebServlet("/GetAddressDetails")
public class GetAddressDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    try {
    	Connection dbCon = DBConnection.getDBCon();
    	Statement stmt = dbCon.createStatement();
		String query = "SELECT `address`.`id`,\r\n" + 
    			"    `address`.`address_type`,\r\n" + 
    			"    `address`.`dno`,\r\n" + 
    			"    `address`.`street`,\r\n" + 
    			"    `address`.`landmark`,\r\n" + 
    			"    `address`.`village`,\r\n" + 
    			"    `address`.`city`,\r\n" + 
    			"    `address`.`mandal`,\r\n" + 
    			"    `address`.`district`,\r\n" + 
    			"    `address`.`state`,\r\n" + 
    			"    `address`.`pincode`,\r\n" + 
    			"    `address`.`userId`\r\n" + 
    			"FROM `studentapp`.`address` where userId = " + request.getParameter("studentId");
    	    System.out.println("query = " + query);
			ResultSet rs = stmt.executeQuery(query);
			JsonArray jarray = new JsonArray();
			while (rs.next()) {
				AddressModel addModel = new AddressModel();
				addModel.setId(rs.getInt("id"));
				addModel.setAddresstype(rs.getString("address_type"));
				addModel.setDno(rs.getString("dno"));
				addModel.setStreet(rs.getString("street"));
				addModel.setLandmark(rs.getString("landmark"));
                addModel.setVillage(rs.getString("village"));
                addModel.setCity(rs.getString("city"));
                addModel.setMandal(rs.getString("mandal"));
                addModel.setDistrict(rs.getString("district"));
                addModel.setState(rs.getString("state"));
                addModel.setPincode(rs.getString("pincode"));
                addModel.setUserId(rs.getInt("userId"));
                
                ObjectMapper mapper = new ObjectMapper();
				String jsonString = mapper.writeValueAsString(addModel);
				JsonParser jp = new JsonParser();
				jarray.add(jp.parse(jsonString));
			}
			String finalResult = "{\"Result\":\"OK\",\"Records\":" + jarray +"}";
			response.setContentType("application/json");
			response.getWriter().print(finalResult);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}