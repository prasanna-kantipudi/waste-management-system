package com.manoj.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.querydsl.QPageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.manoj.beans.Product;
import com.manoj.beans.User;
import com.manoj.repos.ProdRepo;

@Controller
public class ProdController {
	@Autowired
	private ProdRepo prodrepo;
	
	
	@GetMapping("/products")
	public String products(ModelMap model,HttpSession session) {
		//long count = prodrepo.count();
		Iterable<Product> prodsiter = prodrepo.findAll();
		
	    List<Product> products = new ArrayList<Product>();
	    
	    for(Product product:prodsiter) {
	        products.add(product);
	    }
	    
	    model.addAttribute("products",products);
		return "products";
	}
	
	@PostMapping("/products/{id}")
	public String productDetail(@PathVariable("id") int prodid,Model model,HttpSession session) {
		Product product = prodrepo.findProductByProdid(prodid);
		model.addAttribute("product", product);
		// System.out.println(product.getName());
		return "prodDetail";
	}
}
