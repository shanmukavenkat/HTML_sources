package com.kogent.ajax;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DatabaseConnector 
{
	public static Connection getConnection() 
	{
		Connection con = null;
		String driver = ("com.mysql.jdbc.Driver");
		try 
		{
			Class.forName(driver).newInstance();
		} catch (Exception e) {
			System.out.println("Failed to load MySQL driver.");
			return null;
		}
		try 
		{
			con = DriverManager
			.getConnection("jdbc:mysql://localhost:3306/emp","root","admin");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}

