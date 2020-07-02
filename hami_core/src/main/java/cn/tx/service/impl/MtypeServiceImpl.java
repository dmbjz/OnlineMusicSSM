package cn.tx.service.impl;

import cn.tx.dao.MtypeMapper;
import cn.tx.model.Mtype;
import cn.tx.query.MtypeQuery;
import cn.tx.service.MtypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MtypeServiceImpl extends BaseServiceImpl<MtypeQuery, Mtype> implements MtypeService {


    private MtypeMapper mtypeMapper;

    @Autowired
    public void setMtypeMapper(MtypeMapper mtypeMapper) {
        this.mtypeMapper = mtypeMapper;
        this.baseDao = mtypeMapper;
    }

}
