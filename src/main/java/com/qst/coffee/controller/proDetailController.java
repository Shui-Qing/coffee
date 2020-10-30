package com.qst.coffee.controller;

import com.qst.coffee.pojo.Item;
import com.qst.coffee.pojo.ItemCategory;
import com.qst.coffee.service.ItemCategoryService;
import com.qst.coffee.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class proDetailController {

    @Autowired
    private ItemService itemService;

    @Autowired
    private ItemCategoryService itemCategoryService;

    @RequestMapping("/proDetail")
    public String proDetail(Integer id, Model model){

        Item obj = itemService.load(id);

        model.addAttribute("obj",obj);

        return "/proDetail";
    }
}
