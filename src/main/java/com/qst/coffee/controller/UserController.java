package com.qst.coffee.controller;

import com.qst.coffee.Base.BaseController;
import com.qst.coffee.Utils.Pager;
import com.qst.coffee.pojo.User;
import com.qst.coffee.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController {

    @Autowired
    private UserService userService;

    @RequestMapping("/findAll")
    public String findAll(Model model) {

        List<User> userList = userService.getUserList();

        model.addAttribute("users",userList);

        return "manage/user/user";
    }

    @RequestMapping("/findUserByName")
    public String findUserByName(Model model,String userName){
        List<User> userList = userService.getUserList(userName);
        model.addAttribute("users",userList);
        return "manage/user/user";

    }
}