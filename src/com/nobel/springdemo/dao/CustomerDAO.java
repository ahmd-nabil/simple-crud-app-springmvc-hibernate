package com.nobel.springdemo.dao;

import java.util.List;

import com.nobel.springdemo.entity.Customer;

public interface CustomerDAO {
	public List<Customer> getCustomers();
	public void addCustomer(Customer customer);
	public Customer getCustomer(int id);
	public void deleteCustomer(int id);
	public void deleteCustomer(Customer customer);
}
