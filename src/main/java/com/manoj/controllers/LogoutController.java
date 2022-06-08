package com.manoj.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LogoutController {
	@GetMapping("/logout")
	public String logout(ModelMap model,HttpSession session) {
		session.removeAttribute("username");
		
		return "index";
	}
}
