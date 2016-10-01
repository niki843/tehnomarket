package dbModels;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;


import model.Product;

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
			st = DBManager.getConnection().createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			pst = DBManager.getConnection().prepareStatement(
					"INSERT INTO products (brand, model, price, processor, video, memory,storage_capacity, display_info, optical_drive,  connections, interfaces,operation_system, weight,  size,  quantity,  image,product_id) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");

			return true;
		} catch (SQLException e) {
			System.out.println("error cannot add this product");
			e.printStackTrace();
			return false;
		}

	}

	public Set<Product> getAllProducts() {
		HashSet<Product> products = new HashSet<Product>();
		return null;
	}
}
