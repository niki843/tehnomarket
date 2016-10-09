
package com.tm.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tm.model.UserManager;
import com.tm.tools.EmailValidator;


@Controller
public class UserController {

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
		StringBuilder sb = new StringBuilder();
		sb.append(year+"-"+month+"-"+day);
		boolean isMale = false;
		boolean isSubscribed;
		boolean hasAcceptedTerms;
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
			if (sex == "1") {
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
		
		if (acceptedTerms != null) {
			hasAcceptedTerms = true;
		} else {
			hasAcceptedTerms = false;
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
		
		return "login";
	}

	@RequestMapping(value = "/loginUser", method = RequestMethod.POST)
	public String loginUser(Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
//		String email = request.getParameter("email");
//		String pass = request.getParameter("password");
//		logger.debug("email {}", email);
//
//		if (!UserManager.getInstance().loginValidation(email, pass)) {
//			System.out.println("ne sushtestvuva");
//			response.getWriter().append("ERROR");
//		} else {
//			if (UserManager.getInstance().getUser(email).isAdmin()) {
//				System.out.println("Admin");
//				return "administrator";
//			}
//		}

		return "profile";

	}
}