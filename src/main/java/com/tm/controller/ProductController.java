package com.tm.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.mail.Session;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.collections.SynchronizedStack;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.tm.dbModels.ProductDAO;
import com.tm.dbModels.TypeModelDAO;
import com.tm.model.Cart;
import com.tm.model.Product;
import com.tm.model.ProductManager;
import com.tm.model.User;
import com.tm.model.UserManager;
import com.tm.tools.EmailSender;

@Controller
@MultipartConfig
public class ProductController {

	private static final String FILE_LOCATION = "D:/ittalents/tehnomarket/src/main/webapp/static/img/";
	private static final String FILE_LOCATIONIVAN = "C:/Users/USER/Desktop/tehnomarket-master/src/main/webapp/static/img/";
	private static final String SUB = "We have a new sale!";

	@RequestMapping(value = "/addNewProduct", method = RequestMethod.POST)
	public String addNewProduct(@RequestParam("fos_user_registration_form[pricture]") MultipartFile multiPartFile,
			HttpServletRequest request, HttpServletResponse response, Model mod) {
		String name = request.getParameter("fos_user_registration_form[art_name]");
		String artNumb = request.getParameter("fos_user_registration_form[art_num]");
		String ean = request.getParameter("fos_user_registration_form[art_ean]");
		String firstDescription = request.getParameter("fos_user_registration_form[first_description]");
		String secondDescription = request.getParameter("fos_user_registration_form[second_description]");
		String thirdDescription = request.getParameter("fos_user_registration_form[third_description]");
		String fourthDescription = request.getParameter("fos_user_registration_form[fourth_description]");
		String quantity = request.getParameter("fos_user_registration_form[in_stock]");
		String price = request.getParameter("fos_user_registration_form[price]");
		String upperType = request.getParameter("fos_user_registration_form[upper_type]");
		String type = request.getParameter("fos_user_registration_form[type]");
		String model = request.getParameter("fos_user_registration_form[model]");
		Double price1 = null;
		Integer quantity1 = null;
		System.out.println("----------------------" + name + "---------------------------");
		System.out.println("----------------------" + artNumb + "---------------------------");
		System.out.println("----------------------" + ean + "---------------------------");
		System.out.println("----------------------" + firstDescription + "---------------------------");
		System.out.println("----------------------" + secondDescription + "---------------------------");
		System.out.println("----------------------" + thirdDescription + "---------------------------");
		System.out.println("----------------------" + fourthDescription + "---------------------------");
		System.out.println("----------------------" + quantity + "---------------------------");
		System.out.println("----------------------" + price + "---------------------------");
		System.out.println("----------------------" + upperType + "---------------------------");
		System.out.println("----------------------" + type + "---------------------------");
		System.out.println("----------------------" + model + "---------------------------");
		System.out.println("----------------------" + multiPartFile.getOriginalFilename() + "--------------------");
		boolean shouldReturn = false;

		if (name.isEmpty()) {
			request.getSession().setAttribute("emptyName", true);
			shouldReturn = true;
		} else {
			if (name.length() > 45) {
				request.getSession().setAttribute("tooLongName", true);
				shouldReturn = true;
			}
		}

		if (firstDescription.isEmpty()) {
			request.getSession().setAttribute("firstDescEmpty", true);
			shouldReturn = true;
		} else {
			if (firstDescription.length() > 45) {
				request.getSession().setAttribute("firstDescTooLong", true);
				shouldReturn = true;
			}
		}


		if (secondDescription.isEmpty()) {
			request.getSession().setAttribute("secondDescEmpty", true);
			shouldReturn = true;
		} else {
			if (secondDescription.length() > 45) {
				request.getSession().setAttribute("secondDescTooLong", true);
				shouldReturn = true;
			}
		}


		if (thirdDescription.isEmpty()) {
			request.getSession().setAttribute("thirdDescEmpty", true);
			shouldReturn = true;
		} else {
			if (thirdDescription.length() > 45) {
				request.getSession().setAttribute("thirdDescTooLong", true);
				shouldReturn = true;
			}
		}


		if (fourthDescription.isEmpty()) {
			request.getSession().setAttribute("fourthDescEmpty", true);
			shouldReturn = true;
		} else {
			if (fourthDescription.length() > 45) {
				request.getSession().setAttribute("fourthDescTooLong", true);
				shouldReturn = true;
			}
		}

		Map<String, HashMap<String, ArrayList<String>>> map = TypeModelDAO.getInstance().getModelType();

		if (map.containsKey(upperType)) {
			if (!map.get(upperType).containsKey(type)) {
				request.getSession().setAttribute("invalidTypeForUpper", true);
				shouldReturn = true;
			}
		}

		if (map.containsKey(upperType)) {
			if (map.get(upperType).containsKey(type)) {
				if (!map.get(upperType).get(type).contains(model)) {
					request.getSession().setAttribute("invaliModelForType", true);
					shouldReturn = true;
				}
			}
		}

		if (upperType.isEmpty()) {
			request.getSession().setAttribute("emptyUpperType", true);
			shouldReturn = true;
		}

		if (type.isEmpty()) {
			request.getSession().setAttribute("emptyType", true);
			shouldReturn = true;
		}

		if (model.isEmpty()) {
			request.getSession().setAttribute("emptyModel", true);
			shouldReturn = true;
		}

		if (artNumb.isEmpty()) {
			request.getSession().setAttribute("emptyArt", true);
			shouldReturn = true;
		}

		if (ean.isEmpty()) {
			request.getSession().setAttribute("emptyEan", true);
			shouldReturn = true;
		}

		if (quantity.isEmpty()) {
			request.getSession().setAttribute("emptyQuantity", true);
			shouldReturn = true;
		}

		if (!quantity.matches("[0-9]+")) {
			request.getSession().setAttribute("invalidQuantity", true);
		} else {
			quantity1 = Integer.parseInt(quantity);
			if (quantity1 <= 0) {
				request.getSession().setAttribute("negativeQuantity", true);
			}
		}

		if (price.isEmpty()) {
			request.getSession().setAttribute("emptyPrice", true);
			shouldReturn = true;
		}

		if (price.matches("[0-9]+")) {
			if (price1 <= 0) {
				request.getSession().setAttribute("negativePrice", true);
				shouldReturn = true;
			}
			price1 = Double.parseDouble(price);
		} else {
			if (price.matches("[0-9]{1,13}(\\.[0-9]*)?")) {
				price1 = Double.parseDouble(price);
				if (price1 <= 0) {
					request.getSession().setAttribute("negativePrice", true);
					shouldReturn = true;
				}
			} else {
				request.getSession().setAttribute("invalidPrice", true);
				shouldReturn = true;
			}

		}

		if (multiPartFile.getOriginalFilename().isEmpty()) {
			request.getSession().setAttribute("pictureMissing", true);
			shouldReturn = true;
		}

		if (ProductManager.getInstance().getProductByName(name) != null) {
			request.getSession().setAttribute("productWithNameExists", true);
			shouldReturn = true;
		}

		if (shouldReturn) {
			return "admin-add-product";
		}

		File picture = new File(FILE_LOCATIONIVAN + multiPartFile.getOriginalFilename());

		try {
			picture.createNewFile();
		} catch (IOException e) {
			System.out.println("PICTURE CANNOT BE CREATED");
			e.printStackTrace();
		}

		try {
			System.out.println(picture.getPath());
			System.out.println(picture.toPath());
			Files.copy(multiPartFile.getInputStream(), picture.toPath(), StandardCopyOption.REPLACE_EXISTING);

		} catch (IOException e) {
			System.out.println("ERROR: with geting file");
			e.printStackTrace();
		}

		System.out.println("CREATING PRODUCT");
		ArrayList<String> descriptions = new ArrayList();
		descriptions.add(firstDescription);
		descriptions.add(secondDescription);
		descriptions.add(thirdDescription);
		descriptions.add(fourthDescription);
		System.out.println("model: " + model);
		System.out.println("type: " + type);
		System.out.println("upperType: " + upperType);
		System.out.println("name: " + name);
		System.out.println("artNumb: " + artNumb);
		System.out.println("ean: " + ean);
		System.out.println("descriptions1: " + descriptions.get(0));
		System.out.println("picture: " + picture);
		System.out.println("quantity1: " + quantity1);
		System.out.println("price1: " + price1);
		System.out.println("descriptions2: " + descriptions.get(1));
		System.out.println("descriptions3: " + descriptions.get(2));
		Product product = new Product(model, type, upperType, name, artNumb, ean, descriptions, picture, quantity1, false,price1);
		System.out.println("PRODUCT CREATED");
		ProductManager.getInstance().addProduct(product);
		System.out.println(product.getProduct_id());
		return "admin-add-product";
	}

