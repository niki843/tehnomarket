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
			System.out.println("ERROR: with st in product DAO");
			e.printStackTrace();
		}
		try {
			pst = DBManager.getInstance().getConnection().prepareStatement(
					"INSERT INTO products (model_id,product_type_type_id, id_upper_type, name, art_num,ean, info,pic_url, quantity_in_stock, in_sale,  price) VALUES (?,?,?,?,?,?,?,?,?,?,?);");
			pst.setInt(1, getIdFromModel(product.getModel()));
			pst.setInt(2, getIdFromType(product.getProdct_type()));
			pst.setInt(3, getIdFromUpperType(product.getUpperType()));
			pst.setString(4, product.getName());
			pst.setString(5, product.getArt_number());
			pst.setString(6, product.getEan());
			pst.setString(7, product.getInfo());
			pst.setString(8, product.getPicture());
			pst.setInt(9, product.getQuantity());
			pst.setBoolean(10, product.isInSale());
			pst.setDouble(11, product.getPrice());
			return true;
		} catch (SQLException e) {
			System.out.println("ERROR: cannot add this product in product DAO");
			e.printStackTrace();
			return false;
		}finally {
			DBManager.getInstance().closeConnection();
			try {
				st.close();
				pst.close();
				resultSet.close();
			} catch (SQLException e) {
				System.out.println("ERROR:closing statement in product DAO 1");
				e.printStackTrace();
			}
		}

	}

	private int getIdFromType(String type) {
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().prepareStatement("SELECT type_id FROM product_type WHERE type_name LIKE (?)");
			st.setString(1, type);
			resultSet = st.executeQuery();
			return resultSet.getInt("type_id");
		} catch (SQLException e) {
			System.out.println("ERROR:with executing query in product DAO 1");
			e.printStackTrace();
		}finally {
			DBManager.getInstance().closeConnection();
			try {
				st.close();
				resultSet.close();
			} catch (SQLException e) {
				System.out.println("ERROR:closing prepared statement in product DAO 2");
				e.printStackTrace();
			}
		}
		return -1;
	}

	private int getIdFromModel(String model) {
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().prepareStatement("SELECT model_id FROM product_type WHERE model_name LIKE (?)");
			st.setString(1, model);
			resultSet = st.executeQuery();
			return resultSet.getInt("model_id");
		} catch (SQLException e) {
			System.out.println("ERROR:with executing query in product DAO 2");
			e.printStackTrace();
		}finally {
			DBManager.getInstance().closeConnection();
			try {
				st.close();
				resultSet.close();
			} catch (SQLException e) {
				System.out.println("ERROR:closing prepared statement in product DAO 3");
				e.printStackTrace();
			}
		}
		return -1;
	}

	private String getModelFromId(int id) {
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().prepareStatement("SELECT model_name FROM product_type WHERE model_id LIKE (?)");
			st.setInt(1, id);
			resultSet = st.executeQuery();
			return resultSet.getString("model_name");
		} catch (SQLException e) {
			System.out.println("ERROR:with executing query in product DAO 3");
			e.printStackTrace();
		}finally{
			DBManager.getInstance().closeConnection();
			try {
				st.close();
				resultSet.close();
			} catch (SQLException e) {
				System.out.println("ERROR:closing prepared statement in product DAO 4");
				e.printStackTrace();
			}
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
			try {
				st.close();
				resultSet.close();
			} catch (SQLException e) {
				System.out.println("ERROR:closing statement in product DAO 5");
				e.printStackTrace();
			}
			
		}
		return products;
	}

	private String getTypeFromId(int id) {
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().prepareStatement("SELECT type_name FROM product_type WHERE type_id LIKE (?)");
			st.setInt(1, id);
			resultSet = st.executeQuery();
			return resultSet.getString("type_name");
		} catch (SQLException e) {
			System.out.println("ERROR:couldn't get type from id in product dao 5");
			e.printStackTrace();
		}finally {
			DBManager.getInstance().closeConnection();
			try {
				st.close();
				resultSet.close();
			} catch (SQLException e) {
				System.out.println("ERROR:closing prepared statement in product DAO 6");
				e.printStackTrace();
			}
		}
		return null;
	}
	
	private String getUperTypeFromId(int id){
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().prepareStatement("SELECT type_name from product_type WHERE type_id LIKE (?)");
			st.setInt(1, id);
			resultSet = st.executeQuery();
			return resultSet.getString("type_name");
		} catch (SQLException e) {
			System.out.println("ERROR:Couldn't get uper type from id in productDAO 6");
			e.printStackTrace();
		}finally {
			DBManager.getInstance().closeConnection();
			try {
				st.close();
				resultSet.close();
			} catch (SQLException e) {
				System.out.println("ERROR:closing prepared statement in product DAO 7");
				e.printStackTrace();
			}
		}
		return null;
	}	
	
	private Integer getIdFromUpperType(String type){
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().prepareStatement("SELECT id_upper_type from product_upper_type WHERE upper_type_name LIKE (?)");
			st.setString(1, type);
			resultSet = st.executeQuery();
			return resultSet.getInt("type_name");
		} catch (SQLException e) {
			System.out.println("ERROR:Couldn't get uper type from id in productDAO 7");
			e.printStackTrace();
		}finally {
			DBManager.getInstance().closeConnection();
			try {
				st.close();
				resultSet.close();
			} catch (SQLException e) {
				System.out.println("ERROR:closing prepared statement in product DAO 8");
				e.printStackTrace();
			}
		}
		return null;
	}
}
