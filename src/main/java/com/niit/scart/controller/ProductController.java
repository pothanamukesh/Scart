package com.niit.scart.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.scartbackend.dao.CategoryDAO;
import com.niit.scartbackend.dao.ProductDAO;
import com.niit.scartbackend.dao.SupplierDAO;
import com.niit.scartbackend.model.Product;

@Controller
public class ProductController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	Product product;
	@Autowired
	CategoryDAO categoryDAO;
	@Autowired
	SupplierDAO supplierDAO;
	private Path path;

	@RequestMapping(value="editproduct")
	public String editproduct(@ModelAttribute("product") Product product,HttpServletRequest request,Model m){
		productDAO.saveOrUpdate(product);
		MultipartFile file=product.getImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\resources\\images\\"+product.getId()+".jpg");
        if (file != null && !file.isEmpty()) {
            try {
            	System.out.println("Image Saving Start");
            	file.transferTo(new File(path.toString()));
            	System.out.println("Image Saved");
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("Error");
                throw new RuntimeException("item image saving failed.", e);
            }
        }
		return "redirect:/Product";
	}
@RequestMapping(value ="Product" )
	public ModelAndView ProductPage(@ModelAttribute("product") Product product,BindingResult result) {
		ModelAndView mv= new ModelAndView("/Admin");
		//mv.addObject("product", new Product());
		mv.addObject("ProductList", productDAO.list());
		mv.addObject("CategoryList",categoryDAO.list());
		mv.addObject("SupplierList",supplierDAO.list());
		mv.addObject("showProductpage", "true");
		return mv;
	}
@RequestMapping(value ={"addeditproduct/{id}"} )
public String ProductPageedit(@PathVariable("id") int id,RedirectAttributes attributes) {
	attributes.addFlashAttribute("product", this.productDAO.get(id));
	return "redirect:/Product";}
@RequestMapping(value ={"adddeleteproduct/{id}"} )
public String ProductPagedelete(@ModelAttribute("product") Product product,Model m) {
	//attributes.addFlashAttribute("product", this.productDAO.get(id));
	productDAO.delete(product);
	return "redirect:/Product";
}

}
