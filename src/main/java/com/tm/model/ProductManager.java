package com.tm.model;

import java.util.concurrent.ConcurrentHashMap;

import com.tm.dbModels.ProductDAO;

public class ProductManager {
	public static ProductManager instance = null;
	private ConcurrentHashMap<String, Product> products;

	private ProductManager() {
		products = new ConcurrentHashMap();

		for (Product product : ProductDAO.getInstance().getAllProducts()) {
			products.put(product.getName(), product);
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
			products.put(p.name, p);
		}

	}
}