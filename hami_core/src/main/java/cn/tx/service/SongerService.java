package cn.tx.service;


import cn.tx.model.Songer;
import cn.tx.query.SongerQuery;

public interface SongerService extends BaseService<SongerQuery, Songer>{

    public Songer selectSongerSongsById(Integer songId);
    public Songer selectSongerupdate(Integer srid);

}
