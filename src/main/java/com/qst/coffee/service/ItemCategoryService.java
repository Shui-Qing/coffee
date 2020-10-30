package com.qst.coffee.service;


import com.qst.coffee.Base.BaseService;
import com.qst.coffee.pojo.ItemCategory;

import java.util.List;

public interface ItemCategoryService extends BaseService<ItemCategory> {

    List<ItemCategory> getCategoryList();

    List<ItemCategory> findByPid(Integer pid);
}
