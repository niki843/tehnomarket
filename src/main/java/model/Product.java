package model;

public class Product {

	int product_id;
	int model_id;
	int prodct_type_id;
	String name;
	String art_number;
	String ean;
	String info;
	String picture;
	int quantity;
	boolean inSale;
	double price;

	public Product(int product_id, int model_id, int prodct_type_id, String name, String art_number, String ean,
			String info, String picture, int quantity, boolean inSale, double price) {
		this.product_id = product_id;
		this.model_id = model_id;
		this.prodct_type_id = prodct_type_id;
		this.name = name;
		this.art_number = art_number;
		this.ean = ean;
		this.info = info;
		this.picture = picture;
		this.quantity = quantity;
		this.inSale = inSale;
		this.price = price;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public int getModel_id() {
		return model_id;
	}

	public void setModel_id(int model_id) {
		this.model_id = model_id;
	}

	public int getProdct_type_id() {
		return prodct_type_id;
	}

	public void setProdct_type_id(int prodct_type_id) {
		this.prodct_type_id = prodct_type_id;
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

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
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
