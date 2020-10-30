package com.qst.coffee.service.impl;

import com.qst.coffee.Base.BaseDao;
import com.qst.coffee.Base.BaseServiceImpl;
import com.qst.coffee.dao.ManageLoginDao;
import com.qst.coffee.pojo.Manage;
import com.qst.coffee.service.ManageLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ManageLoginServiceImpl extends BaseServiceImpl<Manage> implements ManageLoginService {

    @Resource
    public ManageLoginDao manageLoginDao;

    @Override
    public BaseDao<Manage> getBaseDao() {
        return manageLoginDao;
    }
}
