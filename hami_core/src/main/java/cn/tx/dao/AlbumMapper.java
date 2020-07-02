package cn.tx.dao;

import cn.tx.model.Album;
import cn.tx.query.AlbumQuery;
import java.util.List;
import java.util.Map;

public interface AlbumMapper extends BaseDao<AlbumQuery, Album>{


    public List<Album> selectAlbumByName(Map<String, String> map);

}
