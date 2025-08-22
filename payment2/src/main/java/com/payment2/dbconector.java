package com.payment2;

import java.sql.Connection;
import java.sql.DriverManager;

public class dbconector {
	private static String url="jdbc:mysql://localhost:3307/payment2";
	private static String userName="root";
	private static String password="Ima@#1234";
	private static Connection con;
	
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url, userName, password);
			
		}
		catch(Exception e) {
			System.out.println("Database connection is not success");
		}
		
		return con;
}
}