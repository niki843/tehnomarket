package com.tm.dbModels;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;

import com.tm.model.Product;

public class ProductDAO {
	private static ProductDAO instance = null;

	private ProductDAO() {

	}

	public static synchronized ProductDAO getInstance() {
		if (instance == null) {
			instance = new ProductDAO();
		}
		return instance;
	}

	public boolean insertProduct(Product product) {
		DBManager.getInstance();
		Statement st = null;
		PreparedStatement pst = null;
		ResultSet resultSet = null;

		try {
			st = DBManager.getInstance().getConnection().createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			pst = DBManager.getInstance().getConnection().prepareStatement(
					"INSERT INTO products (model_id,product_type_type_id, name, art_num,ean, info,pic_url, quantity_in_stock, in_sale,  price) VALUES (?,?,?,?,?,?,?,?,?,?);");
			pst.setInt(1, getIdFromModel(product.getModel()));
			pst.setInt(2, getIdFromType(product.getProdct_type()));
			pst.setString(3, product.getName());
			pst.setString(4, product.getArt_number());
			pst.setString(5, product.getEan());
			pst.setString(6, product.getInfo());
			pst.setString(7, product.getPicture());
			pst.setInt(8, product.getQuantity());
			pst.setBoolean(9, product.isInSale());
			pst.setDouble(10, product.getPrice());
			return true;
		} catch (SQLException e) {
			System.out.println("error cannot add this product");
			e.printStackTrace();
			return false;
		}

	}

	private int getIdFromType(String type) {
		Statement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().createStatement();
			resultSet = st.executeQuery("SELECT type_id from product_type where type_name=" + type);
			return resultSet.getInt("type_id");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}

	private int getIdFromModel(String model) {
		Statement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().createStatement();
			resultSet = st.executeQuery("SELECT model_id from product_type where model_name=" + model);
			return resultSet.getInt("model_id");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}

	private String getModelFromId(int id) {
		Statement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().createStatement();
			resultSet = st.executeQuery("SELECT model_name from product_type where model_id=" + id);
			return resultSet.getString("model_name");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public Set<Product> getAllProducts() {
		HashSet<Product> products = new HashSet<Product>();
		try {
			DBManager.getInstance();
			Statement st = DBManager.getInstance().getConnection().createStatement();
			ResultSet resultSet = st.executeQuery(
					"SELECT product_id,model_id,product_type_type_id, name, art_num,ean, info,pic_url, quantity_in_stock, in_sale,  price FROM products;");

			while (resultSet.next()) {
				products.add(new Product(

						resultSet.getInt("product_id"), 
						getModelFromId(resultSet.getInt("model_id")),
						getTypeFromId(resultSet.getInt("product_type_type_id")),
						resultSet.getString("name"),
						resultSet.getString("art_num"),
						resultSet.getString("ean"),
						resultSet.getString("info"),
						resultSet.getString("pic_url"), 
						resultSet.getInt("connections"),
						resultSet.getBoolean("interfaces"),
						resultSet.getDouble("operation_system")));

			}
		} catch (SQLException e) {
			System.out.println("Cannot create statement");
			e.printStackTrace();

			return products;
		}
		return products;
	}

	private String getTypeFromId(int id) {
		Statement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().createStatement();
			resultSet = st.executeQuery("SELECT type_name from product_type where type_id=" + id);
			return resultSet.getString("type_name");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
