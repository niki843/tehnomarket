package com.tm.model;

import java.sql.Date;
import java.util.HashSet;


public class Administrator extends User {

	public Administrator(String firstName, String lastName, String email, String password, boolean isMale,
			Date birthDate,boolean isSubscribed) {
		super(firstName, lastName, email, password, isMale, birthDate, true, false);
	}

	public void addProduct(Product p) {
		ProductManager.getInstance().addProduct(p);
	}

	public void sendSpamMail() {
		UserManager.getInstance().getUsersWhitSubscribed();
		HashSet<User> users = UserManager.getInstance().getUsersWhitSubscribed();
		for (User user : users) {
			sendMail(user);
		}
	}

	private void sendMail(User user) {
		//todo sendMail
	}

}
