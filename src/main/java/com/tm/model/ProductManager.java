package com.tm.model;

import java.util.Collections;
import java.util.HashSet;
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
	
	public Product getProductById(int id) {
		return products.get(id);
	}
	
	public Product getProductByName(String name){
		for (Integer i : products.keySet()) {
			if(products.get(i).getName().equals(name)){
				return products.get(i);
			}
		}
		return null;
	}
	
	public HashSet<Product> getProductsByModel(String nadtype,String type,String model){
		HashSet<Product> prodByModel = new HashSet<Product>();
		for(Product product : products.values()){
			if(product.getUpperType().equals(nadtype)){
				if(product.getProdct_type().equals(type)){
					if(product.getModel().equals(model)){
						prodByModel.add(product);
					}
				}
			}
		}
		return prodByModel;
	}
	
	public void setProductInSale(Product product, Double newPrice){
		product.setInSale(true);
		product.setPrice(newPrice);
		ProductDAO.getInstance();
	}
	
	
}