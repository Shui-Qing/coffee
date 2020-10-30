package com.qst.coffee.controller;

import com.qst.coffee.Utils.CodeUtil;
import com.qst.coffee.Utils.Consts;
import com.qst.coffee.pojo.Item;
import com.qst.coffee.pojo.ItemCategory;
import com.qst.coffee.pojo.User;
import com.qst.coffee.service.ItemCategoryService;
import com.qst.coffee.service.ItemService;
import com.qst.coffee.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.RenderedImage;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Controller
public class UserLoginController {

    @Autowired
    private UserService userService;

    @Autowired
    private ItemService itemService;

    @Autowired
    private ItemCategoryService itemCategoryService;

    /**
     * 跳转注册
     */
    @RequestMapping("/reg")
    public String reg(){
        return "/reg";
    }

    /**
     * 执行注册
     */
    @RequestMapping("/toReg")
    public String toReg(User newUser){
        int i = userService.insert(newUser);
        if (i!=0){
            return "/login";
        }else{
            return "/reg";
        }

    }


    /**
     * 跳转登陆
     */
    @RequestMapping("/uLogin")
    public String uLogin(){
        return "/login";
    }


    /**
     * 执行登陆
     */
    @RequestMapping("/Index")
    public String toIndex(String email,String passWord,HttpServletRequest request, Model model,String name){
        User i = userService.toLogin(email, passWord);

        List<ItemCategory> category1 = itemCategoryService.getCategoryList();
        model.addAttribute("category1",category1);

        List<Item> items = itemService.getAll(name);
        model.addAttribute("items",items);

        if(i!=null){
            request.getSession().setAttribute(Consts.MANAGE,i);

            model.addAttribute("userLogin",i);
            return "index";
        }else{
            return "/login";
        }
    }

    /**
     * 搜索框
     */
    @RequestMapping("/search")
    public String search(String name,Model model){
        List<Item> items = itemService.getAll(name);
        model.addAttribute("items",items);
        return "/index";
    }

    /**
     * 跳转忘记密码
     */
    @RequestMapping("/forget")
    public String forget(){
        return "/forget";
    }


    /**
     * 执行修改密码
     */



}
