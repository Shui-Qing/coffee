package com.qst.coffee.service;


import com.qst.coffee.Base.BaseService;
import com.qst.coffee.pojo.OrderDetail;

import java.util.List;

public interface OrderDetailService extends BaseService<OrderDetail> {
    List<OrderDetail> getAll(Integer id);
}
