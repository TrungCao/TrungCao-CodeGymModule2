package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.io.PrintWriter;

@Controller
public class CalculatorController {
    @GetMapping ("/")
    public String home(){
        return "index";

    }

    @PostMapping("/calculate")
    public ModelAndView result(@RequestParam float number1,@RequestParam("number2") float number2,
                            @RequestParam("operand") String operand){
        try{
            float result = calculate(number1,number2,operand.charAt(0));
            ModelAndView modelAndView = new ModelAndView("index","result",result);
            return modelAndView;
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
        return null;
    }

    public float calculate(float firstOperand, float secondOperand,char operand){
        switch (operand){
            case '+':
                return firstOperand+secondOperand;
            case '-':
                return firstOperand-secondOperand;
            case '*':
                return firstOperand*secondOperand;
            case '/':
                if(secondOperand != 0)
                    return firstOperand/secondOperand;
                else
                    throw new RuntimeException("Can't divite by zero");
            default:
                throw new RuntimeException("Invalid opration");
        }
    }

}
