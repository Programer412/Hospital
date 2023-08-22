package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

	private static Connection con;
	public static Connection getConn(){
		String url="jdbc:mysql://localhost:3306/hospital";
		String username="root";
		String password="root";
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection(url,username,password);
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
		
	}
}

