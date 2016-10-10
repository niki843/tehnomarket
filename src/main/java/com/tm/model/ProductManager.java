package com.tm.model;

import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import com.tm.dbModels.ProductDAO;

public class ProductManager {
	public static ProductManager instance = null;
	private ConcurrentHashMap<Integer, Product> products;

	private ProductManager() {
		products = new ConcurrentHashMap();

		for (Product product : ProductDAO.getInstance().getAllProducts()) {
			products.put(product.getProduct_id(), product);
		}
	}

	public synchronized static ProductManager getInstance() {
		if (instance == null) {
			instance = new ProductManager();
		}
		return instance;
	}

	public void addProduct(Product p) {
		if (ProductDAO.getInstance().insertProduct(p)) {
			products.put(p.getProduct_id(), p);
		}

	}
	
	public Map<Integer, Product> getAllProducts(){
		return Collections.unmodifiableMap(products);
	}
	public Product getProduct(int id) {
		return products.get(id);
	}
}