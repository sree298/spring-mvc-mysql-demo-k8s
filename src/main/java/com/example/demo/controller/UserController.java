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

    // Show form to add new user
    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("user", new User());
        return "user-form";  // /WEB-INF/views/user-form.jsp
    }

    // Save user and redirect to list page
    @PostMapping("/save")
    public String saveUser(@ModelAttribute("user") User user) {
        userDao.save(user);
        return "redirect:/user/list"; // After save show table
    }

    // Show user list table
    @GetMapping("/list")
    public String listUsers(Model model) {
        model.addAttribute("users", userDao.findAll());
        return "user-list"; // /WEB-INF/views/user-list.jsp
    }
}
