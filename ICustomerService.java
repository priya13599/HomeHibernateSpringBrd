package com.nucleus.service;

import java.util.List;

import com.nucleus.model.Customer;

public interface ICustomerService {
	
	public int saveCustomer(Customer customer);

	public int deleteCustomer(Customer customer);

	public Customer displayCustomer(Customer customer);

	public List<Customer> displayCustomer1(Customer customer);

	public List<Customer> sortinascending();

	public List<Customer> sortindescending();

	public Customer updateCustomer(Customer customer);

	public void updateCustomerdetails(Customer customer2);

}
