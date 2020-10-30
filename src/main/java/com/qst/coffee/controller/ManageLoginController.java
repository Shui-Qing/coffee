package com.qst.coffee.controller;


import com.qst.coffee.Base.BaseController;
import com.qst.coffee.Utils.Consts;
import com.qst.coffee.pojo.Manage;
import com.qst.coffee.service.ManageLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import sun.text.normalizer.NormalizerBase;

import javax.servlet.http.HttpServletRequest;

@Controller
public class ManageLoginController extends BaseController {

    @Autowired
    public ManageLoginService manageService;

    /**
     * 后台登录界面跳转
     * @return
     */
    @RequestMapping("/manage/login")
    public String login(){
        return "/manage/login";
    }

    /**
     * 登录验证
     * @return
     */
    @RequestMapping("/manage/index")
    public String toLogin(Manage manage, HttpServletRequest request, Model model){
        Manage byEntity = manageService.getByEntity(manage);
        if(byEntity==null){
            return "redirect:/manage/loginOut";
        }
        request.getSession().setAttribute(Consts.MANAGE,byEntity);

        model.addAttribute("byEntity",byEntity);
        return "/manage/index";
    }

    /**
     * 管理员退出
     */
    @RequestMapping("/manage/loginOut")
    public String mloginOut(HttpServletRequest request){
//        System.out.println(request.getSession().toString());
        request.getSession().setAttribute(Consts.MANAGE,null);

        return "/manage/login";
    }

    /**
     * 后台主页跳转前台主页
     */
    @RequestMapping("/index")
    public String toIndex(){
        return "/index";
    }

}
