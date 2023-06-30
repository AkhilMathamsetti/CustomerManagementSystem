package com.cms.in.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cms.in.entity.Customer;
import com.cms.in.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService {

	private CustomerRepository customerRepository;
	
	@Autowired
	public void setCustomerRepository(CustomerRepository customerRepository) {
		this.customerRepository = customerRepository;
	}
	
	@Override
	public Customer saveCustomer(Customer customer) {
		return customerRepository.save(customer);
	}

	@Override
	public Customer getCustomerById(Integer cid) {
		return customerRepository.findById(cid).get();
	}

	@Override
	public void deleteCustomer(Integer cid) {
		customerRepository.deleteById(cid);
	}

	@Override
	public List<Customer> getAllCustomers() {
		return customerRepository.findAll();
	}

}
