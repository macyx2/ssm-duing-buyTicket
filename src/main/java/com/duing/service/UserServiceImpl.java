package com.duing.service;

import com.duing.dao.UserDao;
import com.duing.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;


    @Override
    public List<User> getAll() {
        return userDao.getAll();
    }
}
