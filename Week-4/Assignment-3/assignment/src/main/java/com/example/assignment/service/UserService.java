package com.example.assignment.service;

import com.example.assignment.model.User;


public interface UserService {
    String register(User user);
    Boolean login(User user);
}
