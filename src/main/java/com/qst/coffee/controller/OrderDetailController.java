package com.qst.coffee.controller;

import com.qst.coffee.pojo.OrderDetail;
import com.qst.coffee.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 订单详情c层
 */
@Controller
@RequestMapping("/orderDetail")
public class OrderDetailController {

    @Autowired
    private OrderDetailService orderDetailService;

    @RequestMapping("/ulist")
    public String ulist(OrderDetail orderDetail, Model model){
        Integer id = orderDetail.getOrderId();
        List<OrderDetail> orderDetails = orderDetailService.getAll(id);
        model.addAttribute("orderDetails",orderDetails);
        return "manage/order/detail";
    }
}
