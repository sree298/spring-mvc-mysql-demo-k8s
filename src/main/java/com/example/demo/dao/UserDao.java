package com.example.demo.dao;

import com.example.demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public int save(User user) {
        String sql = "INSERT INTO users (name, email, age) VALUES (?, ?, ?)";
        return jdbcTemplate.update(sql,
                user.getName(),
                user.getEmail(),
                user.getAge());
    }
}

