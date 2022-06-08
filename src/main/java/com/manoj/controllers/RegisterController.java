package com.manoj.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.manoj.beans.User;
import com.manoj.repos.UserRepository;

@Controller
public class RegisterController {
	@Autowired
	private UserRepository userrepo;
	
	@GetMapping("/register")
	public String register() {
		// System.out.println("In register");
		return "register";
	}
	
	
	
	@PostMapping("/register")
	public String registerUser(@ModelAttribute("newuser") User user,BindingResult result,ModelMap model) {
		if(result.hasErrors()) {
			model.addAttribute("msg","Please try again !! Something went wrong");
			return "register";
		}
		User checkuser = userrepo.findByUsername(user.getUsername());
		if(checkuser != null) {
			model.addAttribute("msg","User already exists with the following username");
			return "register";
		}
		userrepo.save(user);
		model.addAttribute("msg","Registered Successfully");
		model.addAttribute("user",user);
		return "index";
	}
	
}
