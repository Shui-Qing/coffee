package com.qst.coffee.service;


import com.qst.coffee.Base.BaseService;
import com.qst.coffee.pojo.User;

import java.util.List;

public interface UserService extends BaseService<User> {

    List<User> getUserList();
    List<User> getUserList(String userName);

    User toLogin(String email, String passWord);
}
