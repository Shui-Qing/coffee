package com.qst.coffee.service;


import com.qst.coffee.Base.BaseService;
import com.qst.coffee.pojo.ItemOrder;

import java.util.List;

public interface OrderService extends BaseService<ItemOrder> {
    List<ItemOrder> getAll(String code);

    void updateStatus(Integer orderId);
}
