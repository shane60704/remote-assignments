package com.example.assignment.service;

import com.example.assignment.dao.UserDao;
import com.example.assignment.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class UserServiceImpl implements UserService {
    @Autowired
    UserDao userDao;

    @Override
    public String register(User user){
        List<User> users = userDao.getUserByEmail(user.getEmail());
        if (users.size() > 0){
            return "Email Already Exists";
        }
        int result = userDao.createUser(user);
        if (result != UserDao.CREATE_USER_FAILURE){
            return "Register Successfully";
        }else{
            return "Register Failed";
        }
    }

    @Override
    public Boolean login(User user){
        List<User> users = userDao.getUserByEmail(user.getEmail());
        if(users.size() < 1) {
            return false;
        }
        String  rawPassword = user.getPassword();
        String  encodedPassword = users.get(0).getPassword();
        PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        if (passwordEncoder.matches(rawPassword,encodedPassword)){
            return true;
        }else{
            return false;
        }
    }
}


