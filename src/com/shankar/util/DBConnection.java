package com.shankar.util;

import java.sql.Connection;
import java.sql.DriverManager;
import com.shankar.util.ReadPropertyFile;

public class DBConnection {
	static Connection con = null;

	private DBConnection() {
	}

	public static Connection getDBCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(
					ReadPropertyFile.getInstance().readProperties().get("databaseURL"),
					ReadPropertyFile.getInstance().readProperties().get("dbusername"),
					ReadPropertyFile.getInstance().readProperties().get("dbpassword"));
			return con;
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
