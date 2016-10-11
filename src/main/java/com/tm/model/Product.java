package com.tm.model;

import java.io.File;

public class Product {

	int product_id;
	String model;
	String prodct_type;
	String name;
	String art_number;
	String ean;
	String info;
	File picture;
	String upperType;
	int quantity;
	boolean inSale;
	double price;

	public Product(String model, String prodct_type, String upperType, String name, String art_number, String ean,
			String info, File picture, int quantity, boolean inSale, double price) {
		this.model = model;
		this.prodct_type = prodct_type;
		this.name = name;
		this.art_number = art_number;
		this.ean = ean;
		this.info = info;
		this.picture = picture;
		this.quantity = quantity;
		this.inSale = inSale;
		this.price = price;
		this.upperType = upperType;
	}
	
	public String getUpperType(){
		return upperType;
	}
	
	public void setUpperType(String upperType){
		this.upperType = upperType;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getProdct_type() {
		return prodct_type;
	}

	public void setProdct_type(String prodct_type) {
		this.prodct_type = prodct_type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getArt_number() {
		return art_number;
	}

	public void setArt_number(String art_number) {
		this.art_number = art_number;
	}

	public String getEan() {
		return ean;
	}

	public void setEan(String ean) {
		this.ean = ean;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public File getPicture() {
		return picture;
	}

	public void setPicture(File picture) {
		this.picture = picture;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public boolean isInSale() {
		return inSale;
	}

	public void setInSale(boolean inSale) {
		this.inSale = inSale;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

}
