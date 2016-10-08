package com.tm.model;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;
import java.util.HashSet;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;

import com.tm.dbModels.UserDAO;

public class UserManager {

	static UserManager instance = null;
	private ConcurrentHashMap<String, User> registerredUsers;

	private UserManager() {
		registerredUsers = new ConcurrentHashMap<String, User>();
		System.out.println("WE ARE CREATING THE USER !!!!!!!!!!!!!");
		HashSet<User> users = UserDAO.getInstance().getAllUsers();
		
		if (!users.isEmpty()) {
			for (User acc : users) {
				registerredUsers.put(acc.getEmail(), acc);
				System.out.println("----------------------");
				System.out.println(acc.getEmail());
			
			}
		}

	}

	public static synchronized UserManager getInstance() {
		if (instance == null) {
			System.out.println("WE HAVE ENTERED THE MANAGER FOR USERS");
			instance = new UserManager();
		}
		return instance;

	}

	public void registerUser(String firstName, String lastName, String email, String password, boolean isMale,
			Date birthDate, boolean isSubscribed,boolean isAdmin) {
		
		User user = null;
		
		if(isAdmin){
			user = new Administrator(firstName, lastName, email, password, isMale, birthDate, isSubscribed);
		}else{
			user = new Customer(firstName, lastName, email, MD5Convert(password).toString(), isMale, birthDate,
					isSubscribed);
		}
		// any issue with database will remove last user from cache
		registerredUsers.put(email, user);
		if (!UserDAO.getInstance().insertUser(user)) {
			registerredUsers.remove(email);
		}

	}

	public boolean loginValidation(String email, String password) {
		if (!registerredUsers.containsKey(email)) {
			return false;
		}

		return registerredUsers.get(email).getPassword().toString().equals(MD5Convert(password).toString());

	}

	private StringBuffer MD5Convert(String password) {
		MessageDigest md;
		StringBuffer sb = null;
		try {
			md = MessageDigest.getInstance("MD5");
			md.update(password.getBytes());
			sb = new StringBuffer();
			byte byteData[] = md.digest();
			for (int i = 0; i < byteData.length; i++) {
				sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
			}
		} catch (NoSuchAlgorithmException e) {
			System.out.println("Can't convert password");
			e.printStackTrace();
		}
		return sb;

	}

	public void updateSettings(String first_name, String last_name, String email, String password, boolean isMale,
			Date birthDate, boolean isSubscribed) {
		User user = registerredUsers.get(email);

		registerredUsers.get(email).setFirstName(first_name);
		registerredUsers.get(email).setLastName(last_name);
		registerredUsers.get(email).setEmail(email);
		registerredUsers.get(email).setPassword(MD5Convert(password).toString());
		registerredUsers.get(email).setMale(isMale);
		registerredUsers.get(email).setBirthDate(birthDate);
		registerredUsers.get(email).setSubscribed(isSubscribed);

		UserDAO.getInstance().updateUser(user);
		// UserDAO.getInstance().saveUser(user);

	}

	public String registerChecker(String firstName, String lastName, String email, String username, String password,
			String address, String phoneNumber) {
		if (!firstName.matches("^[a-zA-Z]{3,45}$")) {
			System.out.println("NE MATCHVA firstName");
			return "firstName";
		}
		if (!lastName.matches("^[a-zA-Z]{3,45}$")) {
			System.out.println("NE MATCHVA LastName");

			return "lastName";
		}
		if (!email.matches("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,6}$")) {
			System.out.println("NE MATCHVA emaila");
			return "email";
		}
		if (!username.matches("^[a-zA-Z0-9._-]{3,45}$")) {
			System.out.println("NE MATCHVA username");
			return "username";
		}
		if (!password.matches("^[a-zA-Z0-9._-]{3,30}$")) {
			System.out.println("NE MATCHVA parolata");
			return "password";
		}
		if (registerredUsers.containsKey(username)) {
			return "username2";
		}

		for (Entry<String, User> user : registerredUsers.entrySet()) {
			if (user.getValue().getEmail().equals(email)) {
				return "email2";
			}

		}

		return "register";
	}

	public User getUser(String email) {
		return registerredUsers.get(email);
	}

	public HashSet getUsersWhitSubscribed() {
		HashSet<User> users = new HashSet<>();
		for (User user : registerredUsers.values()) {
			if (user.isSubscribed()) {
				users.add(user);
			}
		}
		return users;
	}

}
