package com.qst.coffee.service.impl;


import com.qst.coffee.Base.BaseDao;
import com.qst.coffee.Base.BaseServiceImpl;
import com.qst.coffee.dao.ItemDao;
import com.qst.coffee.pojo.Item;
import com.qst.coffee.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ItemServiceImpl extends BaseServiceImpl<Item> implements ItemService {

    @Resource
    private ItemDao itemDao;

    @Override
    public BaseDao<Item> getBaseDao() {
        return itemDao;
    }

    @Override
    public List<Item> getAll(String name) {
        return itemDao.getAll(name);
    }
}
