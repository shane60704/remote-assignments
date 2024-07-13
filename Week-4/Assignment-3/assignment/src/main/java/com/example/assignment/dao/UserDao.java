package com.example.assignment.dao;

import com.example.assignment.model.User;

import java.util.List;

public interface UserDao {
    int CREATE_USER_FAILURE = -1;
    Integer createUser(User user);
    List<User> getUserByEmail(String email);
}
