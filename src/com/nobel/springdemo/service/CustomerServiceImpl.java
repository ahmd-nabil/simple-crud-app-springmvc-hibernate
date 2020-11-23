package com.nobel.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.nobel.springdemo.dao.CustomerDAO;
import com.nobel.springdemo.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService{

	// need to inject CustomerDao
	@Autowired
	private CustomerDAO customerDAO;
	
	@Override
	@Transactional 						// begins transaction and ends it, flushing the session for us.
	public List<Customer> getCustomers() {
		return customerDAO.getCustomers();	
	}

	@Override
	@Transactional
	public void addCustomer(Customer customer) {
		customerDAO.addCustomer(customer);
	}
	
	@Override
	@Transactional
	public Customer getCustomer(int id) {
		return customerDAO.getCustomer(id);
	}

	@Override
	@Transactional
	public void deleteCustomer(int id) {
		customerDAO.deleteCustomer(id);
	}

	@Override
	@Transactional
	public void deleteCustomer(Customer customer) {
		customerDAO.deleteCustomer(customer);
		
	}
}
