package com.tm.dbModels;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;

import com.tm.model.Administrator;
import com.tm.model.Customer;
import com.tm.model.Order;
import com.tm.model.OrderManager;
import com.tm.model.User;

public class UserDAO {

	private static UserDAO instance = null;

	private UserDAO() {

	}

	public static synchronized UserDAO getInstance() {
		System.out.println("GETING USER DAO INSTANCE 3.");
		if (instance == null) {
			instance = new UserDAO();
		}
		return instance;
	}

	public boolean insertUser(User user) {
		PreparedStatement ps = null;
		try {
			System.out.println("INSERTING USER WITH USER DAO ");
			DBManager.getInstance();
			ps = DBManager.getInstance().getConnection().prepareStatement(
					"INSERT INTO users (first_name, last_name, email, password,male,birth_date,is_admin ,subscribed) VALUES (?,?,?,?,?,?,?,?);",
					Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, user.getFirstName());
			ps.setString(2, user.getLastName());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getPassword());
			ps.setBoolean(5, user.isMale());
			ps.setDate(6, user.getBirthDate());
			ps.setBoolean(7, user.isAdmin());
			ps.setBoolean(8, user.isSubscribed());
			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {
				user.setUserId(rs.getInt(1));
				System.out.println("Auto Generated Primary Key " + user.getUserId());
			}

			System.out.println("USERS ADDED SUCCESSFULY IN USER DAO ");
			return true;
		} catch (SQLException e) {
			System.out.println("ERROR: CAN'T ADD USER");
			e.printStackTrace();
			return false;
		} finally {
			if (ps != null) {
				try {
					ps.close();
				} catch (SQLException e) {

					e.printStackTrace();
				}
			}
		}
	}

	public HashSet<User> getAllUsers() {
		HashSet<User> users = new HashSet<User>();
		ArrayList<Order> orders = new ArrayList<>();
		Statement st = null;
		ResultSet resultSet = null;
		System.out.println("GETING THE USERS WITH THE USER DAO NOW 4.");
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().createStatement();
			resultSet = st.executeQuery("SELECT user_id, first_name, last_name, email, password,male,birth_date ,is_admin,subscribed FROM users;");

			while (resultSet.next()) {
				boolean isAdmin = resultSet.getBoolean("is_admin");
				if (isAdmin) {
					Administrator user = new Administrator(resultSet.getString("first_name"), resultSet.getString("last_name"),
							resultSet.getString("email"), resultSet.getString("password"), resultSet.getBoolean("male"),
							resultSet.getDate("birth_date"), resultSet.getBoolean("subscribed"));
					user.setUserId(resultSet.getInt("user_id"));
					users.add(user);
				
				} else {
					Customer user = new Customer(resultSet.getString("first_name"), resultSet.getString("last_name"),
							resultSet.getString("email"), resultSet.getString("password"), resultSet.getBoolean("male"),
							resultSet.getDate("birth_date"), resultSet.getBoolean("subscribed"));
					System.out.println("FOR CUSTOMER " + user.getEmail() + " seting orders ");
					user.setUserId(resultSet.getInt("user_id"));
					users.add(user);
				}

			}

		} catch (SQLException e) {
			System.out.println("Cannot create statement ");
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
		for(User u : users){
			System.out.println("USER IS SETTING ORDERS : " + ((User) u).getEmail());
			if(!(u.isAdmin())){
				((Customer) u).setOrders(OrderManager.getInstance().getAllOrdersForUser(u));
			}
		}
		System.out.println("USERS LOADED SUCCESSFULY 5.");
		return users;
	}

	public void updateUser(User user) {
		try {
			PreparedStatement st = DBManager.getInstance().getConnection().prepareStatement(
					"UPDATE users SET first_name = ?, last_name = ?, email = ?, password = ?, male = ?, birth_date = ? subscribed = ?  WHERE username = ?;");
			st.setString(1, user.getFirstName());
			st.setString(2, user.getLastName());
			st.setString(3, user.getEmail());
			st.setString(4, user.getPassword());
			st.setBoolean(5, user.isMale());
			st.setDate(6, user.getBirthDate());
			st.setBoolean(8, user.isSubscribed());
			st.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
