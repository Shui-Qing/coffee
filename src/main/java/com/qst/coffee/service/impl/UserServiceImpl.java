package com.qst.coffee.service.impl;


import com.qst.coffee.Base.BaseDao;
import com.qst.coffee.Base.BaseServiceImpl;
import com.qst.coffee.dao.UserDao;
import com.qst.coffee.pojo.User;
import com.qst.coffee.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl extends BaseServiceImpl<User> implements UserService {
    @Resource
    private UserDao userDao;

    @Override
    public List<User> getUserList() {
        return userDao.selectUserList();
    }

    @Override
    public List<User> getUserList(String userName) {
        return userDao.getUserByName(userName);
    }

    @Override
    public User toLogin(String email, String passWord) {
        return userDao.toLogin(email,passWord);
    }


    @Override
    public BaseDao<User> getBaseDao() {
        return userDao;
    }
}
