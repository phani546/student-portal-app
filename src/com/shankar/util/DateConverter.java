package com.shankar.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class DateConverter {
   public static String getStringToDate(String date) throws ParseException {
	   SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
	   return sdf.format(sdf.parse(date));
   }
}