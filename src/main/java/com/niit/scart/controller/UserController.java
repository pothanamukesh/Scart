/*package com.niit.scart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.scartbackend.dao.UserDAO;
import com.niit.scartbackend.model.User;

@Controller
public class UserController {
	
	@Autowired
	UserDAO userDAO;
	
	
	@Autowired
	User user;
    
	  AnnotationConfigApplicationContext context;

	 public UserController() {
		
	     
		   context=new AnnotationConfigApplicationContext();
		   context.scan("com.niit.scartbackend");
		   
		   context.refresh();
		   
		   userDAO=(UserDAO) context.getBean("userDAOImpl");
		   
		   user=(User)context.getBean("user");
		   
	   }
	
	@RequestMapping(value = "login")
	public String Displaylogin(Model mv) {
		mv.addAttribute("userdetails", new User());
		mv.addAttribute("UserClickedLogin", "true");
		return "home";
	}
	
	
	   public boolean validate(String id,String password)
	   {
		   if(userDAO.validate(id, password)==null)
		   {
			   System.out.println("User does not exit");
			   return false;
			}
		   else
			   {
			   System.out.println("User  exit");
			   return true;
			   }
		     
	   }
	

}
*/