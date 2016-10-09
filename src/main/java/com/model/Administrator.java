package com.model;

import java.sql.Date;
import java.util.HashSet;
import java.util.Properties;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.websocket.Session;

import org.jboss.logging.Message;

import com.model.UserManager;

public class Administrator extends User {

	public Administrator(String firstName, String lastName, String email, String password, boolean isMale,
			Date birthDate, boolean subscribed) {
		super(firstName, lastName, email, password, isMale, birthDate, true, subscribed);

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
