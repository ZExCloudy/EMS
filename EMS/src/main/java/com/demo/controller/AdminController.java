package com.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.Admin;
import com.demo.repository.AdminRepository;



@Controller
public class AdminController {
	
	@Autowired
	AdminRepository repo;
	
	@GetMapping("/")
	public String homePage() {
		return "login.jsp";
		
	}
	
	@GetMapping("/signup")
	public ModelAndView signup(Admin admin) {
		repo.save(admin);
		return new ModelAndView("login.jsp");
	}
	
	
	@GetMapping("/login")
	public ModelAndView login(@RequestParam("username") String username,@RequestParam("password") String password, HttpSession session) {
	
		List<Admin> users=repo.findByUsernameAndPassword(username, password);
		if(users.isEmpty()) {
			return new ModelAndView("login.jsp");
		}else {
			session.setAttribute("username", username);
			return new ModelAndView("/employeedetails");
		}
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		if (session != null) {
			session.invalidate();
		}
		return "login.jsp";
	}
	
	

}


