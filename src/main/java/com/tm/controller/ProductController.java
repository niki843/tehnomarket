package com.tm.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
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

	private static final String FILE_LOCATION = "D:/ittalents/tehnomarket/src/main/webapp/static/img/";
	private static final String FILE_LOCATIONIVAN = "img/";

	@RequestMapping(value = "/addNewProduct", method = RequestMethod.POST)
	public String addNewProduct(@RequestParam("fos_user_registration_form[pricture]") MultipartFile multiPartFile,
			HttpServletRequest request, HttpServletResponse response, Model mod) {
		String name = request.getParameter("fos_user_registration_form[art_name]");
		String artNumb = request.getParameter("fos_user_registration_form[art_num]");
		String ean = request.getParameter("fos_user_registration_form[art_ean]");
		String info = request.getParameter("fos_user_registration_form[info]");
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
		System.out.println("----------------------" + info + "---------------------------");
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

		if (info.isEmpty()) {
			request.getSession().setAttribute("infoEmpty", true);
			shouldReturn = true;
		} else {
			if (info.length() > 100) {
				request.getSession().setAttribute("infoTooLong", true);
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
			price1 = Double.parseDouble(price);
		} else {
			if (price.matches("/^[0-9]+(\\.[0-9]+)?$")) {
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

		File picture = new File(FILE_LOCATION + multiPartFile.getOriginalFilename());

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
		Product product = new Product(model, type, upperType, name, artNumb, ean, info, picture, quantity1, false,
				price1);
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

}
