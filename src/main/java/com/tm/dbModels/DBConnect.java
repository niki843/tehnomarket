package com.tm.dbModels;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

	// static reference to itself
	private static DBConnect instance = new DBConnect();
	private static Connection connection = null;
	private static final String DB_IP = "192.168.0.26";
	private static final String DB_PORT = "3306";
	private static final String DB_NAME = "sql7137913";
	public static final String USER = "niki-admin";//TODO Promenq se za vseki
	public static final String PASSWORD = "213465Nikimininam999*";//TODO Promenq se za vseki
	public static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://"+DB_IP+":"+DB_PORT+"/"+DB_NAME;

	// private constructor
	private DBConnect() {
		try {
			// Step 2: Load MySQL Java driver
			Class.forName(DRIVER_CLASS);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	

	public synchronized static DBConnect getInstance() {
		if (instance == null) {
			instance = new DBConnect();
		}
		return instance;
	}

	public static Connection getConnection() {
		// Step 3: Establish Java MySQL connection
		try {
			if(connection.isClosed()){
				try {
					return connection = DriverManager.getConnection(URL, USER, PASSWORD);
				} catch (SQLException e) {
					System.out.println("ERROR WITH CREATING CONNECTION");
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			System.out.println("ERROR WITH CHECKING CONNECTION");
			e.printStackTrace();
		}
		return connection;
	}
	
	public void closeConnection(){
		try {
			connection.close();
		} catch (SQLException e) {
			System.out.println("ERROR WITH CLOSING CONNECTION");
			e.printStackTrace();
		}
	}
	
}
