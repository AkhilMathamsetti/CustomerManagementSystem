package com.cms.in.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cms.in.entity.Customer;
import com.cms.in.service.CustomerService;

@Controller
public class CustomerController {

	private CustomerService customerService;
	
	@Autowired
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}
	
	@GetMapping
	public ModelAndView getWelcomePage() {
		return new ModelAndView("welcome");
	}
	
	/*
	 * GET and POST Methods for Customer Registration Page 
	 */
	@GetMapping(value="/saveCustomer")
	public ModelAndView getCustomerRegistrationPage() {
		ModelAndView mav = new ModelAndView("registration");
		return mav;
	}
	
	@PostMapping(value="/saveCustomer")
	public ModelAndView postCustomerRegistrationPage(@ModelAttribute Customer customer) {
		Customer savedCustomer = customerService.saveCustomer(customer);
		ModelAndView mav = new ModelAndView("registration");
		mav.addObject("customer",savedCustomer);
		return mav;
	}
	
	/*
	 * GET and POST Methods for the Single Customer Page 
	 */
	@GetMapping(value="/singleCustomer")
	public ModelAndView getSingleCustomer() {
		ModelAndView mav = new ModelAndView("singlecustomer");
		return mav;
	}
	
	@PostMapping(value="/singleCustomer")
	public ModelAndView postSingleCustomer(@RequestParam Integer cid) {
		Customer getCustomer = customerService.getCustomerById(cid);
		ModelAndView mav = new ModelAndView("singlecustomer");
		mav.addObject("customer",getCustomer);
		return mav;
	}
	
	/*
	 * GET Method for All Customers Page
	 */
	 
	@GetMapping(value="/allCustomers")
	public ModelAndView getAllCustomersPage() {
		List<Customer> customers = customerService.getAllCustomers();
		ModelAndView mav = new ModelAndView("getallcustomers");
		mav.addObject("customer",customers);
		return mav;
	}
}
