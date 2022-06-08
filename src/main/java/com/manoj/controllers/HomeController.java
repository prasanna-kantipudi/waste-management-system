package com.manoj.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import com.mouli.beans.ActiveUser;
import com.mouli.beans.User;
import com.mouli.repos.ActiveUserRepo;
import com.mouli.repos.UserRepository;

@Controller
public class HomeController {
	@Autowired
	private ActiveUserRepo activeuserrepo;
	@Autowired
	private UserRepository userrepo;
	
	@GetMapping("/")
	public String getHome(Model model) {
		return "index";
	}
}
