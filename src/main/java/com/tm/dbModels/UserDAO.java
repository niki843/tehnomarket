package com.tm.dbModels;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.propertyeditors.CurrencyEditor;

import com.tm.model.Administrator;
import com.tm.model.Customer;
import com.tm.model.Order;
import com.tm.model.User;

public class UserDAO {

	private static UserDAO instance = null;

	private UserDAO() {

	}

	public static synchronized UserDAO getInstance() {
		if (instance == null) {
			instance = new UserDAO();
		}
		return instance;
	}

	public boolean insertUser(User user) {
		PreparedStatement ps = null;
		try {
			DBManager.getInstance();
			ps = DBManager.getConnection().prepareStatement(
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

			System.out.println("User added successfully");
			return true;
		} catch (SQLException e) {
			System.out.println("error cannot add this user");
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
		try {
			DBManager.getInstance();
			st = DBManager.getConnection().createStatement();

			resultSet = st.executeQuery(
					"SELECT first_name, last_name, email, password,male,birth_date ,is_admin,subscribed FROM technomarket.users;");

			while (resultSet.next()) {
				boolean isAdmin = resultSet.getBoolean("is_admin");
				if (isAdmin) {
					users.add(new Administrator(resultSet.getString("first_name"), resultSet.getString("last_name"),
							resultSet.getString("email"), resultSet.getString("password"), resultSet.getBoolean("male"),
							resultSet.getDate("birth_date"), resultSet.getBoolean("subscribed")));
				} else {
					Customer user = new Customer(resultSet.getString("first_name"), resultSet.getString("last_name"),
							resultSet.getString("email"), resultSet.getString("password"), resultSet.getBoolean("male"),
							resultSet.getDate("birth_date"), resultSet.getBoolean("subscribed"));
					user.setOrders(getAllOrdersForUser(user));
					users.add(user);
				}

			}

		} catch (SQLException e) {
			System.out.println("Cannot create statement ");
			return users;
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
		System.out.println("Users loaded successfully");
		return users;
	}

	private ArrayList<Order> getAllOrdersForUser(User user) {
		ArrayList<Order> orders = new ArrayList<>();
		Statement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getConnection().createStatement();

			resultSet = st.executeQuery(
					"SELECT order_id, client_id, price, date,status FROM users where client_id = "
							+ user.getUserId() + " ;");
			while (resultSet.next()) {
				orders.add(new Order(resultSet.getInt("order_id"), resultSet.getInt("client_id"),
						resultSet.getDouble("price"), resultSet.getDate("date"), resultSet.getString("Status")));
			}
			return orders;
		} catch (SQLException e) {
			System.out.println("Cannot create statement ");
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
		return orders;

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