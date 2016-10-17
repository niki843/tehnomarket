package com.tm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ErrorHandlerController {

	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public String getErrorPage(Model mod, HttpServletRequest request) {
		return "error";
	}
	
}
