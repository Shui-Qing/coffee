package com.qst.coffee.dao;

import com.qst.coffee.Base.BaseDao;
import com.qst.coffee.pojo.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserDao extends BaseDao<User> {
    List<User> selectUserList();

    List<User> getUserByName(String userName);

    User toLogin(String email, String passWord);
}
