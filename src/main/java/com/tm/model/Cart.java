package com.tm.model;

import java.util.HashMap;

public class Cart {
	HashMap<Product, Integer> cartItems;

	public Cart() {
		cartItems = new HashMap<>();

	}

	public HashMap getCartItems() {
		return cartItems;
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

}
