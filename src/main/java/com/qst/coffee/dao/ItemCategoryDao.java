package com.qst.coffee.dao;


import com.qst.coffee.Base.BaseDao;
import com.qst.coffee.pojo.ItemCategory;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ItemCategoryDao extends BaseDao<ItemCategory> {
    List<ItemCategory> getCategoryList();

    List<ItemCategory> findByPid(Integer pid);
}
