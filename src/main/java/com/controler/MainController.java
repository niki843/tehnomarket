package com.controler;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String homepageRedirect(Model mod) {
		System.out.println("-------------");
		return"index";
	}
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String LoginRedirect(Model mod) {
		return"login";
	}
	
}