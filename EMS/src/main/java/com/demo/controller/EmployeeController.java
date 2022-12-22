package com.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.Employee;
import com.demo.repository.EmployeeRepository;



@Controller
public class EmployeeController {
	@Autowired
	EmployeeRepository rep;
	


	@GetMapping("/add")
	public ModelAndView addEmployee(Employee employee) {
		rep.save(employee);
		return new ModelAndView("/employeedetails");
		
	}
	@GetMapping("/employeedetails")
	public ModelAndView viewDetails(Employee employee) {
		List<Employee> employees=rep.findAll();
		ModelAndView mv =new ModelAndView();
		mv.setViewName("display.jsp");
		mv.addObject("employees",employees);
		return mv;
		
	}
	@GetMapping("/edit")
	public String editDetails(HttpServletRequest request) {		
		int id =Integer.parseInt(request.getParameter("id"));
		Employee employee = rep.getReferenceById(id);
		request.setAttribute("employee",employee);	
		return "update.jsp";
	}
	@GetMapping("/update")
	public ModelAndView updateDetails(Employee employee) {
		Employee data =rep.getReferenceById(employee.getId());
		rep.delete(data);
		rep.save(employee);

		return new ModelAndView("/employeedetails");
	}
	@GetMapping("/delete")
	public ModelAndView deleteDetails(Employee employee) {
		Employee data =rep.getReferenceById(employee.getId());
		rep.delete(data);
		return new ModelAndView("/employeedetails");
	}
}
