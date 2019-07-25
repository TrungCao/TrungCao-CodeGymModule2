package com.codegym.cms.service;

import com.codegym.cms.entity.Customer;
import com.codegym.cms.exception.ResourceNotFoundException;

import java.util.List;

public interface CustomerService {
    public Iterable<Customer> getCustomers();

    public void saveCustomer(Customer customer);

    public void deleteCustomer(int id);

    public Customer updateCustomer(int id) throws ResourceNotFoundException;
}
