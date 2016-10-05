package com.controler;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LogInRegController {
	
	@RequestMapping(value="/logInButton", method=RequestMethod.GET)
	public void logIn(@ModelAttribute("username") String username,@ModelAttribute("password") String password){
		//TODO add what to do with username and password
		
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public void register(@ModelAttribute("name") String name ,@ModelAttribute("surname") String surname,
						 @ModelAttribute("email") String email,@ModelAttribute("password") String password,
						 @ModelAttribute("passwordSec") String secondPassword,@ModelAttribute("gender") String gender,
						 @ModelAttribute("birthDay") Integer dayOfBirth,@ModelAttribute("birthMonth") Integer mothOfBirth,
						 @ModelAttribute("birthYear") Integer yearOfBirth,@ModelAttribute("subscribed") Boolean isSubscribed){
		
		//TODO add the new user
		
	}

}
