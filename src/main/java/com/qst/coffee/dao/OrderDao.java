package com.qst.coffee.dao;


import com.qst.coffee.Base.BaseDao;
import com.qst.coffee.pojo.ItemOrder;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface OrderDao extends BaseDao<ItemOrder> {
    List<ItemOrder> getAll(String code);

    void updateStatus(Integer orderId);
}
