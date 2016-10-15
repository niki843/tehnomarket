package com.tm.model;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class Cart {
	private HashMap<Product, Integer> cartItems;

	public Cart() {
		cartItems = new HashMap<>();

	}

	public Map<Product, Integer> getCartItems() {
		return Collections.unmodifiableMap(cartItems);
	}

	public void addToCart(Product p) {
		Integer i = 1;
		if (cartItems.containsKey(p)) {
			i =  cartItems.get(p);
			i++;
		}
		cartItems.put(p, i);
	}

	public void removeFromCart(Product p) {
		if (cartItems.get(p) == 1) {
			cartItems.remove(p);
		} else {
			cartItems.put(p, cartItems.get(p) - 1);
		}
	}
	
	public boolean checkCartIfEmpty(){
		return cartItems.isEmpty();
	}
	
	public void removeAllItems(){
		cartItems = new HashMap<>();
	}

}
