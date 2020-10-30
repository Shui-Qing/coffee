package com.qst.coffee.controller;

import com.qst.coffee.Base.BaseController;
import com.qst.coffee.Utils.Pager;
import com.qst.coffee.pojo.Item;
import com.qst.coffee.pojo.ItemOrder;
import com.qst.coffee.pojo.OrderDetail;
import com.qst.coffee.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 订单管理
 */
@Controller
@RequestMapping("/order")
public class OrderController extends BaseController {
    @Autowired
    private OrderService orderService;
    /**
     * 订单管理列表
     */
    @RequestMapping("/findBySql")
    public String findBySql(String code, Model model){
        List<ItemOrder> orders = orderService.getAll(code);
        model.addAttribute("orders",orders);
        return "manage/order/order";
    }

    @RequestMapping("/fh")
    public String fh(ItemOrder itemOrder){
        Integer orderId = itemOrder.getId();
        orderService.updateStatus(orderId);
        return "redirect:/order/findBySql";
    }

}
