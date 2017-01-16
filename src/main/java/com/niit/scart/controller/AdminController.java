package com.niit.scart.controller;

import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.scartbackend.dao.CategoryDAO;
import com.niit.scartbackend.dao.ProductDAO;
import com.niit.scartbackend.dao.SupplierDAO;
import com.niit.scartbackend.model.Category;
import com.niit.scartbackend.model.Product;
import com.niit.scartbackend.model.Supplier;
import com.niit.scartbackend.model.User;

@Controller
public class AdminController {
	private static Logger log = LoggerFactory.getLogger(AdminController.class);
	/*@Autowired
	private Product product;
	@Autowired
	private Supplier supplier;
	@Autowired
	private Category category; 
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private SupplierDAO supplierDAO;
	@Autowired
	private CategoryDAO categoryDAO;*/
	
	@RequestMapping(value ="Admin" )
	public ModelAndView SupplierPage() {
		ModelAndView mv= new ModelAndView("/home");
		mv.addObject("showadminPage", "true");
		return mv;
}
	
	
	
	

}
