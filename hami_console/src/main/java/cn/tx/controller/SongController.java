package cn.tx.controller;

import cn.tx.model.Album;
import cn.tx.model.Mtype;
import cn.tx.model.Song;
import cn.tx.model.Songer;
import cn.tx.query.SongQuery;
import cn.tx.query.SongerQuery;
import cn.tx.service.AlbumService;
import cn.tx.service.MtypeService;
import cn.tx.service.SongService;
import cn.tx.service.SongerService;
import cn.tx.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import java.util.List;

@Controller
@RequestMapping("song")
public class SongController {


    @Autowired
    private SongerService songerService;

    @Autowired
    private MtypeService mtypeService;

    @Autowired
    private AlbumService albumService;

    @Autowired
    private SongService songService;


    @RequestMapping("list")
    public String list(SongQuery mq, Model model){
        if(mq.getPageNo() == null){
            mq.setPageNo(1);
        }
        //查询分页的数据
        Page<Song> page = songService.selectByConditionPage(mq);
        //把page对象发给页面
        model.addAttribute("page", page);
        //把查询条件也要回显
        model.addAttribute("mq", mq);
        //查询流派
        List<Mtype> mtypes = mtypeService.selectObjectAll();
        model.addAttribute("mtypes", mtypes);
        return "song";
    }



    @RequestMapping("toAdd")
    public String toAdd(Model model){
        //查询流派
        List<Mtype> mtypes = mtypeService.selectObjectAll();
        List<Album> albums = albumService.selectObjectAll();
        List<Songer> songers = songerService.selectObjectAll();
        model.addAttribute("mtypes", mtypes);
        model.addAttribute("albums", albums);
        model.addAttribute("songers", songers);
        return "addSong";
    }


    @RequestMapping("add")
    public String add(Song song ){
        songService.insert(song);
        return "redirect:list";
    }


    /*修改歌曲*/
   @RequestMapping("updatelist")
    public String updatelist(Integer sid, Model model){
       Song song = songService.selectSongupdate(sid);
       List<Mtype> mtypes = mtypeService.selectObjectAll();
       model.addAttribute("mtypes", mtypes);
       model.addAttribute("song",song);
       return "updateSong";
   }

   @RequestMapping("update")
    public String update(Song song){
       System.out.println(song);
       songService.updateByPrimaryKeySelective(song);
       return  "redirect:list";
   }

    @ResponseBody
    @RequestMapping("delSong")
    public String delSong(int sid){
        songService.deleteByPrimaryKey(sid);
        return "success";
    }


}