	@RequestMapping(value = "/showProduct", method = RequestMethod.GET)
	public String showProduct(Model model, HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		model.addAttribute("product", ProductManager.getInstance().getProductById(id));

		return "ProductInfo";
	}

	@RequestMapping(value = "/getProducts", method = RequestMethod.GET)
	public String getProducts(Model mod, HttpServletRequest request) {
		String nadtype = request.getParameter("nadtype");
		String type = request.getParameter("type");
		String model = request.getParameter("model");

		HashSet<Product> products = ProductManager.getInstance().getProductsByModel(nadtype, type, model);
		Iterator<Product> i = products.iterator();
		while (i.hasNext()) {
			Product p = i.next();
			System.out.println("---------" + p.getName() + "----------");
		}
		mod.addAttribute("products", products);
		return "products";
	}
	
	@RequestMapping(value = "/productInfo", method = RequestMethod.GET)
	public String productInfo(Model model, HttpServletRequest request){
		setCategoriesAndCart(request);
		System.out.println("GETING TO REDIRECT PART");
		String id = request.getParameter("product");
		if(!(id.matches("[0-9]+"))){
			return "index";
		}
		Integer productId = Integer.parseInt(id);
		Product p = ProductManager.getInstance().getProductById(productId);
		model.addAttribute("productP", p);
		System.out.println("Product old price is: " + p.getOldPrice());
		return "productInfo";
	}
	
