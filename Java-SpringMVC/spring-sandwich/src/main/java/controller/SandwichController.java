package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SandwichController {
    @RequestMapping("/")
    public String home(){
        return "index";
    }

    @PostMapping("/save")
    public ModelAndView save(@RequestParam("condiments") String[] condiments) {
        ModelAndView modelAndView = new ModelAndView("result","condiments", condiments);
        return modelAndView;
    }
}
