package com.tm.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tm.dbModels.ProductDAO;
import com.tm.model.Cart;
import com.tm.model.Product;
import com.tm.model.ProductManager;

@Controller
public class MainController {
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "index";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "login";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "register";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "home";
	}

	@RequestMapping(value = "/contacts", method = RequestMethod.GET)
	public String contacts(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "contacts";
	}

	@RequestMapping(value = "/apple", method = RequestMethod.GET)
	public String apple(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "apple";
	}

	@RequestMapping(value = "/stores", method = RequestMethod.GET)
	public String stores(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "stores";
	}

	@RequestMapping(value = "/sales", method = RequestMethod.GET)
	public String sales(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "sales";
	}

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String cart(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		HttpSession session = request.getSession();
		Cart shoppingCart = (Cart) session.getAttribute("cart");
		Map<Product,Integer > cartProducts= shoppingCart.getCartItems();
		mod.addAttribute("cartProducts", cartProducts);
		return "cart";
	}

	@RequestMapping(value = "/brochure", method = RequestMethod.GET)
	public String brochure(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "brochure";
	}

	@RequestMapping(value = "/warranty", method = RequestMethod.GET)
	public String warranty(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "warranty";
	}

	@RequestMapping(value = "/lgWarranty", method = RequestMethod.GET)
	public String lgWarranty(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "lg-warranty";
	}

	@RequestMapping(value = "/lgWarrantyRules", method = RequestMethod.GET)
	public String lgWarrantyRules(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "lg-warranty-rules";
	}

	@RequestMapping(value = "/OnlineToShop", method = RequestMethod.GET)
	public String OnlineToShop(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "online-to-shop";
	}

	@RequestMapping(value = "/canonCashBack", method = RequestMethod.GET)
	public String canonCashBack(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "canon-cash-back";
	}

	@RequestMapping(value = "/lgClima", method = RequestMethod.GET)
	public String lgClima(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "lg-clima";
	}

	@RequestMapping(value = "/lgClimaCertificate", method = RequestMethod.GET)
	public String lgClimaCertificate(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "lg-clima-certificate";
	}

	@RequestMapping(value = "/lgClimaWarranty", method = RequestMethod.GET)
	public String lgClimaWarranty(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "lg-clima-warranty";
	}

	@RequestMapping(value = "/iphone7", method = RequestMethod.GET)
	public String iphone7(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "iphone7";
	}

	@RequestMapping(value = "/vaucher", method = RequestMethod.GET)
	public String vaucher(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "vaucher";
	}

	@RequestMapping(value = "/logitechPromo", method = RequestMethod.GET)
	public String logitechPromo(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "logitech-promo";
	}

	@RequestMapping(value = "/hotpointPromo", method = RequestMethod.GET)
	public String hotpointPromo(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "hotpoint-promo";
	}

	@RequestMapping(value = "/conditionsForMarketing", method = RequestMethod.GET)
	public String conditionsForMarketing(Model mod, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "conditions-for-online-marketing";
	}

	@RequestMapping(value = "/delivery", method = RequestMethod.GET)
	public String delivery(Model model, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "delivery";
	}

	@RequestMapping(value = "/onlinePay", method = RequestMethod.GET)
	public String onlinePay(Model model, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "online-pay";
	}

	@RequestMapping(value = "/tbiConditions", method = RequestMethod.GET)
	public String tbiConditions(Model model, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "tbi-conditions";
	}

	@RequestMapping(value = "/uniConditions", method = RequestMethod.GET)
	public String uniConditions(Model model, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "uni-conditions";
	}

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String getProfile(Model model, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "profile";
	}

	@RequestMapping(value = "/adminProfile", method = RequestMethod.GET)
	public String getAdminProfile(Model model, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "admin-profile";
	}

	@RequestMapping(value = "/addProduct", method = RequestMethod.GET)
	public String addProduct(Model model, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "admin-add-product";
	}

	@RequestMapping(value = "/addSale", method = RequestMethod.GET)
	public String addSale(Model model, HttpServletRequest request) {
		setCategoriesAndCart(request);
		return "addSale";
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
	
	@RequestMapping(value = "/deleteProduct", method = RequestMethod.GET)
	public String deleteProduct(Model model, HttpServletRequest request) {
		setCategoriesAndCart(request);
<<<<<<< HEAD
		return "admin-delete-product";
=======
		return "deleteProduct";
>>>>>>> e1312da68e55d925f2046ba80405dcccb36c2586
	}

}
