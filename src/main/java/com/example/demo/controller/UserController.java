package com.example.demo.controller;

import com.example.demo.dao.UserDao;
import com.example.demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserDao userDao;

    // Show form
    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("user", new User());
        return "user-form";  // /WEB-INF/views/user-form.jsp
    }

    // Handle form submit
    @PostMapping("/save")
    public String saveUser(@ModelAttribute("user") User user, Model model) {
        userDao.save(user);
        model.addAttribute("user", user);
        return "user-success"; // /WEB-INF/views/user-success.jsp
    }
}

