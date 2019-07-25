package com.gym.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
    @RequestMapping(value="/method0", method = RequestMethod.GET)
    public String method0(){
        return "method0";
    }

    @RequestMapping(value = {"/method1","/method1/one","/method1/two"},method =RequestMethod.GET)
    public String method1(){
        return "method1";
    }

    @RequestMapping(value = "/method3", method = {RequestMethod.POST,RequestMethod.GET})
    public String method3(){
        return "method3";
    }

    @RequestMapping(value = "/method4" )
    public String method4(){
        return "method4";
    }
}
