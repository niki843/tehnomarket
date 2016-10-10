package com.tm.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {
	
	@RequestMapping(value = "/addNewProduct", method = RequestMethod.POST)
	public String addNewProduct(HttpServletRequest request, HttpServletResponse response) {
		
		
		return "admin-add-product";
	}

}
