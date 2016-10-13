package com.tm.dbModels;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBManager {

	private static DBManager instance = new DBManager();
	private static Connection connection;
	private static final String DB_IP = "localhost";
	private static final String DB_PORT = "3306";
	private static final String DB_NAME = "sql7137913";
	public static final String DB_USERNAME = "root";
	public static final String DB_PASSWORD = "root";
	public static final String DRIVER_CLASS = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://"+DB_IP+":"+DB_PORT+"/"+DB_NAME+"?autoReconnect=true&useSSL=false";

	private DBManager() {

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("ERROR:with jdbc driver");
			e.printStackTrace();
		}
		try {
			connection = DriverManager.getConnection(URL, DB_USERNAME, DB_PASSWORD);
			System.out.println("connected to db");
		} catch (SQLException e) {
			System.out.println("ERROR:with making connection");
			e.printStackTrace();
		}
	}

	public synchronized static DBManager getInstance() {
		if (instance == null) {
			instance = new DBManager();
		}
		return instance;
	}

	public Connection getConnection() {
		try {
			if(connection.isClosed()){
				try {
					return connection = DriverManager.getConnection(URL, DB_USERNAME, DB_PASSWORD);
				} catch (SQLException e) {
					System.out.println("ERROR:with making connection");
					e.printStackTrace();
				}
			}
		} catch (SQLException e) {
			System.out.println("ERROR: with creating connection");
			e.printStackTrace();
		}
		return connection;
	}
	
	public void closeConnection(){
		try {
			connection.close();
		} catch (SQLException e) {
			System.out.println("ERROR:with closing the connection");
			e.printStackTrace();
		}
	}
	
}
