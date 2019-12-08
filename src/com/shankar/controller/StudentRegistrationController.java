package com.shankar.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shankar.model.AddressModel;
import com.shankar.util.DBConnection;
import com.shankar.util.DateConverter;

/**
 * Servlet implementation class StudentRegistration
 */
@WebServlet("/StudentRegistration")
public class StudentRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	com.shankar.model.StudentRegistrationModel stuModel = new com.shankar.model.StudentRegistrationModel();
	AddressModel adrModel = new AddressModel();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		stuModel.setId(Integer.parseInt(request.getParameter("studentid")));
		stuModel.setUserName(request.getParameter("username"));
		stuModel.setPassword(request.getParameter("password"));
		stuModel.setName(request.getParameter("studentname"));
		stuModel.setFathername(request.getParameter("fathername"));
		stuModel.setMothername(request.getParameter("mothername"));
		stuModel.setGender(request.getParameter("gender"));
		stuModel.setStudentClass(request.getParameter("studentclass"));
		stuModel.setSection(request.getParameter("section"));
		stuModel.setBloodgroup(request.getParameter("bloodgroup"));
		stuModel.setFatheremailid(request.getParameter("fatheremailid"));
		stuModel.setFathercontactno(request.getParameter("fathercontactno"));
		stuModel.setDoj(request.getParameter("doj"));
		stuModel.setEcontactno(request.getParameter("Econtactno"));
		stuModel.setHobbies(request.getParameter("hobbies"));

		adrModel.setAddresstype(request.getParameter("address_type"));
		adrModel.setDno(request.getParameter("dno"));
		adrModel.setStreet(request.getParameter("street"));
		adrModel.setLandmark(request.getParameter("landmark"));
		adrModel.setCity(request.getParameter("City"));
		adrModel.setPincode(request.getParameter("Pin_Code"));
		adrModel.setState(request.getParameter("State"));
		adrModel.setCountry(request.getParameter("Country"));

		try {
			insertStudentData(adrModel, stuModel);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}

	public void insertStudentData(AddressModel address, com.shankar.model.StudentRegistrationModel stuModel) throws ParseException {
		Connection dbCon = DBConnection.getDBCon();
		try {
			Statement stmt = dbCon.createStatement();
			String sqlQuery = "INSERT INTO user (id,name,class,section,doj,fathername,motherName,gender,bloodgroup,econtactno,fathercontactno,fatheremailid"
					+ ",hobbies,photopath,userName,password)" + "VALUES(" + stuModel.getId() +"," +'"' + stuModel.getName() + '"' + "," + '"'
					+ stuModel.getStudentClass() + '"' + "," + '"' + stuModel.getSection() + '"' + "," + '"'
					+ DateConverter.getStringToDate(stuModel.getDoj()) + '"' + "," + '"' + stuModel.getFathername() + '"' + "," + '"'
					+ stuModel.getMothername() + '"' + "," +'"' + stuModel.getGender() + '"' + "," + '"' + stuModel.getBloodgroup() + '"' + "," + '"'
					+ stuModel.getEcontactno() + '"' + "," + '"' + stuModel.getFathercontactno() + '"' + "," + 
					'"'+ stuModel.getFatheremailid() + '"' + "," + '"' + stuModel.getHobbies() + '"' + "," + '"'
					+ stuModel.getPhotopath() + '"' + "," + '"' + stuModel.getUserName() + '"' + "," + '"'
					+ stuModel.getPassword() + '"' + ")";
			System.out.println("insert query = " + sqlQuery);
			stmt.execute(sqlQuery);
			insertAddress(address,stuModel,dbCon);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void insertAddress(AddressModel address, com.shankar.model.StudentRegistrationModel stuModel,Connection dbCon) {
		try {
			Statement stmt = dbCon.createStatement();
			String addQuery = "INSERT INTO address(address_type,dno,street,landmark,village,city,mandal,district,state,pincode,userId)"
					+ "VALUES(" + '"' + address.getAddresstype() + '"' + "," + '"' + address.getDno() + '"' + "," + '"'
					+ address.getStreet() + '"' + "," + '"' + address.getLandmark() + '"' + "," + '"'
					+ address.getVillage() + '"' + "," + '"' + address.getCity() + '"' + "," + '"' + address.getMandal()
					+ '"' + "," + '"' + address.getDistrict() + '"' + "," + '"' + address.getState() + '"' + "," + '"'
					+ address.getPincode() + '"' + "," + stuModel.getId() + 
					 ")";
			System.out.println("requesr " + addQuery);
			boolean a = stmt.execute(addQuery);
			System.out.println("update done " + a);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}