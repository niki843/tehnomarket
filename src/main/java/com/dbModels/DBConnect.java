package com.dbModels;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

	// static reference to itself
	private static DBConnect instance = new DBConnect();
	public static final String URL = "jdbc:mysql://sql7.freemysqlhosting.net/jdbcdb";
	public static final String USER = "sql7137913";
	public static final String PASSWORD = "6ZfkjKlVZb";
	public static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";

	// private constructor
	private DBConnect() {
		try {
			// Step 2: Load MySQL Java driver
			Class.forName(DRIVER_CLASS);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	private Connection createConnection() {

		Connection connection = null;
		try {
			// Step 3: Establish Java MySQL connection
			connection = DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (SQLException e) {
			System.out.println("ERROR: Unable to Connect to Database.");
		}
		return connection;
	}

	public static Connection getConnection() {
		return instance.createConnection();
	}
}
