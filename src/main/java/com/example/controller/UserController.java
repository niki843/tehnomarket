
package com.example.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Customer;
import com.model.User;
import com.model.UserManager;

@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@RequestMapping(value = "/addUser", method = RequestMethod.POST, consumes = {MediaType.APPLICATION_FORM_URLENCODED_VALUE})
	public String addUser(Model model, HttpServletRequest request) {
		String name = request.getParameter("fos_user_registration_form[first_name]");
		String lastName = request.getParameter("fos_user_registration_form_last_name");
		String email = request.getParameter("fos_user_registration_form_email");
		String pass = request.getParameter("fos_user_registration_form_plainPassword_first");
		String pass2 = request.getParameter("fos_user_registration_form_plainPassword_second");
		String myRadio = request.getParameter("fos_user_registration_form_sex_0");
		boolean isMale;
		if ("1".equals(myRadio)) {
			isMale = true;
		} else {
			isMale = false;
		}

		System.out.println(isMale);
		System.out.println(request.getParameter("fos_user_registration_form[birthday][day]"));
		String[] params = request.getParameterMap().get("fos_user_registration_form[birthday]");
	
		System.out.println(params);
		
		
		return "register";

	}

	@RequestMapping(value = "/loginUser", method = RequestMethod.POST)
	public String loginUser(Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		logger.debug("email {}", email);

		if (!UserManager.getInstance().loginValidation(email, pass)) {
			response.getWriter().append("ERROR");
		} else {
			if (UserManager.getInstance().getUser(email).isAdmin()) {
				System.out.println("Admin");
				return "administrator";
			}
		}

		return "login";

	}
}