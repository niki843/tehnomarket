
package com.tm.controller;

import java.io.IOException;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tm.model.Cart;
import com.tm.model.Customer;
import com.tm.model.Order;
import com.tm.model.OrderManager;
import com.tm.model.Product;
import com.tm.model.ProductManager;
import com.tm.model.User;
import com.tm.model.UserManager;
import com.tm.tools.EmailValidator;

import com.tm.tools.EmailSender;


@Controller
public class UserController {
	
	private static final String SUB = "Registration";

	private static boolean isFirst = true;
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@RequestMapping(value = "/addUser", method = RequestMethod.POST, consumes = {MediaType.APPLICATION_FORM_URLENCODED_VALUE})
	public String addUser(Model model, HttpServletRequest request) {
		String name = request.getParameter("fos_user_registration_form[first_name]");
		String lastName = request.getParameter("fos_user_registration_form[last_name]");
		String email = request.getParameter("fos_user_registration_form[email]");
		String pass = request.getParameter("fos_user_registration_form[plainPassword][first]");
		String pass2 = request.getParameter("fos_user_registration_form[plainPassword][second]");
		String sex = request.getParameter("fos_user_registration_form[sex]");
		String day = request.getParameter("fos_user_registration_form[birthday][day]");
		String month = request.getParameter("fos_user_registration_form[birthday][month]");
		String year = request.getParameter("fos_user_registration_form[birthday][year]");
		String subscribed = request.getParameter("fos_user_registration_form[subscribe]");
		String acceptedTerms = request.getParameter("fos_user_registration_form[accept_terms]");
		StringBuilder message = new StringBuilder(name);
		message.append(" You have been successfully registered in our site! \n ");
		message.append("You can now enter.");
		System.out.println(request.getLocalAddr());
		StringBuilder sb = new StringBuilder();
		sb.append(year+"-"+month+"-"+day);
		boolean isMale = false;
		boolean isSubscribed;
		boolean shouldReturn = false;
		
		System.out.println("---------------"+name+"------------------------");
		System.out.println("---------------"+lastName+"------------------------");
		System.out.println("---------------"+email+"------------------------");
		System.out.println("---------------"+pass+"------------------------");
		System.out.println("---------------"+pass2+"------------------------");
		System.out.println("---------------"+sex+"------------------------");
		System.out.println("---------------"+day+"------------------------");
		System.out.println("---------------"+month+"------------------------");
		System.out.println("---------------"+year+"------------------------");
		System.out.println("---------------"+subscribed+"------------------------");
		System.out.println("---------------"+acceptedTerms+"------------------------");
		
		
		if(name.length() > 45){
			request.getSession().setAttribute("nameTooLong", true);
			shouldReturn = true;
		}
		
		if(lastName.length() > 45){
			request.getSession().setAttribute("familyTooLong", true);
			shouldReturn = true;
		}
		
		if(email.length() > 45){
			request.getSession().setAttribute("emailTooLong", true);
			shouldReturn = true;
		}
		
		if(pass.length() > 20 || pass2.length() > 20){
			request.getSession().setAttribute("passwordTooLong", true);
			shouldReturn = true;
		}
		
		if(UserManager.getInstance().validateEmail(email)){
			request.getSession().setAttribute("emailExists", true);
			shouldReturn = true;
		}
		
		if(day.isEmpty()){
			request.getSession().setAttribute("dayUnselected", true);
			shouldReturn = true;
		}
		
		if(month.isEmpty()){
			request.getSession().setAttribute("monthUnselected", true);
			shouldReturn = true;
		}
		
		if(year.isEmpty()){
			request.getSession().setAttribute("yearUnselected", true);
			shouldReturn = true;
		}
		if(sex != null){
			if (sex.equals("1")) {
				isMale = true;
			} else {
				isMale = false;
			}
		}else{
			request.getSession().setAttribute("unchosenSex", true);
			shouldReturn = true;
		}
		
		if (subscribed != null) {
			isSubscribed = true;
		} else {
			isSubscribed = false;
		}		
		
		if (acceptedTerms == null) {
			request.getSession().setAttribute("acceptedTerms", true);
			shouldReturn = true;
		}
		
		if(name.isEmpty() || lastName.isEmpty()){
			request.getSession().setAttribute("nameEmpty", true);
			shouldReturn = true;
		}
		
		if(pass.isEmpty() || pass2.isEmpty()){
			request.getSession().setAttribute("passwordEmpty", true);
			shouldReturn = true;
		}
		
		if(!pass.equals(pass2)){
			request.getSession().setAttribute("passwordMissmatch", true);
			shouldReturn = true;
		}
		
		if(!(new EmailValidator().validate(email))){
			request.getSession().setAttribute("invalidEmail", true);
			shouldReturn = true;
		}
		
		if(shouldReturn){
			return "register";
		}

		java.sql.Date javaSqlDate = java.sql.Date.valueOf(sb.toString());
		
		if(isFirst){
			UserManager.getInstance().registerUser(name, lastName, email, pass, isMale, javaSqlDate, isSubscribed,true);
			isFirst = false;
		}else{
			UserManager.getInstance().registerUser(name, lastName, email, pass, isMale, javaSqlDate, isSubscribed,false);
		}
		
		request.getSession().setAttribute("registered", true);
		
		EmailSender mailSender = new EmailSender(email,SUB,message.toString());
		Thread t = new Thread(mailSender);
		t.start();
		
		
		return "login";
	}

