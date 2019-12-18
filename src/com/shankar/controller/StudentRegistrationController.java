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

import com.shankar.model.PermanantAddressModel;
import com.shankar.model.TemporaryAddressModel;
import com.shankar.util.DBConnection;
import com.shankar.util.DateConverter;

/**
 * Servlet implementation class StudentRegistration
 */
@WebServlet("/StudentRegistration")
public class StudentRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PermanantAddressModel pAdrModel = new PermanantAddressModel();
		TemporaryAddressModel tAdrModel = new TemporaryAddressModel();
		com.shankar.model.StudentRegistrationModel stuModel = new com.shankar.model.StudentRegistrationModel();
		stuModel.setId(Integer.parseInt(request.getParameter("studentid")));
		stuModel.setUserName(request.getParameter("username"));
		stuModel.setPassword(request.getParameter("password"));
		stuModel.setName(request.getParameter("name"));
		stuModel.setFathername(request.getParameter("fathername"));
		stuModel.setMothername(request.getParameter("mothername"));
		stuModel.setGender(request.getParameter("gender"));
		stuModel.setStudentClass(request.getParameter("studentclass"));
		stuModel.setSection(request.getParameter("section"));
		stuModel.setBloodgroup(request.getParameter("bloodgroup"));
		stuModel.setFatheremailid(request.getParameter("fatheremailid"));
		stuModel.setFathercontactno(request.getParameter("fathercontactno"));
		stuModel.setDob(request.getParameter("dob"));
		stuModel.setDoj(request.getParameter("doj"));
		stuModel.setEcontactno(request.getParameter("emergencycno"));
		stuModel.setHobbies(request.getParameter("hobbies"));
		stuModel.setPhotopath(request.getParameter("ppath"));

		pAdrModel.setAddresstype("permanant");
		pAdrModel.setDno(request.getParameter("dno"));
		pAdrModel.setStreet(request.getParameter("street"));
		pAdrModel.setLandmark(request.getParameter("landmark"));
		pAdrModel.setCity(request.getParameter("City"));
		pAdrModel.setPincode(request.getParameter("Pin_Code"));
		pAdrModel.setState(request.getParameter("State"));
		pAdrModel.setCountry(request.getParameter("Country"));
		pAdrModel.setVillage(request.getParameter("village"));
		pAdrModel.setMandal(request.getParameter("mandal"));
		pAdrModel.setDistrict(request.getParameter("district"));
		
		tAdrModel.setAddresstype("temporary");
		tAdrModel.setDno(request.getParameter("tdno"));
		tAdrModel.setStreet(request.getParameter("tstreet"));
		tAdrModel.setLandmark(request.getParameter("tlandmark"));
		tAdrModel.setCity(request.getParameter("tCity"));
		tAdrModel.setPincode(request.getParameter("tPin_Code"));
		tAdrModel.setState(request.getParameter("tState"));
		tAdrModel.setCountry(request.getParameter("tCountry"));
		tAdrModel.setVillage(request.getParameter("tvillage"));
		tAdrModel.setMandal(request.getParameter("tmandal"));
		tAdrModel.setDistrict(request.getParameter("tdistrict"));

		try {
			insertStudentData(pAdrModel, tAdrModel , stuModel);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		response.sendRedirect("homev.jsp");
	}
	public void insertStudentData(PermanantAddressModel pAddress,TemporaryAddressModel tAddress, com.shankar.model.StudentRegistrationModel stuModel) throws ParseException {
		Connection dbCon = DBConnection.getDBCon();
		try {
			Statement stmt = dbCon.createStatement();
			String sqlQuery = "INSERT INTO user (id,name,class,section,dob,doj,fathername,motherName,gender,bloodgroup,econtactno,fathercontactno,fatheremailid"
					+ ",hobbies,photopath,userName,password)" + "VALUES(" + stuModel.getId() +"," +'"' + stuModel.getName() + '"' + "," + '"'
					+ stuModel.getStudentClass() + '"' + "," + '"' + stuModel.getSection() + '"' + "," + '"'
					+ DateConverter.getStringToDate(stuModel.getDob()) +'"'+","+'"'+DateConverter.getStringToDate(stuModel.getDoj()) + '"' + "," + '"' + stuModel.getFathername() + '"' + "," + '"'
					+ stuModel.getMothername() + '"' + "," +'"' + stuModel.getGender() + '"' + "," + '"' + stuModel.getBloodgroup() + '"' + "," + '"'
					+ stuModel.getEcontactno() + '"' + "," + '"' + stuModel.getFathercontactno() + '"' + "," + 
					'"'+ stuModel.getFatheremailid() + '"' + "," + '"' + stuModel.getHobbies() + '"' + "," + '"'
					+ stuModel.getPhotopath() + '"' + "," + '"' + stuModel.getUserName() + '"' + "," + '"'
					+ stuModel.getPassword() + '"' + ")";
			System.out.println("insert query = " + sqlQuery);
			stmt.execute(sqlQuery);
			insertAddress(pAddress,tAddress,stuModel,dbCon);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void insertAddress(PermanantAddressModel pAddress,TemporaryAddressModel tAddress, com.shankar.model.StudentRegistrationModel stuModel,
			Connection dbCon) {
		try {
			Statement stmt = dbCon.createStatement();
			if (pAddress.getAddresstype().equalsIgnoreCase("permanant")) {
				String addQuery = "INSERT INTO address(address_type,dno,street,landmark,village,city,mandal,district,state,pincode,userId)"
						+ "VALUES(" + '"' + pAddress.getAddresstype() + '"' + "," + '"' + pAddress.getDno() + '"' + ","
						+ '"' + pAddress.getStreet() + '"' + "," + '"' + pAddress.getLandmark() + '"' + "," + '"'
						+ pAddress.getVillage() + '"' + "," + '"' + pAddress.getCity() + '"' + "," + '"'
						+ pAddress.getMandal() + '"' + "," + '"' + pAddress.getDistrict() + '"' + "," + '"'
						+ pAddress.getState() + '"' + "," + '"' + pAddress.getPincode() + '"' + "," + stuModel.getId()
						+ ")";
				System.out.println("requesr " + addQuery);
				boolean a = stmt.execute(addQuery);
				System.out.println("update done " + a);
			}

			if (tAddress.getAddresstype().equalsIgnoreCase("temporary")) {
				String addQuery = "INSERT INTO address(address_type,dno,street,landmark,village,city,mandal,district,state,pincode,userId)"
						+ "VALUES(" + '"' + tAddress.getAddresstype() + '"' + "," + '"' + tAddress.getDno() + '"' + ","
						+ '"' + tAddress.getStreet() + '"' + "," + '"' + tAddress.getLandmark() + '"' + "," + '"'
						+ tAddress.getVillage() + '"' + "," + '"' + tAddress.getCity() + '"' + "," + '"'
						+ tAddress.getMandal() + '"' + "," + '"' + tAddress.getDistrict() + '"' + "," + '"'
						+ tAddress.getState() + '"' + "," + '"' + tAddress.getPincode() + '"' + "," + stuModel.getId()
						+ ")";
				System.out.println("requesr " + addQuery);
				boolean a = stmt.execute(addQuery);
				System.out.println("update done " + a);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}