package com.qst.coffee.dao;


import com.qst.coffee.Base.BaseDao;
import com.qst.coffee.pojo.Item;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ItemDao extends BaseDao<Item> {
    List<Item> getAll(String name);
}
