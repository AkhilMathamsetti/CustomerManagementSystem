package com.cms.in.service;

import java.util.List;

import com.cms.in.entity.Customer;

public interface CustomerService {

	public Customer saveCustomer(Customer customer);
	public Customer getCustomerById(Integer cid);
	public void deleteCustomer(Integer cid);
	public List<Customer> getAllCustomers();
}
