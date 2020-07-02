package cn.tx.service.impl;

import cn.tx.dao.DemoMapper;
import cn.tx.model.Demo;
import cn.tx.query.DemoQuery;
import cn.tx.service.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DemoServiceImpl extends BaseServiceImpl<DemoQuery, Demo> implements DemoService {


    private DemoMapper demoMapper;

    @Autowired
    public void setDemoMapper(DemoMapper demoMapper) {
        this.demoMapper = demoMapper;
        this.baseDao = demoMapper;
    }

}