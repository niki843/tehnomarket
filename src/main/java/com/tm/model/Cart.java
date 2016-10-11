package com.tm.model;

import java.util.HashMap;

public class Cart {
	HashMap<Product, Integer> cartItems;
	int count = 1;

	public Cart() {
		cartItems = new HashMap<>();

	}

	public HashMap getCartItems() {
		return cartItems;
	}

	public void addToCart(Product p) {
		if (cartItems.containsKey(p)) {
			count = cartItems.get(p) + 1;
		}
		cartItems.put(p, count);
	}

	public void removeFromCart(Product p) {
		if (cartItems.get(p) == 1) {
			cartItems.remove(p);
		} else {
			cartItems.put(p, cartItems.get(p) - 1);
		}
	}

}
