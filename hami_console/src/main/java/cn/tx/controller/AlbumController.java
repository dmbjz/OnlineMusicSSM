package cn.tx.controller;

import cn.tx.model.Album;
import cn.tx.model.Mtype;
import cn.tx.query.AlbumQuery;
import cn.tx.query.MtypeQuery;
import cn.tx.service.AlbumService;
import cn.tx.util.Page;
import cn.tx.util.PropUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.management.Query;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("album")
public class AlbumController {


    @Autowired
    private AlbumService albumService;


    @RequestMapping("list")
    public String list(AlbumQuery mq, Model model){
        if(mq.getPageNo() == null){
            mq.setPageNo(1);
        }
        //查询分页的数据
        Page<Album> page = albumService.selectByConditionPage(mq);
        //把page对象发给页面
        model.addAttribute("page", page);
        //把查询条件也要回显
        model.addAttribute("mq", mq);

        return "album";
    }

    @ResponseBody
    @RequestMapping("addAlbum")
    public String addAlbum(Album album){
        albumService.insert(album);
        return "success";
    }


    @ResponseBody
    @RequestMapping("isSameName")
    public String isSameName(String aname){

        Map<String,String> map = new HashMap<>();
        map.put("aname", aname);
        List<Album> albums = albumService.selectAlbumByName(map);
        String flag = "false";
        if(albums.size() > 0){
            flag = "true";
        }
        return flag;
    }


    /**
     * 删除流派
     * @return
     */
    @ResponseBody
    @RequestMapping("delAlbum")
    public String delAlbum(int aid){
        albumService.deleteByPrimaryKey(aid);
        return "success";
    }



    /*修改流派时的弹窗内容*/
    @ResponseBody
    @RequestMapping("getAlbum")
    public Album getMtype(int tid) {
        Album album = albumService.selectByPrimaryKey(tid);
        String filePath = PropUtil.read("filePath");
        album.setFilePath(filePath);
        return album;
    }

    /*修改流派时的弹窗内容*/
    @ResponseBody
    @RequestMapping("updateMtype")
    public String updateMtype(Album mq) {
        albumService.updateByPrimaryKeySelective(mq);
        return "success";
    }

}
