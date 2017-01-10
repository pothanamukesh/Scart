package com.niit.scart.controller;

import org.springframework.beans.factory.annotation.Autowired;

//import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.scartbackend.dao.UserDAO;

@Controller
public class HomeController {

	@Autowired
	private UserDAO userDAO;

	@RequestMapping("/")
	public ModelAndView homepage() {
		System.out.println("method is executed");
		ModelAndView mv = new ModelAndView("home");
		
		return mv;
	}

	@RequestMapping("/login")
	public ModelAndView showLoginpage() {
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("msg", "click login page");
		mv.addObject("UserClickedLogin", "true");
		return mv;
	}

	@RequestMapping("/registration")
	public ModelAndView showRegisterpage() {
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("msg", "click registion page");
		mv.addObject("showregistionpage", "true");
		return mv;
	}

	@RequestMapping("/validate")
	public ModelAndView validate(@RequestParam("id") String id, @RequestParam("password") String password) {
		System.out.println("id:" + id);
		System.out.println("password:" + password);
		ModelAndView mv = new ModelAndView("home");

		if (userDAO.validate(id, password) != null) {
			mv.addObject("successMsg", "You Loggin is successfully");
		} else {
			mv.addObject("errorMSG", "You Loggin is faild>>>>>>!");
		}
		return mv;
	}

}// home matheds
