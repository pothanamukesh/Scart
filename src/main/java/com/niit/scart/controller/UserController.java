package com.niit.scart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.h2.engine.Session;
import org.hibernate.loader.custom.Return;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.scartbackend.dao.CategoryDAO;
import com.niit.scartbackend.dao.SupplierDAO;
import com.niit.scartbackend.dao.UserDAO;
import com.niit.scartbackend.model.Category;
import com.niit.scartbackend.model.Supplier;
import com.niit.scartbackend.model.User;

@Controller
public class UserController {
	// String role="Role_Admin";
	public static Logger log = LoggerFactory.getLogger(UserController.class);
	@Autowired
	User user;
	@Autowired
	UserDAO userDAO;
	@Autowired
	Supplier supplier;
	@Autowired
	SupplierDAO supplierDAO;
	@Autowired
	Category category;
	@Autowired
	CategoryDAO categoryDAO;

	HttpSession session;

/*	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public ModelAndView validate(@RequestParam(value = "i") int id,
			@RequestParam(value = "password") String password) {
		log.debug("staring of validate Method............V..........!");
		ModelAndView mv = new ModelAndView("/home");
		user = userDAO.validate(id, password);
		if (user != null) {
			log.debug("valide credential.........VC...........!");
			session.setAttribute("loggedInUser", user.getUsername());
			session.setAttribute("loggedInUserId", user.getId());
			session.setAttribute("user", user);
			if (user.getRole().equals("Role_Admin")) {
				log.debug("Loggied in Admin.......A.......!");
				mv.addObject("isAdmin", "true");
				session.setAttribute("Supplier", supplier);
				session.setAttribute("SupplierList", supplierDAO.list());
				session.setAttribute("Category", category);
				session.setAttribute("CategoryList", categoryDAO.list());
				log.debug("end of the Login Admin...........!");
			} else {
				log.debug("Logged to the User.............!");
				mv.addObject("isAdmin", "false");
				// cart detals are add
			}

		} else {
			log.debug("invalid Credential.........................!");
			mv.addObject("invalidCredential", "true");
			mv.addObject("errorMessage", "invalid Credential");

		}
		log.debug("Ending of the Method Validate");
		return mv;

	}
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request,HttpServletResponse response)
	{
		log.debug("Starting of  the Method  logout.....................!");
		ModelAndView mv=new ModelAndView("/home");
		session.invalidate();
		session=request.getSession(true);
		session.setAttribute("Category", category);
		session.setAttribute("CategoryList", categoryDAO.list());
		mv.addObject("logoutmsg", "You Successfully Logout.......................!");
		mv.addObject("loggedout","true");
		return mv;
	}*/
	@RequestMapping(value="adduser")
	public String addsupplier(@ModelAttribute("user") User  user, Model m,RedirectAttributes attributes)
	{
        user.setRole("ROLE_USER");
       user.setEnabled(true);
        if(userDAO.saveOrUpdate(user)==true){
        	attributes.addFlashAttribute("registered", "You Have Successfully Registered with us Thank You...");
        }
        else{
        	attributes.addFlashAttribute("registered","Registration failed Please try again");
        }
		return "redirect:/registration";
	}

}
