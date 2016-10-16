package com.tm.model;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Product {
	
	private ArrayList<String> descriptions;
	private int product_id;
	private String model;
	private String prodct_type;
	private String name;
	private String art_number;
	private String ean;
	private File picture;
	private String upperType;
	private String relativePath;
	private int quantity;
	private boolean inSale;
	private double price;
	private double oldPrice;

	public Product(String model, String prodct_type, String upperType, String name, String art_number,
			String ean, ArrayList<String> descriptions, File picture, int quantity, boolean inSale, double price) {
		this.descriptions = descriptions;
		this.model = model;
		this.prodct_type = prodct_type;
		this.name = name;
		this.art_number = art_number;
		this.ean = ean;
		this.picture = picture;
		this.quantity = quantity;
		this.inSale = inSale;
		this.price = price;
		this.upperType = upperType;
		this.relativePath = "img/"+picture.getName();
	}
	
	public void setOldPrice(double oldPrice){
		if(oldPrice <= this.oldPrice){
			return;
		}else{
			this.oldPrice = oldPrice;
		}
	}
	
	public double getOldPrice(){
		return oldPrice;
	}
	
	public String getRealtivePath(){
		return this.relativePath;
	}

	public String getUpperType() {
		return upperType;
	}

	public void setUpperType(String upperType) {
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

	public void setDescriptions(ArrayList<String> descriptions){
		this.descriptions = descriptions;
	}
	
	public List<String> getAllDescriptions(){
		return Collections.unmodifiableList(descriptions);
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
	
	public void sell(int amm){
		this.quantity -= amm;
	}

}
