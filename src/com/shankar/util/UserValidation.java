package com.shankar.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserValidation {
   public static boolean validateUser(String username,String password) {
	try {
	   Connection dbCon = DBConnection.getDBCon();
	   Statement stmt = dbCon.createStatement();
	   String sql = "select count(*) as value from user where username = " +'"'+ username +'"'+ " and password = " +'"'+ password +'"' ;
	   System.out.println("query = " + sql);
	   ResultSet rs = stmt.executeQuery(sql);
	   while(rs.next()) {
		  int val = rs.getInt("value");
		  if(val == 1) {
			  return true;
		  }
	   }
	}catch(Exception e) {
		e.printStackTrace();
	}
	return false;
   }
}
