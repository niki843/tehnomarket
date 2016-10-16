package com.tm.model;

import java.sql.Date;
import java.util.ArrayList;

public class Customer extends User {
	private ArrayList<Order> orders;

	public Customer(String firstName, String lastName, String email, String password, boolean isMale, Date birthDate,
			boolean subscribed) {
		super(firstName, lastName, email, password, isMale, birthDate, false, subscribed);
		this.orders = orders;
		
	}

	public Customer() {

	}
	
	public void addOrder(Order order){
		orders.add(order);
	}

	public ArrayList<Order> getOrders() {
		return orders;
	}

	public void setOrders(ArrayList<Order> orders) {
		this.orders = orders;
	}

}
