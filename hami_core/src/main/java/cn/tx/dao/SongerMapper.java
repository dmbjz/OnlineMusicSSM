package cn.tx.dao;

import cn.tx.model.Songer;
import cn.tx.query.SongerQuery;

public interface SongerMapper extends BaseDao<SongerQuery, Songer>{

    public Songer selectSongerSongsById(Integer songId);
    public Songer selectSongerupdate(Integer srid);

}