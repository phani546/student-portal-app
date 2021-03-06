package com.shankar.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.shankar.model.CalendarModel;
import com.shankar.util.DBConnection;
import com.shankar.util.DateConverter;

/**
 * Servlet implementation class HolidayList
 */
@WebServlet("/HolidayList")
public class HolidayListController extends HttpServlet {
	static org.apache.log4j.Logger logger = org.apache.log4j.Logger.getLogger(HolidayListController.class);
	private static final long serialVersionUID = 1L;
	static Connection dbConn = null;
	static CalendarModel calEvent = new CalendarModel();
	static {
		dbConn = DBConnection.getDBCon();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().write(getHolidaysList().toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
		try {
			/** setting values ***/
			calEvent.setTitle(request.getParameter("event"));
			calEvent.setEventStartDate(DateConverter.getStringToDate(request.getParameter("startdatepick")));
			calEvent.setEventEndDate(DateConverter.getStringToDate(request.getParameter("enddatepick")));
			boolean a = insertHolidays(calEvent);
			request.setAttribute("insertFlag", String.valueOf(a));
			request.getRequestDispatcher("/holidayForm.jsp").forward(request, response);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}

	public boolean insertHolidays(CalendarModel calObj) throws ParseException {
		Statement insertStmt = null;
		boolean a = false;
		try {
			insertStmt = dbConn.createStatement();
			String sqlQuery = "Insert into events(title,startDate,endDate) values(" + '"' + calObj.getTitle() + '"'
					+ "," + '"' + calObj.getEventStartDate() + '"' + "," + '"' + calObj.getEventEndDate() + '"' + ")";
			logger.info("events query:" + sqlQuery);
			a = insertStmt.execute(sqlQuery);
			if (a) {
				logger.info("records successfully inserted");
			} else {
				logger.info("failed to insert record");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (insertStmt != null) {
				try {
					insertStmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		}
		return a;

	}

	public JsonObject getHolidaysList() {
		Statement getStmt = null;
		ResultSet rs = null;
		JsonObject data = new JsonObject();
		try {
			getStmt = dbConn.createStatement();
			String query = "select * from events";
			rs = getStmt.executeQuery(query);
			String title = "";
			Date startDate = null;
			Date endDate = null;
			JsonObject jobj = new JsonObject();
			JsonArray j = new JsonArray();
			while (rs.next()) {
				title = rs.getString("title");
				startDate = rs.getDate("startDate");
				endDate = rs.getDate("endDate");
				logger.info("start date" + startDate + "end date" + endDate);
				jobj.addProperty("title", rs.getString("title"));
				jobj.addProperty("start", rs.getDate("startDate").toString());
				jobj.addProperty("end", rs.getDate("endDate").toString());
				j.add(jobj);
			}
			data.add("data", j);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (getStmt != null) {
				try {
					getStmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return data;
	}

	public void updateHolidays() {

	}

	public void deleteHolidays() {

	}
}
