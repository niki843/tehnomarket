package model;

import java.util.HashSet;
import java.util.concurrent.ConcurrentHashMap;

import dbModels.ProductDAO;

public class ProductManager {
	public static ProductManager instance = null;
	private ConcurrentHashMap<String, Product> products;

	private ProductManager() {
		products = new ConcurrentHashMap();

		for (Product product : ProductDAO.getInstance().getAllProducts()) {
			// add in collections
			products.put(product.getName(), product);
		}
	}

	public synchronized static ProductManager getInstance() {
		if (instance == null) {
			instance = new ProductManager();
		}
		return instance;
	}
}