	@RequestMapping(value = "/loginUser", method = RequestMethod.POST)
	public String loginUser(Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		
		logger.debug("email {}", email);
		System.out.println("----------------------"+email+"--------------------------");
		System.out.println("----------------------"+pass+"---------------------------");
		
		if (!UserManager.getInstance().loginValidation(email, pass)) {
			System.out.println("ERROR: invalid user");
			request.getSession().setAttribute("failedLog", true);
			return"login";
		} else {
			System.out.println("USER HAS BEEN FOUND AND VALIDATED");
			User user = UserManager.getInstance().getUser(email);
			if (user.isAdmin()) {
				System.out.println("MESSAGE:User is admin");
				request.getSession().setAttribute("email", user.getEmail());
				request.getSession().setAttribute("name", user.getFirstName());
				request.getSession().setAttribute("isAdmin", true);
				return "admin-profile";
			}else{
				System.out.println("MESSAGE:User is customer");
				request.getSession().setAttribute("email", user.getEmail());
				request.getSession().setAttribute("name", user.getFirstName());
				request.getSession().setAttribute("isAdmin", false);
				return "profile";
			}
		}

	}
	
	@RequestMapping(value = "/logOut", method = RequestMethod.GET)
	public String logOut(HttpServletRequest request){
		request.getSession().invalidate();
		return "index"; 
	}
	
	@RequestMapping(value = "/makeOrder", method = RequestMethod.GET)
	public String makeOrder(HttpServletRequest request){
		synchronized (this) {
			HttpSession ses = request.getSession();
			String status = "Requested";
			String email = (String)ses.getAttribute("email");
			boolean shouldReturn = false;
			if(email == null){
				ses.setAttribute("notLogedIn", true);
				return "login";
			}
			Cart cart =(Cart) ses.getAttribute("cart");
			if(cart.checkCartIfEmpty()){
				ses.setAttribute("cartIsEmpty", true);
				return "cart";
			}
			User user = UserManager.getInstance().getUser(email);
			if(user.isAdmin()){
				ses.setAttribute("adminOrdered", true);
				cart.removeAllItems();
				return "cart";
			}
			Map<Product, Integer> products = cart.getCartItems();
			for(Product p : products.keySet()){
				if(p.getQuantity() < products.get(p)){
					ses.setAttribute("notEnoughProducts", true);
					ses.setAttribute("nameForProduct", p.getName());
					return "cart";
				}
			}
			double totalPrice = 0;
			for(Product p : products.keySet()){
				for(int i = 0; i < products.get(p); i++){
					totalPrice += p.getPrice();
				}
			}
			java.util.Date utilDate = new Date();
			java.sql.Date date = new java.sql.Date(utilDate.getTime());
			Order order = new Order(user.getUserId(), totalPrice, date, status);
			for(Product p : products.keySet()){
				System.out.println("Adding product " + p.getName() + " \nWith quantity " +products.get(p));
				order.addProduct(p, products.get(p));
			}
			OrderManager.getInstance().addOrder(order);
			ProductManager.getInstance().sellProducts(products);
			cart.removeAllItems();
			return "redirect:index"; 
		}
	}

	@RequestMapping(value = "/orders", method = RequestMethod.GET)
	public String orderList(Model model, HttpServletRequest request) {
		String email = (String) request.getSession().getAttribute("email");
		System.out.println("email: " + email);
		Customer customer = (Customer) UserManager.getInstance().getUser(email);
		model.addAttribute("customer", customer);
		return "profile-my-orders";
	}
	
	
}