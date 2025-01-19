package com.example.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpRequest;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.model.Cart;
import com.example.demo.model.User;
import com.example.demo.service.CartService;
import com.example.demo.service.CategoryService;
import com.example.demo.service.ProductService;
import com.example.demo.service.UserService;

import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

import org.apache.logging.log4j.CloseableThreadContext.Instance;
import org.json.JSONObject;
import com.razorpay.*;

@Controller
@MultipartConfig
public class UserController {

	@Autowired
	UserService userService;

	@Autowired
	CategoryService categoryService;

	@Autowired
	ProductService productService;

	@Autowired
	CartService cartService;

	@RequestMapping("/payment")
	public void payment(HttpServletRequest request, HttpServletResponse response) {
		double amt = Double.parseDouble(request.getParameter("amt"));
		JSONObject orderRequest = new JSONObject();
		orderRequest.put("amount", amt * 100); // amount in the smallest currency unit
		orderRequest.put("currency", "INR");
		orderRequest.put("receipt", "order_rcptid_11");
		RazorpayClient razorpay;
		try {
			razorpay = new RazorpayClient("rzp_test_8jMQMnQuUWDUzy", "gxZyb7cFucHBtLZfd25H82d5");
			Order order = razorpay.orders.create(orderRequest);
			PrintWriter pw = response.getWriter();

			pw.append(order.toString());

		} catch (RazorpayException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("/index")
	public String index1(Model model) {

		model.addAttribute("products", productService.viewallproduct());
		return "index";
	}

	@RequestMapping("/register")
	public String contact(Model model) {
		model.addAttribute("user", new User());

		return "register";
	}

	@RequestMapping(value = "/reg", method = RequestMethod.POST)
	public String registration(@ModelAttribute("user") User u, Model model) {

		userService.addorupdateuser(u);
		model.addAttribute("msg", "Registration Successfully");
		model.addAttribute("user", new User());
		return "redirect:/register";

	}

	/*-----------Cart Start-----------*/

	@RequestMapping("/shopping-cart")
	public String shoppingcart(HttpSession session, Model model) {

		Integer userid = (Integer) session.getAttribute("userid");

		if (userid == null) {
			model.addAttribute("user", new User());
			model.addAttribute("err", "Please Login first!!!");

			return "redirect:/login";
		}

		else {

			User user = userService.userbyid(userid);
			List<Cart> cartitems = cartService.cartbyuser(userid);

			double sum = 0;

			for (Cart c : cartService.cartbyuser(userid)) {
				double stotal = c.getProduct().getPrice() * c.getQty();
				sum = sum + stotal;
			}

			model.addAttribute("cartdata", cartitems);
			model.addAttribute("total", sum);
		}

		return "shopping-cart";
	}

	@RequestMapping("/addcart")
	public String addorupdatecart(@RequestParam("pid") int pid, Model model, HttpSession session) {

		Integer userid = (Integer) session.getAttribute("userid");

		if (userid == null) {
			model.addAttribute("user", new User());
			model.addAttribute("err", "Please Login First !!!!");

			return "redirect:/login";
		}

		else {

			// System.out.println("PRODUCT ID : " + pid + " USER ID : " + userid);

			Cart c = new Cart();
			c.setProduct(productService.productbyid(pid));
			c.setUser(userService.userbyid(userid));
			c.setQty(1);
			cartService.addorupdatecart(c);

			System.out.println(pid);
			System.out.println(userid);
			return "redirect:/shopping-cart";
		}

	}

	@RequestMapping("/deletecart")
	public String cartDelete(@RequestParam("did") int id, Model model) {

		cartService.deletecart(id);

		return "redirect:/shopping-cart";
	}

	/*----------Cart End----------*/

	@RequestMapping("/product-page")
	public String productpage(Model model) {

		model.addAttribute("products", productService.viewallproduct());
		return "product-page";
	}

	@RequestMapping("/check-out")
	public String checkout(HttpSession session, Model model) {

		Integer userid = (Integer) session.getAttribute("userid");

		if (userid == null) {

			model.addAttribute("err", "Please Login First !!");
			model.addAttribute("user", new User());

			return "redirect:/login";

		}

		return "check-out";
	}

	@RequestMapping("/categories")
	public String categories(Model model) {

		model.addAttribute("categories", categoryService.viewallcategory());

		return "categories";
	}

	@RequestMapping("/login")
	public String login(Model model) {
		model.addAttribute("user", new User());

		return "login";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/log")
	public String loginuser(Model model, @ModelAttribute("user") User u, HttpSession session) {

		User user = userService.userlogin(u.getEmail(), u.getPass());
		model.addAttribute("user", new User());
		if (user == null) {
			model.addAttribute("err", "Invalid Email and Password");
			return "login";
		} else {
			session.setAttribute("userid", user.getId());
			return "redirect:/index";
		}

	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();

		return "redirect:/index";
	}

	@RequestMapping("/userprofile")
	public String userprofile(Model model, HttpSession session) {

		Integer userid = (Integer) session.getAttribute("userid");

		if (userid != null) {

			User u = userService.userbyid(userid);

			if (u != null) {

				model.addAttribute("fname", u.getFname());
				model.addAttribute("lname", u.getLname());
				model.addAttribute("email", u.getEmail());
				model.addAttribute("phone", u.getPhone());

				return "userprofile";

			}

		}
		return "redirect:/login";

	}

	public String viewuserprofile(Model model, @RequestParam("id") int id) {

		model.addAttribute("user", userService.userbyid(id));
		model.addAttribute("user", userService.viewalluser());

		return "redirect:/userprofile";

	}

	@RequestMapping("/update")
	public String updateprofile(Model model) {

		model.addAttribute("user", userService.viewalluser());
		/*
		 * User u = userService.userbyid(id); if(u != null) {
		 * model.addAttribute("fname", u.getFname()); model.addAttribute("lname",
		 * u.getLname()); model.addAttribute("email", u.getEmail());
		 * model.addAttribute("phone", u.getPhone()); }
		 */

		return "userprofile";

	}

}
