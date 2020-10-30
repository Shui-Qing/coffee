package com.qst.coffee.service.impl;

import com.qst.coffee.Base.BaseDao;
import com.qst.coffee.Base.BaseServiceImpl;
import com.qst.coffee.dao.OrderDao;
import com.qst.coffee.pojo.ItemOrder;
import com.qst.coffee.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderServiceImpl extends BaseServiceImpl<ItemOrder> implements OrderService {

    @Resource
    private OrderDao orderDao;

    @Override
    public BaseDao<ItemOrder> getBaseDao() {
        return orderDao;
    }

    @Override
    public List<ItemOrder> getAll(String code) {
        return orderDao.getAll(code);
    }

    @Override
    public void updateStatus(Integer orderId) {
        orderDao.updateStatus(orderId);
    }
}
