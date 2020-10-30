package com.qst.coffee.service.impl;

import com.qst.coffee.Base.BaseDao;
import com.qst.coffee.Base.BaseServiceImpl;
import com.qst.coffee.dao.OrderDetailDao;
import com.qst.coffee.pojo.OrderDetail;
import com.qst.coffee.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class OrderDetailServiceImpl extends BaseServiceImpl<OrderDetail> implements OrderDetailService {
    @Resource
    private OrderDetailDao orderDetailDao;

    @Override
    public BaseDao<OrderDetail> getBaseDao() {
        return orderDetailDao;
    }

    @Override
    public List<OrderDetail> getAll(Integer id) {
        return orderDetailDao.getAll(id);
    }
}
