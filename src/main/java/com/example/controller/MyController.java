package com.example.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyController {

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model mod) {
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model mod) {
		return "login";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model mod) {
		return "register";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model mod) {
		return "home";
	}

	@RequestMapping(value = "/contacts", method = RequestMethod.GET)
	public String contacts(Model mod) {
		return "contacts";
	}
	
	@RequestMapping(value = "/apple", method = RequestMethod.GET)
	public String apple(Model mod) {
		return "apple";
	}	
	
	@RequestMapping(value = "/stores", method = RequestMethod.GET)
	public String stores(Model mod) {
		return "stores";
	}	
	
	@RequestMapping(value = "/sales", method = RequestMethod.GET)
	public String sales(Model mod) {
		return "sales";
	}
	
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String cart(Model mod) {
		return "cart";
	}
	
	@RequestMapping(value = "/brochure", method = RequestMethod.GET)
	public String brochure(Model mod) {
		return "brochure";
	}
	
	@RequestMapping(value = "/warranty", method = RequestMethod.GET)
	public String warranty(Model mod) {
		return "warranty";
	}
	
	@RequestMapping(value = "/lgWarranty", method = RequestMethod.GET)
	public String lgWarranty(Model mod) {
		return "lg-warranty";
	}
	
	@RequestMapping(value = "/lgWarrantyRules", method = RequestMethod.GET)
	public String lgWarrantyRules(Model mod) {
		return "lg-warranty-rules";
	}
	
	@RequestMapping(value = "/OnlineToShop", method = RequestMethod.GET)
	public String OnlineToShop(Model mod) {
		return "online-to-shop";
	}
	
	@RequestMapping(value = "/canonCashBack", method = RequestMethod.GET)
	public String canonCashBack(Model mod) {
		return "canon-cash-back";
	}
	
	@RequestMapping(value = "/lgClima", method = RequestMethod.GET)
	public String lgClima(Model mod) {
		return "lg-clima";
	}
	
	@RequestMapping(value = "/lgClimaCertificate", method = RequestMethod.GET)
	public String lgClimaCertificate(Model mod) {
		return "lg-clima-certificate";
	}
	
	@RequestMapping(value = "/lgClimaWarranty", method = RequestMethod.GET)
	public String lgClimaWarranty(Model mod) {
		return "lg-clima-warranty";
	}
	
	@RequestMapping(value = "/iphone7", method = RequestMethod.GET)
	public String iphone7(Model mod) {
		return "iphone7";
	}
	
	@RequestMapping(value = "/vaucher", method = RequestMethod.GET)
	public String vaucher(Model mod) {
		return "vaucher";
	}
	
	@RequestMapping(value = "/logitechPromo", method = RequestMethod.GET)
	public String logitechPromo(Model mod) {
		return "logitech-promo";
	}
	
	@RequestMapping(value = "/hotpointPromo", method = RequestMethod.GET)
	public String hotpointPromo(Model mod) {
		return "hotpoint-promo";
	}
	
	@RequestMapping(value = "/conditionsForMarketing", method = RequestMethod.GET)
	public String conditionsForMarketing(Model mod) {
		return "conditions-for-online-marketing";
	}
	
	@RequestMapping(value= "/delivery", method = RequestMethod.GET)
	public String delivery(Model model){
		return "delivery";
	}

	@RequestMapping(value = "/mindex", method = RequestMethod.GET)
	public String sayBye(Model viewModel) {
		// talk with model
		Product product = new Product("Kiselo zele", 50);

		List<Product> products = new ArrayList<Product>();
		products.add(product);
		products.add(new Product("Kisela krastavica", 13));
		products.add(new Product("Kisel portokal", 83));
		products.add(new Product("Kisel limon", 73));
		products.add(new Product("Kisel greipfrut", 13));
		products.add(new Product("Kisel banan", 43));
		products.add(new Product("Kiselo mlqko", 33));

		viewModel.addAttribute("Text", "Bye");
		viewModel.addAttribute("products", products);

		viewModel.addAttribute(new Product("", 0));

		return "listproducts";
	}

	@RequestMapping(value = "/mindex", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute Product product) {
		// add to DAO
		System.out.println(product);

		return "listproducts";
	}

}
