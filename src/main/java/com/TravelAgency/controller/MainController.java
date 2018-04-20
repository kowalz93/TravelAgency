package com.TravelAgency.controller;

import com.TravelAgency.dto.RegisterDTO;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

/**
 * Created by Marcin on 17.04.2018.
 */
@Controller
public class MainController {

    @RequestMapping("/register")
    public String register(@ModelAttribute("form") @Valid RegisterDTO form, BindingResult result){
        if(result.hasErrors()){
            return "register";
        }else{
            return "redirect:/";
        }
    }

    @RequestMapping("/login")
    public String login(){
        return "login";
    }
}
