package cn.tx.service.impl;

import cn.tx.dao.SongerMapper;
import cn.tx.model.Songer;
import cn.tx.query.SongerQuery;
import cn.tx.service.SongerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SongerServiceImpl extends BaseServiceImpl<SongerQuery, Songer> implements SongerService {


    private SongerMapper songerMapper;

    @Autowired
    public void setSongerMapper(SongerMapper songerMapper) {
        this.songerMapper = songerMapper;
        this.baseDao = songerMapper;
    }


    @Override
    public Songer selectSongerSongsById(Integer srId) {
        return songerMapper.selectSongerSongsById(srId);
    }

    @Override
    public Songer selectSongerupdate(Integer srid) {
        return songerMapper.selectSongerupdate(srid);
    }
}
