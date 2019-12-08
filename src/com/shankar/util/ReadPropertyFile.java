package com.shankar.util;

import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

public class ReadPropertyFile {
	Map<String,String> propMap=new HashMap<>();
	private static ReadPropertyFile instance;
	Properties propUtil=null;
	protected ReadPropertyFile(){}
	public static ReadPropertyFile getInstance(){
		if(instance==null){
			instance=new ReadPropertyFile();	
		}
		return instance;
	}
	public Map<String, String> readProperties(){
    try{	
    	  propUtil=new Properties();
    	  InputStream in = ReadPropertyFile.class.getResourceAsStream("app.properties");
    	  propUtil.load(in);
    	  propMap.put("databaseURL",propUtil.getProperty("db.url"));
          propMap.put("dbusername",propUtil.getProperty("db.username"));
          propMap.put("dbpassword", propUtil.getProperty("db.password"));
          propMap.put("photoDirPath",  propUtil.getProperty("photoDirPath"));
      }catch(Exception e){
		  System.out.println("Excepiton in ReadPropertyFile class"+e.getMessage());
	  }
	  return propMap;
	}
	public static void main(String arg[]) {
		System.out.println(ReadPropertyFile.getInstance().readProperties());
	}
}
