package com.tm.model;

import java.sql.Date;
import java.time.LocalDate;
import java.util.HashMap;

public class Order {
	private int oreder_id;
	private int client_id;
	private double price;
	private Date date;
	private String status;
	private HashMap<Product, Integer> products;

	public Order(int oreder_id, int client_id, double price, Date date, String status) {
		products = new HashMap<>();
		this.oreder_id = oreder_id;
		this.client_id = client_id;
		this.price = price;
		this.date = date;
		this.status = status;
	}
	
	public void addProduct(Product product,Integer quantity){
		products.put(product, quantity);
	}

	public int getOreder_id() {
		return oreder_id;
	}

	public void setOreder_id(int oreder_id) {
		this.oreder_id = oreder_id;
	}

	public int getClient_id() {
		return client_id;
	}

	public void setClient_id(int client_id) {
		this.client_id = client_id;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
