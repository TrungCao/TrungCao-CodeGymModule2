package com.codegym.cms.controller;

import com.codegym.cms.entity.Province;
import com.codegym.cms.exception.ResourceNotFoundException;
import com.codegym.cms.service.ProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/provinces")
public class ProvinceController {

    @Autowired
    private ProvinceService provinceService;

    @GetMapping("/list")
    public String listProvinces(Model model) {
        Iterable<Province> provinces = provinceService.getProvinces();
        model.addAttribute("provinces", provinces);
        return "province/list";
    }

    @GetMapping("/create")
    public String showForm(Model model) {
        Province province = new Province();
        model.addAttribute("province", province);
        return "province/create";
    }

    @PostMapping("/create-province")
    public ModelAndView saveProvince(@ModelAttribute("province") Province province) {
        provinceService.saveProvince(province);
        ModelAndView modelAndView = new ModelAndView("redirect:/provinces/list");
        return modelAndView;
    }

    @GetMapping("/update")
    public ModelAndView showForUpdate(@RequestParam("id") Long id) throws ResourceNotFoundException{
        Province province = provinceService.getProvince(id);
        ModelAndView modelAndView = new ModelAndView("province/update","province",province);
        return modelAndView;
    }

    @PostMapping("/update")
    public String updateProvince(@ModelAttribute("province") Province province){
        provinceService.saveProvince(province);
        return "redirect:/provinces/list";
    }


    @GetMapping("/delete")
    public String deleteProvince(@RequestParam("id")  Long id){
        provinceService.deleteProvinces(id);
        return "redirect:/provinces/list";
    }


}
