package com.tm.dbModels;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
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
		File filePicture = product.getPicture();
		Integer quantity = product.getQuantity();
		Boolean inSale = product.isInSale();
		Double price = product.getPrice();
		String info = product.getInfo();
		FileInputStream fis = null;
		System.out.println("inserting picture with path: " + filePicture.getAbsolutePath());
		try {
			fis = new FileInputStream(filePicture);
		} catch (FileNotFoundException e1) {
			System.out.println("ERROR: DIDN'T FIND FILE!!");
			e1.printStackTrace();
		}
		try {
			PreparedStatement st = DBManager.getInstance().getConnection().prepareStatement(
					"INSERT INTO products (model_id,product_type_type_id, id_upper_type, name, art_num,ean, info,pic_url, pic_name, quantity_in_stock, in_sale,  price) VALUES (?,?,?,?,?,?,?,?,?,?,?,?);");
			st.setInt(1, modelId);
			st.setInt(2, typeId);
			st.setInt(3, upperTypeId);
			st.setString(4, name);
			st.setString(5, artNumb);
			st.setString(6, info);
			st.setString(7, ean);
			st.setBinaryStream(8, fis, (int) filePicture.length());
			st.setString(9, filePicture.getAbsolutePath());
			st.setInt(10, quantity);
			st.setBoolean(11, inSale);
			st.setDouble(12, price);
			st.executeUpdate();
			setProductId(product);
			return true;
		} catch (SQLException e) {
			System.out.println("ERROR: cannot add this product in product DAO");
			e.printStackTrace();
			return false;
		} finally {
			DBManager.getInstance().closeConnection();
		}

	}
	
	private void setProductId(Product product){
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = DBManager.getInstance().getConnection().prepareStatement("SELECT product_id FROM products WHERE name LIKE (?) ");
			ps.setString(1, product.getName());
			rs = ps.executeQuery();
			while(rs.next()){
				product.setProduct_id(rs.getInt("product_id"));
			}
		} catch (SQLException e) {
			System.out.println("ERROR: WHILE ADJUSTING THE ID FOR THE PRODUCT!");
			e.printStackTrace();
		}
	}

	private int getIdFromType(String type) {
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection()
					.prepareStatement("SELECT type_id FROM product_type WHERE type_name LIKE (?);");
			st.setString(1, type);
			resultSet = st.executeQuery();
			while (resultSet.next()) {
				return resultSet.getInt("type_id");
			}
		} catch (SQLException e) {
			System.out.println("ERROR:with executing query in product DAO 1");
			e.printStackTrace();
		} finally {
			DBManager.getInstance().closeConnection();
		}
		return -1;
	}

	private Integer getIdFromModel(String model) {
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			st = DBManager.getInstance().getConnection()
					.prepareStatement("SELECT model_id FROM product_models WHERE model_name LIKE (?);");
			st.setString(1, model);
			resultSet = st.executeQuery();
			while (resultSet.next()) {
				int x = resultSet.getInt("model_id");
				System.out.println("WE ARE MAKING THE PREPARED STATEMENT NOW" + x);
				return x;
			}
		} catch (SQLException e) {
			System.out.println("ERROR:with executing query in product DAO 2");
			e.printStackTrace();
		} finally {
			DBManager.getInstance().closeConnection();
		}
		return -1;
	}

	private String getModelFromId(int id) {
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection()
					.prepareStatement("SELECT model_name FROM product_models WHERE model_id LIKE (?);");
			st.setInt(1, id);
			resultSet = st.executeQuery();
			while (resultSet.next()) {
				return resultSet.getString("model_name");
			}
		} catch (SQLException e) {
			System.out.println("ERROR:with executing query in product DAO 3");
			e.printStackTrace();
		} finally {
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
					"SELECT product_id,model_id,product_type_type_id,id_upper_type,name,art_num,art_num,ean,info,pic_url,pic_name,quantity_in_stock,in_sale,price FROM products;");

			while (resultSet.next()) {
				Integer model = resultSet.getInt("model_id");
				Integer type = resultSet.getInt("product_type_type_id");
				Integer upperType = resultSet.getInt("id_upper_type");
				Integer productId = resultSet.getInt("product_id");
				String name = resultSet.getString("name");
				String artNum = resultSet.getString("art_num");
				String ean = resultSet.getString("ean");
				String info = resultSet.getString("info");
				String pic = resultSet.getString("pic_name");
				Integer quantity = resultSet.getInt("quantity_in_stock");
				Boolean inSale = resultSet.getBoolean("in_sale");
				Double price = resultSet.getDouble("price");

				File image = new File(resultSet.getString(pic));
			    FileOutputStream fos = null;
				try {
					fos = new FileOutputStream(image);
					byte[] buffer = new byte[1];
					InputStream is = resultSet.getBinaryStream("pic_url");
					while (is.read(buffer) > 0) {
						fos.write(buffer);
					}
				} catch (FileNotFoundException e) {
					System.out.println("ERROR: file wasn't found when geting");
					e.printStackTrace();
				} catch (IOException e) {
					System.out.println("ERROR: io in geting image for product");
					e.printStackTrace();
				}

				System.out.println("----------------" + model + "--------------------");
				System.out.println("----------------" + type + "--------------------");
				System.out.println("----------------" + upperType + "--------------------");
				System.out.println("----------------" + name + "--------------------");
				System.out.println("----------------" + artNum + "--------------------");
				System.out.println("----------------" + ean + "--------------------");
				System.out.println("----------------" + info + "--------------------");
				System.out.println("----------------" + pic + "--------------------");
				System.out.println("----------------" + quantity + "--------------------");
				System.out.println("----------------" + inSale + "--------------------");
				System.out.println("----------------" + price + "--------------------");
				Product product = new Product(

						getModelFromId(model), getTypeFromId(type), getUperTypeFromId(upperType), name,
						artNum, ean, info, image, quantity, inSale, price);
				products.add(product);
				product.setProduct_id(productId);
				
			}

		} catch (SQLException e) {
			System.out.println("ERROR: Cannot create statement in product DAO 4");
			e.printStackTrace();

			return products;
		} finally {
			DBManager.getInstance().closeConnection();

		}
		return products;
	}

	private String getTypeFromId(int id) {
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection()
					.prepareStatement("SELECT type_name FROM product_type WHERE type_id LIKE (?);");
			st.setInt(1, id);
			resultSet = st.executeQuery();
			while (resultSet.next()) {
				return resultSet.getString("type_name");
			}
		} catch (SQLException e) {
			System.out.println("ERROR:couldn't get type from id in product dao 5");
			e.printStackTrace();
		} finally {
			DBManager.getInstance().closeConnection();
		}
		return null;
	}

	private String getUperTypeFromId(int id) {
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection()
					.prepareStatement("SELECT upper_type_name FROM product_upper_type WHERE id_upper_type LIKE (?);");
			st.setInt(1, id);
			resultSet = st.executeQuery();
			while (resultSet.next()) {
				return resultSet.getString("upper_type_name");
			}
		} catch (SQLException e) {
			System.out.println("ERROR:Couldn't get uper type from id in productDAO 6");
			e.printStackTrace();
		} finally {
			DBManager.getInstance().closeConnection();
		}
		return null;
	}

	private Integer getIdFromUpperType(String type) {
		PreparedStatement st = null;
		ResultSet resultSet = null;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection()
					.prepareStatement("SELECT id_upper_type FROM product_upper_type WHERE upper_type_name LIKE (?);");
			st.setString(1, type);
			resultSet = st.executeQuery();
			while (resultSet.next()) {
				return resultSet.getInt("id_upper_type");
			}
		} catch (SQLException e) {
			System.out.println("ERROR:Couldn't get uper type from id in productDAO 7");
			e.printStackTrace();
		} finally {
			DBManager.getInstance().closeConnection();
		}
		return null;
	}
}
