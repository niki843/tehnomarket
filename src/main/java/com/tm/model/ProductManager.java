package com.tm.model;

import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

import com.tm.dbModels.ProductDAO;

public class ProductManager {
	private static ProductManager instance = null;
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
	
	public Set<Product> getAllProductsInSale(){
		HashSet<Product> productsInSale = new HashSet<>();
		for(Product p : products.values()){
			if(p.isInSale()){
				productsInSale.add(p);
			}
		}
		return productsInSale;
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
	
	public void setProductInSale(Integer product_id, Double newPrice){
		Product product = products.get(product_id);
		if(product == null){
			System.out.println("ERROR: DIDN'T FIND PRODUCT");
		}
		product.setInSale(true);
		product.setOldPrice(product.getPrice());
		product.setPrice(newPrice);
		System.out.println("PRODUCT SET !!!!");
		ProductDAO.getInstance().setInSale(product);
	}
	
	public void sellProducts(Map<Product, Integer> map){
		
		for(Product p : map.keySet()){
			products.get(p.getProduct_id()).sell(map.get(p));
			ProductDAO.getInstance().sellProduct(p);
		}
		
	}
	
	public void removeProduct(Product p){
		ProductDAO.getInstance().removeProduct(p);
		products.remove(p.getProduct_id());
	}
	
	public void changeQuantity(Product p, Integer quantity){
		ProductDAO.getInstance().changeQuantity(p,quantity);
		products.get(p.getProduct_id()).setQuantity(quantity);
	}
	
	
}