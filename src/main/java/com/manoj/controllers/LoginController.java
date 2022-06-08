package com.manoj.controllers;

import java.util.Collections;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.manoj.beans.ActiveUser;
import com.manoj.beans.User;
import com.manoj.repos.ActiveUserRepo;
import com.manoj.repos.UserRepository;

@Controller
public class LoginController {
	@Autowired
	private UserRepository userrep;
	
	@Autowired
	private ActiveUserRepo activeuserrepo;

	@GetMapping("/login")
	public String login() {
		//System.out.println("In login");
		return "login";
	}
	
	@PostMapping("/login")
	public String loginUser(@ModelAttribute("username") String username,@ModelAttribute("password") String password,ModelMap model,HttpServletRequest request) {
		// if(username.equals("volunteer") && password.)
		User user = userrep.findByUsername(username);
		
		//System.out.println(user.getUsername());
		
		if(user == null) {
			model.addAttribute("msg","No user found with the provided username. Please register !");
			return "register";
		}
		
		if(!user.getPassword().equals(password)) {
			model.addAttribute("msg","Invalid Password! Please provide a correct password!");
			// System.out.println(user.getPassword() == password);
			return "login";
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("username", user.getUsername());
		
//		ActiveUser au = new ActiveUser();
//		au.setUserid(user.getId());
//		activeuserrepo.save(au);
		
		model.addAttribute("user",user);
		// session.setA																																															ttribute("user", user);
		return "index";
	}
}
