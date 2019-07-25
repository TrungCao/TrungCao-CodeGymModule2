package com.codegym.service;

import com.codegym.model.Customer;
import com.codegym.exception.ResourceNotFoundException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;


import java.util.List;

public interface CustomerService {

    public Page<Customer> getCustomers(Pageable pageable);

    public void saveCustomer(Customer customer);

    public Customer deleteCustomer(int id);

    public Customer getCustomer(int id) throws ResourceNotFoundException;

    Page<Customer> findAllByLastNameContaining(String lastName, Pageable pageable);

}
