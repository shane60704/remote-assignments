package com.example.assignment.controller;

import com.example.assignment.model.User;
import com.example.assignment.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;


@Controller
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping("/memberPage")
    public String memberPage() {
        return "memberPage";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(@ModelAttribute User user, Model model) throws IOException {
        if (userService.login(user)) {
            return "redirect:/memberPage";
        } else {
            model.addAttribute("showLoginFailed", true);
            return "login";
        }
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register() {
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@ModelAttribute User user, Model model) throws IOException {
        switch (userService.register(user)) {
            case "Email Already Exists":
                model.addAttribute("showEmailAlreadyExists", true);
                return "register";

            case "Register Failed":
                model.addAttribute("showRegisterFailed", true);
                return "register";

            case "Register Successfully":
                model.addAttribute("showRegisterSuceesfully", true);
                return "login";

            default:
                model.addAttribute("showRegisterFailed", true);
                return "register";
        }
    }

}


