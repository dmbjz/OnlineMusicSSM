package cn.tx.service;

import cn.tx.model.Song;
import cn.tx.query.SongQuery;

import java.util.List;

public interface SongService extends BaseService<SongQuery, Song>{


    public List<Song> selectSongBySids(List<Integer> sids);

    public Song selectSongBySid(int sid);

    public Song selectSongupdate(Integer sid);
}
