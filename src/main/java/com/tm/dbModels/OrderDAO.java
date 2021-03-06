package com.tm.dbModels;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;

import com.mongodb.DB;
import com.tm.model.Order;
import com.tm.model.Product;
import com.tm.model.ProductManager;
import com.tm.model.User;

public class OrderDAO {
	
	private static OrderDAO instance;

	private OrderDAO() {

	}

	public static synchronized OrderDAO getInstance() {
		if (instance == null) {
			instance = new OrderDAO();
		}
		return instance;
	}
	
	public HashSet<Order> getAllOrders(){
		HashSet<Order> orders = new HashSet<Order>();
		Statement st = null;
		ResultSet rs = null;
		
		try {
			st = DBManager.getInstance().getConnection().createStatement();
			rs = st.executeQuery("SELECT order_id,client_id,price,date,status FROM orders;");
			while(rs.next()){
				Order order = new Order(rs.getInt("order_id"), rs.getInt("client_id"), rs.getDouble("price"), rs.getDate("date"), rs.getString("status"));
				orders.add(order);
			}
		} catch (SQLException e) {
			System.out.println("ERROR: WITH GETTING SET IN ORDER DAO");
			e.printStackTrace();
		}finally {
			
		}
		
		return orders;
	}

	public ArrayList<Order> getAllOrdersForUser(User user) {
		ArrayList<Order> orders = new ArrayList<>();
		PreparedStatement ps = null;
		ResultSet resultSet = null;
		try {
			ps = DBManager.getInstance().getConnection().prepareStatement("SELECT order_id, client_id, price, date,status FROM orders WHERE client_id LIKE (?);");
			ps.setInt(1,  user.getUserId());
			resultSet = ps.executeQuery();
			while (resultSet.next()) {
				System.out.println("Adding order to user " + resultSet.getInt("order_id"));
				orders.add(new Order(resultSet.getInt("order_id"), resultSet.getInt("client_id"),resultSet.getDouble("price"), resultSet.getDate("date"), resultSet.getString("Status")));
			}
			return orders;
		} catch (SQLException e) {
			System.out.println("Cannot create statement ");
			e.printStackTrace();
		} finally {
			setProductsForOrders(orders);
			DBManager.getInstance().closeConnection();
			try {
				ps.close();
				resultSet.close();
			} catch (SQLException e) {
				System.out.println("ERROR: CLOSING CONNECTION IN ORDER DAO 1");
				e.printStackTrace();
			}
			
		}
		return orders;
	}
	
	private void setProductsForOrders(ArrayList<Order> orders){
		PreparedStatement ps = null;
		ResultSet rs = null;
		ProductManager productManager = ProductManager.getInstance();
		for(Order order : orders){
			try {
				ps = DBManager.getInstance().getConnection().prepareStatement("SELECT order_id,product_id,product_quantity FROM orders_products WHERE order_id LIKE (?);");
				ps.setInt(1,order.getOreder_id());
				rs = ps.executeQuery();
				while(rs.next()){
					order.addProduct(productManager.getProductById(rs.getInt("product_id")), rs.getInt("product_quantity"));
					System.out.println("ADDED PRODUCT " + rs.getInt("product_id") + " WITH QUANTITY " + rs.getInt("product_quantity") + " FOR ORDER NUM " + order.getOreder_id());
				}
			} catch (SQLException e) {
				System.out.println("ERROR: creating ps in OrderDAO");
				e.printStackTrace();
			}
		}
		
	}
	
	public void insertOrder(Order order){
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			ps = DBManager.getInstance().getConnection().prepareStatement("INSERT INTO orders(client_id,price,date,status) VALUES (?,?,?,?)");
			ps.setInt(1, order.getClient_id());
			ps.setDouble(2, order.getPrice());
			ps.setDate(3, order.getDate());
			ps.setString(4, order.getStatus());
			ps.executeUpdate();
			ps = DBManager.getInstance().getConnection().prepareStatement("SELECT order_id FROM orders WHERE client_id LIKE (?);");
			ps.setInt(1, order.getClient_id());
			rs = ps.executeQuery();
			while(rs.next()){
				order.setOreder_id(rs.getInt("order_id"));
			}
		}catch(SQLException e){
			System.out.println("ERROR: ADDING ORDER IN ORDERS");
			e.printStackTrace();
		}finally{
			saveProductsForOrder(order);
			DBManager.getInstance().closeConnection();
		}
	}
	
	private void saveProductsForOrder(Order order){
		PreparedStatement ps = null;
		Map<Product,Integer> products = order.getProducts();
		for(Product p : products.keySet())
			try{
				ps = DBManager.getInstance().getConnection().prepareStatement("INSERT INTO orders_products(order_id, product_id, product_quantity) VALUES (?,?,?);");
				ps.setInt(1, order.getOreder_id());
				ps.setInt(2, p.getProduct_id());
				ps.setInt(3, products.get(p));
				ps.executeUpdate();
				System.out.println("ADDING PRODUCT " + p.getName() + " \nWITH QUANTITY " + products.get(p) + " IN DB" );
			}catch(SQLException e){
				System.out.println("ERROR: ADDING THE PRODUCTS FOR ORDER");
				e.printStackTrace();
			}finally{
				DBManager.getInstance().closeConnection();
			}
		
	}
	
}
