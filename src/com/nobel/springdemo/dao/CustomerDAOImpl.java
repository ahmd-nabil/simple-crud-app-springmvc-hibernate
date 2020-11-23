package com.nobel.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nobel.springdemo.entity.Customer;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	// inject session factory
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Customer> getCustomers() {
		// get the session
		Session session = sessionFactory.getCurrentSession();
		
		// create query
		Query<Customer> theQuery = session.createQuery("from Customer order by lastName", Customer.class); // NOTICE Customer NOT customer 
		
		// execute query and get result list
		List<Customer> customers = theQuery.list();
		
		// return the list
		return customers;
	}

	@Override
	public void addCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		
		if(customer != null)
			session.saveOrUpdate(customer);
	}
	
	@Override
	public Customer getCustomer(int id) {
		// open a session
		Session session = sessionFactory.getCurrentSession();
		// get the customer with the id
		Customer customer = session.get(Customer.class, id);
		
		return customer;
	}

	@Override
	public void deleteCustomer(int id) {
		Session session = sessionFactory.getCurrentSession();
		
		Customer customer = session.get(Customer.class, id);
		if(customer != null) session.delete(customer);	
	}

	@Override
	public void deleteCustomer(Customer customer) {
		Session session = sessionFactory.getCurrentSession();
		
		if(customer != null) session.delete(customer);	
	}

}
