package com.manoj.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CartController {
	@GetMapping("/cart")
	public String cart() {
		return "cart";
	}
	
	@PostMapping("/cart")
	public String cart(@ModelAttribute("prodid") int prodid,BindingResult result,ModelMap model) {
		System.out.println(prodid);
		// userid
		// 
		return "cart";
	}
	
}
