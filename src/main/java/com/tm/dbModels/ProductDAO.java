package com.tm.dbModels;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;
import java.sql.PreparedStatement;

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
		try {
			PreparedStatement st = DBManager.getInstance().getConnection().prepareStatement(
					"INSERT INTO products (model_id,product_type_type_id, id_upper_type, name, art_num,ean, info,pic_url, quantity_in_stock, in_sale,  price) VALUES (?,?,?,?,?,?,?,?,?,?,?);");
			System.out.println("WE ARE HERE HERE -------------------------");
			st.setInt(1, getIdFromModel(product.getModel()));
			st.setInt(2, getIdFromType(product.getProdct_type()));
			st.setInt(3, getIdFromUpperType(product.getUpperType()));
			st.setString(4, product.getName());
			st.setString(5, product.getArt_number());
			st.setString(6, product.getEan());
			st.setString(7, product.getInfo());
			st.setString(8, product.getPicture());
			st.setInt(9, product.getQuantity());
			st.setBoolean(10, product.isInSale());
			st.setDouble(11, product.getPrice());
			st.executeQuery();
			return true;
		} catch (SQLException e) {
			System.out.println("ERROR: cannot add this product in product DAO");
			e.printStackTrace();
			return false;
		}finally {
			DBManager.getInstance().closeConnection();
		}

	}

	private int getIdFromType(String type) {
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().prepareStatement("SELECT type_id FROM product_type WHERE type_name LIKE (?);");
			st.setString(1, type);
			resultSet = st.executeQuery();
			while(resultSet.next()){
				return resultSet.getInt("type_id");
			}
		} catch (SQLException e) {
			System.out.println("ERROR:with executing query in product DAO 1");
			e.printStackTrace();
		}finally {
			DBManager.getInstance().closeConnection();
		}
		return -1;
	}

	private int getIdFromModel(String model) {
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			st = DBManager.getInstance().getConnection().prepareStatement("SELECT model_id FROM product_models WHERE model_name LIKE (?);");
			st.setString(1, model);
			resultSet = st.executeQuery();
			while(resultSet.next()){
				int x = resultSet.getInt("model_id");
				System.out.println("WE ARE MAKING THE PREPARED STATEMENT NOW" + x);
				return x;
			}
		} catch (SQLException e) {
			System.out.println("ERROR:with executing query in product DAO 2");
			e.printStackTrace();
		}finally {
			DBManager.getInstance().closeConnection();
		}
		return -1;
	}

	private String getModelFromId(int id) {
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().prepareStatement("SELECT model_name FROM product_models WHERE model_id LIKE (?);");
			st.setInt(1, id);
			resultSet = st.executeQuery();
			while(resultSet.next()){
				return resultSet.getString("model_name");
			}
		} catch (SQLException e) {
			System.out.println("ERROR:with executing query in product DAO 3");
			e.printStackTrace();
		}finally{
			DBManager.getInstance().closeConnection();
		}
		return null;
	}

	public Set<Product> getAllProducts() {
		HashSet<Product> products = new HashSet<Product>();
		Statement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().createStatement();
			resultSet = st.executeQuery(
					"SELECT product_id,model_id,product_type_type_id,id_upper_type,name,art_num,art_num,ean,info,pic_url,quantity_in_stock,in_sale,price FROM products;");

			while (resultSet.next()) {
				products.add(new Product(

						resultSet.getInt("product_id"), 
						getModelFromId(resultSet.getInt("model_id")),
						getTypeFromId(resultSet.getInt("product_type_type_id")),
						getUperTypeFromId(resultSet.getInt("id_upper_type")),
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
			System.out.println("ERROR: Cannot create statement in product DAO 4");
			e.printStackTrace();

			return products;
		}finally{
			DBManager.getInstance().closeConnection();
			
		}
		return products;
	}

	private String getTypeFromId(int id) {
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().prepareStatement("SELECT type_name FROM product_type WHERE type_id LIKE (?);");
			st.setInt(1, id);
			resultSet = st.executeQuery();
			while(resultSet.next()){
				return resultSet.getString("type_name");
			}
		} catch (SQLException e) {
			System.out.println("ERROR:couldn't get type from id in product dao 5");
			e.printStackTrace();
		}finally {
			DBManager.getInstance().closeConnection();
		}
		return null;
	}
	
	private String getUperTypeFromId(int id){
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().prepareStatement("SELECT upper_type_name FROM product_upper_type WHERE id_upper_type LIKE (?);");
			st.setInt(1, id);
			resultSet = st.executeQuery();
			while(resultSet.next()){
				return resultSet.getString("type_name");
			}
		} catch (SQLException e) {
			System.out.println("ERROR:Couldn't get uper type from id in productDAO 6");
			e.printStackTrace();
		}finally {
			DBManager.getInstance().closeConnection();
		}
		return null;
	}	
	
	private Integer getIdFromUpperType(String type){
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().prepareStatement("SELECT id_upper_type from product_upper_type WHERE upper_type_name LIKE (?);");
			st.setString(1, type);
			resultSet = st.executeQuery();
			while(resultSet.next()){
				return resultSet.getInt("type_name");
			}
		} catch (SQLException e) {
			System.out.println("ERROR:Couldn't get uper type from id in productDAO 7");
			e.printStackTrace();
		}finally {
			DBManager.getInstance().closeConnection();
		}
		return null;
	}
}
