package cn.tx.service;


import cn.tx.model.Album;
import cn.tx.query.AlbumQuery;

import java.util.List;
import java.util.Map;

public interface AlbumService extends BaseService<AlbumQuery, Album>{
    public List<Album> selectAlbumByName(Map<String, String> map);

}
