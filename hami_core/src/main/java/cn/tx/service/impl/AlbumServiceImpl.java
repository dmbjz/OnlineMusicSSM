package cn.tx.service.impl;

import cn.tx.dao.AlbumMapper;
import cn.tx.model.Album;
import cn.tx.query.AlbumQuery;
import cn.tx.service.AlbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class AlbumServiceImpl extends BaseServiceImpl<AlbumQuery, Album> implements AlbumService {


    private AlbumMapper albumMapper;

    @Autowired
    public void setAlbumMapper(AlbumMapper albumMapper) {
        this.albumMapper = albumMapper;
        this.baseDao = albumMapper;
    }

    @Override
    public List<Album> selectAlbumByName(Map<String, String> map) {
        return albumMapper.selectAlbumByName(map);
    }
}
