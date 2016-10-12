package com.tm.dbModels;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tm.model.Product;

public class ProductDAO {
	private static ProductDAO instance = null;
	private HashMap<Integer, String> uppertypesNames = null;
	private HashMap<Integer, String> typesNames = null;
	private HashMap<Integer, String> modelsNames = null;

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

	public String getModelFromId(int id) {
		Statement st = null;
		ResultSet resultSet = null;
		if(modelsNames == null){
			modelsNames = new HashMap<>();
			try {
				DBManager.getInstance();
				st = DBManager.getInstance().getConnection().createStatement();
				resultSet = st.executeQuery("SELECT model_id ,model_name FROM product_models;");
				while (resultSet.next()) {
					modelsNames.put(resultSet.getInt("model_id"), resultSet.getString("model_name"));
				}
			} catch (SQLException e) {
				System.out.println("ERROR:with executing query in product DAO 3");
				e.printStackTrace();
			} finally {
				DBManager.getInstance().closeConnection();
			}
			if(id == -1){
				return null;
			}
			for(Integer i : modelsNames.keySet()){
				if(i == id){
					return modelsNames.get(i);
				}
			}
		}else{
			for(Integer i : modelsNames.keySet()){
				if(i == id){
					return modelsNames.get(i);
				}
			}
		}
		return null;
	}

	public Set<Product> getAllProducts() {
		HashSet<Product> products = new HashSet<Product>();
		Statement st = null;
		ResultSet set = null;
		Integer model;
		Integer type;
		Integer upperType;
		Integer productId;
		String name;
		String artNum;
		String ean;
		String info;
		String pic;
		Integer quantity;
		Boolean inSale;
		Double price;
		InputStream is;
		try {
			DBManager.getInstance();
			st = DBManager.getInstance().getConnection().createStatement();
			set = st.executeQuery("SELECT product_id,model_id,product_type_type_id,id_upper_type,name,art_num,art_num,ean,info,pic_url,pic_name,quantity_in_stock,in_sale,price FROM products;");
			while(set.next()){
				model = set.getInt("model_id");
				type = set.getInt("product_type_type_id");
				upperType = set.getInt("id_upper_type");
				productId = set.getInt("product_id");
				name = set.getString("name");
				artNum = set.getString("art_num");
				ean = set.getString("ean");
				info = set.getString("info");
				pic = set.getString("pic_name");
				quantity = set.getInt("quantity_in_stock");
				inSale = set.getBoolean("in_sale");
				price = set.getDouble("price");
				is = set.getBinaryStream("pic_url");
				File image = new File(pic);
			    FileOutputStream fos = null;
			    if(image.exists()){
			    	System.out.println("PICTURE IS FOUND IN THE DIRECTORY");
					Product product = new Product(
							getModelFromId(model), getTypeFromId(type), getUperTypeFromId(upperType), name,
							artNum, ean, info, image, quantity, inSale, price);
					products.add(product);
					product.setProduct_id(productId);
			    }else{
				    System.out.println("DIDN'T FIND IMAGE TAKING IT FROM DB");
					try {
						fos = new FileOutputStream(image);
						byte[] buffer = new byte[1];
						while (is.read(buffer) > 0) {
							fos.write(buffer);
						}
						System.out.println("FINISHED WRITING PICTURE");
					} catch (FileNotFoundException e) {
						System.out.println("ERROR: file wasn't found when geting");
						e.printStackTrace();
					} catch (IOException e) {
						System.out.println("ERROR: io in geting image for product");
						e.printStackTrace();
					}
					
					try {
						image.createNewFile();
					} catch (IOException e) {
						System.out.println("ERROR CREATING FILE IN PRODUCT DAO!!");
						e.printStackTrace();
					}
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
				System.out.println("----------------" + productId + "----------------");
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

	public String getTypeFromId(int id) {
		Statement st = null;
		ResultSet resultSet = null;
		if(typesNames == null){
			typesNames = new HashMap<>();
			try {
				DBManager.getInstance();
				st = DBManager.getInstance().getConnection().createStatement();
				resultSet = st.executeQuery("SELECT type_id,type_name FROM product_type");
				while (resultSet.next()) {
					typesNames.put(resultSet.getInt("type_id"), resultSet.getString("type_name"));
				}
			} catch (SQLException e) {
				System.out.println("ERROR:couldn't get type from id in product dao 5");
				e.printStackTrace();
			} finally {
				DBManager.getInstance().closeConnection();
			}
			if(id == -1){
				return null;
			}
			for(Integer i : typesNames.keySet()){
				if(i == id){
					return typesNames.get(i);
				}
			}
		}else{
			for(Integer i : typesNames.keySet()){
				if(i == id){
					return typesNames.get(i);
				}
			}
		}
		return null;
	}

	public String getUperTypeFromId(int id) {
		Statement st = null;
		ResultSet resultSet = null;
		if(uppertypesNames == null){
			uppertypesNames = new HashMap<>();
			try {
				DBManager.getInstance();
				st = DBManager.getInstance().getConnection().createStatement();
				resultSet = st.executeQuery("SELECT id_upper_type,upper_type_name FROM product_upper_type");
				while (resultSet.next()) {
					uppertypesNames.put(resultSet.getInt("id_upper_type"), resultSet.getString("upper_type_name"));
				}
			} catch (SQLException e) {
				System.out.println("ERROR:Couldn't get uper type from id in productDAO 6");
				e.printStackTrace();
			} finally {
				DBManager.getInstance().closeConnection();
			}
			if(id == -1){
				return null;
			}
			for(Integer i : uppertypesNames.keySet()){
				if(i == id){
					return uppertypesNames.get(i);
				}
			}
		}else{
			for(Integer i : uppertypesNames.keySet()){
				if(i == id){
					return uppertypesNames.get(i);
				}
			}
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
