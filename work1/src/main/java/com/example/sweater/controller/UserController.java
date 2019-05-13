package com.example.sweater.controller;

import com.example.sweater.domain.Role;
import com.example.sweater.domain.User;
import com.example.sweater.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@Controller
public class UserController {
    @Autowired
    private UserRepo userRepo;

    @GetMapping("/user")
    public String userList(@RequestParam (required = false, defaultValue = "") String filterU, Model model) {
        if (filterU != null && !filterU.isEmpty()) {
            model.addAttribute("users", userRepo.findByUsername(filterU));
        }
        else {
            model.addAttribute("users", userRepo.findAll());
        }

         model.addAttribute("filterU", filterU);

        return "userList";
    }
}
