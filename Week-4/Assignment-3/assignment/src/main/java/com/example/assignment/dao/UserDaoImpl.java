package com.example.assignment.dao;

import com.example.assignment.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Component
public class UserDaoImpl implements UserDao {
    @Autowired
    private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

    @Override
    public Integer createUser(User user) {
        try {
            String sql = "INSERT INTO user (email, password) VALUES (:email, :password)";
            PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
            String encodedPassword = passwordEncoder.encode(user.getPassword());
            Map<String, Object> map = new HashMap<>();
            map.put("email", user.getEmail());
            map.put("password", encodedPassword);
            return namedParameterJdbcTemplate.update(sql, map);
        } catch (DataAccessException e) {
            return CREATE_USER_FAILURE;
        }
    }

    @Override
    public List<User> getUserByEmail(String email){
        try {
            String sql = "SELECT * FROM user WHERE email = :email";
            Map<String, Object> map = new HashMap<>();
            map.put("email", email);
            return namedParameterJdbcTemplate.query(sql, map, new UserRowMapper());
        } catch (DataAccessException e) {
            return Collections.emptyList();
        }
    }

}
