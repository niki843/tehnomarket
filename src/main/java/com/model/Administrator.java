package com.model;

import java.sql.Date;

public class Administrator extends User {

	public Administrator(String firstName, String lastName, String email, String password, boolean isMale,
			Date birthDate, boolean subscribed) {
		super(firstName, lastName, email, password, isMale, birthDate, true, subscribed);
	}

}
