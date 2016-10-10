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
		String name = request.getParameter("fos_user_registration_form[art_name]");
		String artNumb = request.getParameter("fos_user_registration_form[art_num]");
		String ean = request.getParameter("fos_user_registration_form[art_ean]");
		String info = request.getParameter("fos_user_registration_form[info]");
		String quantityInStock = request.getParameter("fos_user_registration_form[in_stock]");
		String price = request.getParameter("fos_user_registration_form[price]");
		String pic = request.getParameter("fos_user_registration_form[pricture]");
		String upperType = request.getParameter("fos_user_registration_form[upper_type]");
		String type = request.getParameter("fos_user_registration_form[type]");
		String mode = request.getParameter("fos_user_registration_form[model]");
		
		System.out.println("----------------------"+name+"---------------------------");
		System.out.println("----------------------"+artNumb+"---------------------------");
		System.out.println("----------------------"+ean+"---------------------------");
		System.out.println("----------------------"+info+"---------------------------");
		System.out.println("----------------------"+quantityInStock+"---------------------------");
		System.out.println("----------------------"+price+"---------------------------");
		System.out.println("----------------------"+pic+"---------------------------");
		System.out.println("----------------------"+upperType+"---------------------------");
		System.out.println("----------------------"+type+"---------------------------");
		System.out.println("----------------------"+mode+"---------------------------");
		
		return "admin-add-product";
	}

}
