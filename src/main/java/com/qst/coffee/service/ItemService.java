package com.qst.coffee.service;


import com.qst.coffee.Base.BaseService;
import com.qst.coffee.pojo.Item;

import java.util.List;

public interface ItemService extends BaseService<Item> {
    List<Item> getAll(String name);
}
