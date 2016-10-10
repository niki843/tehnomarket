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
		Integer modelId = getIdFromModel(product.getModel());
		Integer typeId = getIdFromType(product.getProdct_type());
		Integer upperTypeId = getIdFromUpperType(product.getUpperType());
		String name = product.getName();
		String artNumb = product.getArt_number();
		String ean = product.getEan();
		String picture = product.getPicture();
		Integer quantity = product.getQuantity();
		Boolean inSale = product.isInSale();
		Double price = product.getPrice();
		String info = product.getInfo();
		try {
			PreparedStatement st = DBManager.getInstance().getConnection().prepareStatement(
					"INSERT INTO products (model_id,product_type_type_id, id_upper_type, name, art_num,ean, info,pic_url, quantity_in_stock, in_sale,  price) VALUES (?,?,?,?,?,?,?,?,?,?,?);");
			st.setInt(1, modelId);
			st.setInt(2, typeId);
			st.setInt(3, upperTypeId);
			st.setString(4, name);
			st.setString(5, artNumb);
			st.setString(6, info);
			st.setString(7, ean);
			st.setString(8, picture);
			st.setInt(9, quantity);
			st.setBoolean(10, inSale);
			st.setDouble(11, price);
			st.executeUpdate();
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

	private Integer getIdFromModel(String model) {
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
				Integer model = resultSet.getInt("model_id");
				Integer type = resultSet.getInt("product_type_type_id");
				Integer upperType = resultSet.getInt("id_upper_type");
				Integer productId = resultSet.getInt("product_id");
				String name = resultSet.getString("name");
				String artNum = resultSet.getString("art_num");
				String ean = resultSet.getString("ean");
				String info = resultSet.getString("info");
				String pic = resultSet.getString("pic_url");
				Integer quantity = resultSet.getInt("quantity_in_stock");
				Boolean inSale = resultSet.getBoolean("in_sale");
				Double price = resultSet.getDouble("price");
				System.out.println("----------------" +model+ "--------------------");
				System.out.println("----------------" +type+ "--------------------");
				System.out.println("----------------" +upperType+ "--------------------");
				System.out.println("----------------" +productId+ "--------------------");
				System.out.println("----------------" +name+ "--------------------");
				System.out.println("----------------" +artNum+ "--------------------");
				System.out.println("----------------" +ean+ "--------------------");
				System.out.println("----------------" +info+ "--------------------");
				System.out.println("----------------" +pic+ "--------------------");
				System.out.println("----------------" +quantity+ "--------------------");
				System.out.println("----------------" +inSale+ "--------------------");
				System.out.println("----------------" +price+ "--------------------");
				products.add(new Product(

						productId, 
						getModelFromId(model),
						getTypeFromId(type),
						getUperTypeFromId(upperType),
						name,
						artNum,
						ean,
						info,
						pic, 
						quantity,
						inSale,
						price));

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
				return resultSet.getString("upper_type_name");
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
			st = DBManager.getInstance().getConnection().prepareStatement("SELECT id_upper_type FROM product_upper_type WHERE upper_type_name LIKE (?);");
			st.setString(1, type);
			resultSet = st.executeQuery();
			while(resultSet.next()){
				return resultSet.getInt("id_upper_type");
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
