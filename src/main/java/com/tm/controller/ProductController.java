package com.tm.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.collections.SynchronizedStack;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.tm.dbModels.TypeModelDAO;
import com.tm.model.Product;
import com.tm.model.ProductManager;

@Controller
@MultipartConfig
public class ProductController {

	private static final String FILE_LOCATION = "D:/ittalents/tehnomarket/src/main/webapp/static/img";
	
	@RequestMapping(value = "/addNewProduct", method = RequestMethod.POST)
	public String addNewProduct(@RequestParam("fos_user_registration_form[pricture]") MultipartFile multiPartFile ,HttpServletRequest request, HttpServletResponse response,Model mod) {
		File picture = new File(FILE_LOCATION + multiPartFile.getOriginalFilename());
		try {
			Files.copy(multiPartFile.getInputStream(), picture.toPath(), StandardCopyOption.REPLACE_EXISTING);
		} catch (IOException e) {
			System.out.println("ERROR: with geting file");
			e.printStackTrace();
		}
		System.out.println("ADDING FILE WITH NAME " + picture.getName());
		String name = request.getParameter("fos_user_registration_form[art_name]");
		String artNumb = request.getParameter("fos_user_registration_form[art_num]");
		String ean = request.getParameter("fos_user_registration_form[art_ean]");
		String info = request.getParameter("fos_user_registration_form[info]");
		String quantity = request.getParameter("fos_user_registration_form[in_stock]");
		String price = request.getParameter("fos_user_registration_form[price]");
		String upperType = request.getParameter("fos_user_registration_form[upper_type]");
		String type = request.getParameter("fos_user_registration_form[type]");
		String model = request.getParameter("fos_user_registration_form[model]");
		System.out.println("----------------------"+name+"---------------------------");
		System.out.println("----------------------"+artNumb+"---------------------------");
		System.out.println("----------------------"+ean+"---------------------------");
		System.out.println("----------------------"+info+"---------------------------");
		System.out.println("----------------------"+quantity+"---------------------------");
		System.out.println("----------------------"+price+"---------------------------");
		System.out.println("----------------------"+upperType+"---------------------------");
		System.out.println("----------------------"+type+"---------------------------");
		System.out.println("----------------------"+model+"---------------------------");
		boolean shouldReturn = false;
		boolean correctTypes = true;
		
		if(name.isEmpty()){
			request.getSession().setAttribute("emptyName", true);
			shouldReturn = true;
		}
		
		Map<String, HashMap<String,ArrayList<String>>> map = TypeModelDAO.getInstance().getModelType();
		
		if(map.containsKey(upperType)){
			if(!map.get(upperType).containsKey(type)){
				request.getSession().setAttribute("invalidTypeForUpper", true);
				shouldReturn = true;
			}
		}
		
		if(upperType.isEmpty()){
			request.getSession().setAttribute("emptyUpperType", true);
			shouldReturn = true;
		}	
		
		if(type.isEmpty()){
			request.getSession().setAttribute("emptyType", true);
			shouldReturn = true;
		}
		
		if(model.isEmpty()){
			request.getSession().setAttribute("emptyModel", true);
			shouldReturn = true;
		}

		if(map.containsKey(upperType)){
			if(map.get(upperType).containsKey(type)){
				if(!map.get(upperType).get(type).contains(model)){
					request.getSession().setAttribute("invaliModelForType", true);
					shouldReturn = true;
				}
			}
		}
		
		if(artNumb.isEmpty()){
			request.getSession().setAttribute("emptyArt", true);
			shouldReturn = true;
		}
		
		if(ean.isEmpty()){
			request.getSession().setAttribute("emptyEan", true);
			shouldReturn = true;
		}
		
		if(quantity.isEmpty()){
			request.getSession().setAttribute("emptyQuantity", true);
			shouldReturn = true;
		}
		
		if(!quantity.matches("[0-9]+")){
			request.getSession().setAttribute("invalidQuantity", true);
		}
		
		if(price.isEmpty()){
			request.getSession().setAttribute("emptyPrice", true);
			shouldReturn = true;
		}
		
		if(!price.matches("[0-9]+")){
			request.getSession().setAttribute("invalidPrice", true);
			shouldReturn = true;
		}
		
		if(shouldReturn){
			return"admin-add-product";
		}
		Double price1 = Double.parseDouble(price);
		Integer quantity1 = Integer.parseInt(quantity);
		System.out.println("CREATING PRODUCT");
		Product product = new Product(1, model, type, upperType, name, artNumb, ean, info, picture, 3, false, price1);
		System.out.println("PRODUCT CREATED");
		ProductManager.getInstance().addProduct(product);
		
		return "admin-add-product";
	}
	
	@RequestMapping(value = "/showProduct", method = RequestMethod.GET)
	public String showProduct(Model model, HttpServletRequest request) {
		int id =  (int) request.getAttribute("id");
		model.addAttribute("product",ProductManager.getInstance().getProduct(id));
		
		return "ProductInf";
		}
	
}
