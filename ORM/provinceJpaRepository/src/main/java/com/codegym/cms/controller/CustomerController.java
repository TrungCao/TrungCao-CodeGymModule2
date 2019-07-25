package com.codegym.cms.controller;


import com.codegym.cms.entity.Customer;
import com.codegym.cms.entity.Province;
import com.codegym.cms.exception.ResourceNotFoundException;
import com.codegym.cms.service.CustomerService;
import com.codegym.cms.service.ProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @Autowired
    private ProvinceService provinceService;

    @ModelAttribute("provinces")
    public Iterable<Province> provinces() {
        return provinceService.getProvinces();
    }

    @GetMapping("/list")
    public String listCustomers(Model model) {
        Iterable<Customer> customer = customerService.getCustomers();
        model.addAttribute("customers", customer);
        return "customer/list";
    }

    @GetMapping("/create")
    public ModelAndView formAddCustomer() {
        ModelAndView modelAndView = new ModelAndView("customer/create", "customer", new Customer());
        return modelAndView;
    }


    @PostMapping("/create-customer")
    public ModelAndView addCustomer(@ModelAttribute("customer") Customer customer) {
        customerService.saveCustomer(customer);
        ModelAndView modelAndView = new ModelAndView("redirect:/customer/list", "customer", customer);
        return modelAndView;
    }


//    @GetMapping("/update")
//    public String showFormForUpdate(@RequestParam("id") int theId,
//                                    Model theModel) throws ResourceNotFoundException {
//        Customer theCustomer = customerService.getCustomer(theId);
//        theModel.addAttribute("customer", theCustomer);
//        return "customer/edit";
//    }
//
//    @PostMapping("/update")
//    public String updateCustomer(@ModelAttribute("customer") Customer theCustomer){
//        customerService.saveCustomer(theCustomer);
//        return "redirect:/customer/";
//    }
    @GetMapping("/delete")
    public String deleteCustomer(@RequestParam("id") int theId) throws ResourceNotFoundException {
        customerService.deleteCustomer(theId);
        return "redirect:/customer/list";
    }
}
