package com.niit.scart.controller;

	import org.springframework.stereotype.Controller;
    import org.springframework.ui.Model;
    import org.springframework.web.bind.annotation.RequestMapping;
    import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.scart.dao.temp.UserDAO;

	 
	@Controller
	public class HomeController {
	
		@RequestMapping("/")
		public ModelAndView homepage(@RequestParam(value="name", required=false, defaultValue="World") String name, Model model)
		{
			System.out.println("method is executed");
			ModelAndView mv=new ModelAndView("home");
			mv.addObject("name", name);
			return mv;
		}
		@RequestMapping("/login")
		public  ModelAndView showLoginpage()
		{
			ModelAndView mv=new ModelAndView("home");
			mv.addObject("msg","click login page");
			mv.addObject("showloginpage", "true");
			return mv;
		}
		@RequestMapping("/registration")
		public ModelAndView showRegisterpage()
		{
			ModelAndView mv=new ModelAndView("home");
			mv.addObject("msg","click registion page");
			mv.addObject("showregistionpage", "true");
			return mv;
		}
		@RequestMapping("/validate")
		public ModelAndView validate(@RequestParam("id") String id,@RequestParam("password") String pwd)
		{
			System.out.println("id:"+id);
			System.out.println("password:"+pwd);
			
			ModelAndView mv=new ModelAndView("home");
			
			
			UserDAO userDAO=new UserDAO();
			if(userDAO.isValidCredentials(id, pwd)==true)
			{
				mv.addObject("successMsg", "You Loggin is successfully");
			}
			else {
				mv.addObject("errorMSG", "You Loggin is faild>>>>>>!");
			}
			return mv;
		}
		
		
		
	}//home matheds


