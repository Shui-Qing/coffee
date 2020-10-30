package com.qst.coffee.dao;

import com.qst.coffee.Base.BaseDao;
import com.qst.coffee.pojo.OrderDetail;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface OrderDetailDao extends BaseDao<OrderDetail> {
    List<OrderDetail> getAll(Integer id);
}
