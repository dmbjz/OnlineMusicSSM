package cn.tx.service.impl;

import cn.tx.dao.SongMapper;
import cn.tx.model.Song;
import cn.tx.query.SongQuery;
import cn.tx.service.SongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SongServiceImpl extends BaseServiceImpl<SongQuery, Song> implements SongService {


    private SongMapper songMapper;

    @Autowired
    public void setSongMapper(SongMapper songMapper) {
        this.songMapper = songMapper;
        this.baseDao = songMapper;
    }

    @Override
    public List<Song> selectSongBySids(List<Integer> sids) {
        return songMapper.selectSongBySids(sids);
    }

    @Override
    public Song selectSongBySid(int sid) {
        return songMapper.selectSongBySid(sid);
    }

    @Override
    public Song selectSongupdate(Integer sid) {
        return songMapper.selectSongupdate(sid);
    }
}
