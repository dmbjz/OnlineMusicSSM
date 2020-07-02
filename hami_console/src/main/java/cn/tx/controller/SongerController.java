package cn.tx.controller;

import cn.tx.model.Album;
import cn.tx.model.Mtype;
import cn.tx.model.Song;
import cn.tx.model.Songer;
import cn.tx.query.MtypeQuery;
import cn.tx.query.SongerQuery;
import cn.tx.service.MtypeService;
import cn.tx.service.SongerService;
import cn.tx.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.management.Query;
import java.util.List;

@Controller
@RequestMapping("songer")
public class SongerController {


    @Autowired
    private SongerService songerService;

    @Autowired
    private MtypeService mtypeService;


    @RequestMapping("list")
    public String list(SongerQuery mq, Model model){
        if(mq.getPageNo() == null){
            mq.setPageNo(1);
        }
        //查询分页的数据
        Page<Songer> page = songerService.selectByConditionPage(mq);
        //把page对象发给页面
        model.addAttribute("page", page);
        //把查询条件也要回显
        model.addAttribute("mq", mq);
        //查询流派
        List<Mtype> mtypes = mtypeService.selectObjectAll();
        model.addAttribute("mtypes", mtypes);
        return "songer";
    }



    @RequestMapping("toAdd")
    public String toAdd( Model model){

        //查询流派
        List<Mtype> mtypes = mtypeService.selectObjectAll();
        model.addAttribute("mtypes", mtypes);
        return "addSonger";
    }


    @RequestMapping("add")
    public String add(Songer songer ){
        songerService.insert(songer);
        return "redirect:list";
    }


    @ResponseBody
    @RequestMapping("delSong")
    public String delSong(int srid){
        songerService.deleteByPrimaryKey(srid);
        return "success";
    }

    /*修改歌曲*/
    @RequestMapping("updatelist")
    public String updatelist(Integer srid, Model model){
        Songer songer = songerService.selectSongerupdate(srid);
        List<Mtype> mtypes = mtypeService.selectObjectAll();
        model.addAttribute("mtypes", mtypes);
        model.addAttribute("songer",songer);
        return "updateSonger";
    }

    @RequestMapping("update")
    public String update(Songer songer){
        System.out.println(songer);
        songerService.updateByPrimaryKeySelective(songer);
        return  "redirect:list";
    }

}
