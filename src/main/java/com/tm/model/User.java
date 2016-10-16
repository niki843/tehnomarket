package com.tm.model;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.tm.dbModels.DBManager;

public abstract class User {
	private static int userID = 0;
	private int userId;
	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private boolean isMale;
	private Date birthDate;
	private boolean isAdmin = false;
	private boolean subscribed;

	public User(){};
	
	public User(String firstName, String lastName, String email, String password, boolean isMale, Date birthDate,
			boolean isAdmin, boolean subscribed) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.isMale = isMale;
		this.birthDate = birthDate;
		this.isAdmin = isAdmin;
		this.subscribed = subscribed;

		DBManager.getInstance();
		Statement st = null;
		ResultSet resultSet = null;
		try {
			st = DBManager.getInstance().getConnection().createStatement();
			resultSet = st.executeQuery(
					"SELECT AUTO_INCREMENT FROM  INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'laptop' AND   TABLE_NAME   = 'accounts';");
			while (resultSet.next()) {
				userID = resultSet.getInt("AUTO_INCREMENT");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (st != null) {
					st.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}

		if (userID == 1) {
			this.isAdmin = true;
		}

	}

	

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public boolean isMale() {
		return isMale;
	}

	public void setMale(boolean isMale) {
		this.isMale = isMale;
	}

	public Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}

	public boolean isSubscribed() {
		return subscribed;
	}

	public void setSubscribed(boolean subscribed) {
		this.subscribed = subscribed;
	}

	void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	void setPassword(String password) {
		this.password = password;
	}

	void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}

	public boolean isAdmin() {
		return isAdmin;
	}

	public static int getUserID() {
		return userID;
	}

}
