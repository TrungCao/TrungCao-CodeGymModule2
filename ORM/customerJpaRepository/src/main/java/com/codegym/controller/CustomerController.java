package com.codegym.controller;

import com.codegym.exception.ResourceNotFoundException;
import com.codegym.model.Customer;
import com.codegym.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired private CustomerService customerService;


    @GetMapping("/list")
    public String listCustomers(Model model, @PageableDefault(size = 10) Pageable pageable, @RequestParam("s") Optional<String> s){
        Page<Customer> customers;
        if(s.isPresent()){
            customers = customerService.findAllByLastNameContaining(s.get(), pageable);
        } else {
            customers = customerService.getCustomers(pageable);
        }
        model.addAttribute("customers",customers);
        return "list";
    }

    @GetMapping("/showForm")
    public String showFormForAdd(Model theModel) {
        Customer customer = new Customer();
        theModel.addAttribute("customer", customer);
        return "create";
    }

    @PostMapping("/saveCustomer")
    public String saveCustomer(@Validated @ModelAttribute("customer") Customer theCustomer, BindingResult bindingResult) {
        new Customer().validate(theCustomer,bindingResult);
        if (bindingResult.hasFieldErrors()) {
            return "create";
        }else {
            customerService.saveCustomer(theCustomer);
            return "redirect: /customer/list";
        }
    }

    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("id") int id,@RequestParam("page") Pageable pageable){
        customerService.deleteCustomer(id);
        return "redirect:/customer/list";
    }

    @GetMapping("/update")
    public String showFormForUpdate(@RequestParam("id") int id,
                                    Model theModel) throws ResourceNotFoundException {
        Customer theCustomer = customerService.getCustomer(id);
        theModel.addAttribute("customer", theCustomer);
        return "update";
    }

    @PostMapping("/update")
    public String updateCustomer(@ModelAttribute("customer") Customer theCustomer){
        customerService.saveCustomer(theCustomer);
        return "redirect:/customer/list";
    }


}