	@RequestMapping(value = "/addNewSale", method = RequestMethod.POST)
	public String addNewSale(Model model, HttpServletRequest request){
		String productSalePrice = request.getParameter("fos_user_registration_form[new_price]");
		String productId = request.getParameter("fos_user_registration_form[product]");
		boolean shouldReturn = false;
		Integer productIdInt = null;
		Double productSalePriceDouble = null;
		ProductManager prodMan = ProductManager.getInstance();
		Product product = null;
		if(productId.isEmpty()){
			request.getSession().setAttribute("productEmpty", true);
			shouldReturn = true;
		}else{
			productIdInt = Integer.parseInt(productId);
			product = prodMan.getProductById(productIdInt);
			if(productSalePrice.matches("[0-9]+")){
				productSalePriceDouble = Double.parseDouble(productSalePrice);
			}else{
				if(productSalePrice.matches("/^[0-9]+(\\.[0-9]+)?$")){
					productSalePriceDouble = Double.parseDouble(productSalePrice);
					if(productSalePriceDouble <= product.getPrice()){
						request.getSession().setAttribute("priceTooLarge", true);
						shouldReturn = true;
					}
				}else{
					request.getSession().setAttribute("newPriceInvalid", true);
					shouldReturn = true;
				}
					
			}
		}
		
		if(shouldReturn){
			return "addSale";
		}
		prodMan.setProductInSale(product.getProduct_id(), productSalePriceDouble);
		request.getSession().setAttribute("saleComplete", true);
		Map<String,User> subscribedUsers = UserManager.getInstance().getAllSubscribedUsers();
		StringBuilder saleMessage = new StringBuilder("We have a sale for: ");
		saleMessage.append(product.getName());
		ExecutorService executor;
		if(subscribedUsers != null){
			saleMessage.append("\nCheck it out on our site");
			for(String s : subscribedUsers.keySet()){
				Runnable senderThread = new EmailSender(s, SUB, saleMessage.toString());
				Thread t = new Thread(senderThread);
				t.start();
			}
		}
		return "addSale";
	}
	

	@RequestMapping(value = "/addProductInCart", method = RequestMethod.GET)
	public String addProductInCart(Model mod, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Cart shoppingCart = (Cart) session.getAttribute("cart");
		int id = Integer.parseInt(request.getParameter("id").trim());
		shoppingCart.addToCart(ProductManager.getInstance().getProductById(id));
		session.setAttribute("cart", shoppingCart);
	
		return "index";
	}
	
	@RequestMapping(value = "/searchProduct", method = RequestMethod.GET)
	public String searchProduct(Model mod, HttpServletRequest request) {
		
		Map<Integer, Product> products = ProductManager.getInstance().getAllProducts();
		HashSet<Product> foundProduct = new HashSet<Product>();
		String search = request.getParameter("search").toLowerCase();
		for(Product p : products.values()){
			if(p.getName().toLowerCase().contains(search)){
				foundProduct.add(p);
			}
		}
		mod.addAttribute("searched",search);
		mod.addAttribute("foundProducts", foundProduct);
		return "searchResults";
	}
	
	@RequestMapping(value = "/removeProduct", method = RequestMethod.POST)
	public String removeProduct(Model mod, HttpServletRequest request) {
		String productId = request.getParameter("fos_user_registration_form[product]");
		if(productId.isEmpty()){
			request.getSession().setAttribute("noProduct", true);
			return "admin-delete-product";
		}
		Integer product = Integer.parseInt(productId);
		Product p = ProductManager.getInstance().getProductById(product);
		ProductManager.getInstance().removeProduct(p);
		request.getSession().setAttribute("deleteComplete", true);
		return "admin-delete-product";
	}
	
	@RequestMapping(value = "/changeQantity", method = RequestMethod.POST)
	public String changeQantity(Model mod, HttpServletRequest request) {
		String newQuantity = request.getParameter("fos_user_registration_form[new_quantity]");
		String productId = request.getParameter("fos_user_registration_form[product]");
		if(!(newQuantity.matches("[0-9]+"))){
			request.getSession().setAttribute("quantityContainsChars", true);
			return "admin-change-quantity";
		}
		if(productId.isEmpty()){
			request.getSession().setAttribute("noProduct", true);
			return "admin-change-quantity";
		}
		Integer product = Integer.parseInt(productId);
		Integer quantity = Integer.parseInt(newQuantity);
		Product p = ProductManager.getInstance().getProductById(product);
		ProductManager.getInstance().changeQuantity(p,quantity);
		request.getSession().setAttribute("quantityChangeComplete", true);
		return "admin-change-quantity";
	}
	
	public void setCategoriesAndCart(HttpServletRequest request){
		ProductDAO.getInstance().getModelFromId(-1);
		ProductDAO.getInstance().getTypeFromId(-1);
		ProductDAO.getInstance().getUperTypeFromId(-1);
		HttpSession session = request.getSession();
		Cart shoppingCart = (Cart) session.getAttribute("cart");
		if (shoppingCart == null) {
			System.out.println("Adding Cart");
			shoppingCart = new Cart();
			session.setAttribute("cart", shoppingCart);
		}
	}
	
}
