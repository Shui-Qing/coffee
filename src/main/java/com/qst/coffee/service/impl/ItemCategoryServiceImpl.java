package com.qst.coffee.service.impl;


import com.qst.coffee.Base.BaseDao;
import com.qst.coffee.Base.BaseServiceImpl;
import com.qst.coffee.dao.ItemCategoryDao;
import com.qst.coffee.pojo.ItemCategory;
import com.qst.coffee.service.ItemCategoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ItemCategoryServiceImpl extends BaseServiceImpl<ItemCategory> implements ItemCategoryService {
    @Resource
    public ItemCategoryDao itemCategoryDao;

    @Override
    public BaseDao<ItemCategory> getBaseDao() {
        return itemCategoryDao;
    }

    @Override
    public List<ItemCategory> getCategoryList() {
        return itemCategoryDao.getCategoryList();
    }

    @Override
    public List<ItemCategory> findByPid(Integer pid) {
        return itemCategoryDao.findByPid(pid);
    }
}
