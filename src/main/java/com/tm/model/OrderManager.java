package com.tm.model;

import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

import com.tm.dbModels.OrderDAO;

public class OrderManager {
	private static OrderManager instance = null;
	private ConcurrentHashMap<Integer, Order> orders;

	private OrderManager() {
		orders = new ConcurrentHashMap();

		for (Order order : OrderDAO.getInstance().getAllOrders()) {
			orders.put(order.getOreder_id(), order);
		}
	}
	
	public synchronized static OrderManager getInstance() {
		if (instance == null) {
			instance = new OrderManager();
		}
		return instance;
	}
	
	public void addOrder(Order order) {
		
		OrderDAO.getInstance().insertOrder(order);
		User customer = UserManager.getInstance().getUserById(order.getClient_id());
		((Customer)customer).addOrder(order);
		orders.put(order.getOreder_id(), order);

	}
	
	public ArrayList<Order> getAllOrdersForUser(User user){
		return OrderDAO.getInstance().getAllOrdersForUser(user);
	}
	
}
