package com.pers.crm.dao;

import java.util.List;

import com.pers.crm.entity.Customer;

public interface CustomerDAO {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

}
