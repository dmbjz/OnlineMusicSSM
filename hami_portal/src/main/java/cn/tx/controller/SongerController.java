package cn.tx.controller;

import cn.tx.model.Mtype;
import cn.tx.model.Song;
import cn.tx.model.Songer;
import cn.tx.query.SongQuery;
import cn.tx.query.SongerQuery;
import cn.tx.service.MtypeService;
import cn.tx.service.SongService;
import cn.tx.service.SongerService;
import cn.tx.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
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

        //歌手页面展示
        mq.setPageSize(20);//设置每页20个歌手
        List<Songer> list = page.getList();//拿到每页歌手数据
        List<List<Songer>> sList = new ArrayList<>();//4行5列，大list
        List<Songer> subList = null;//每一行的list
        for (int i = 0;i<list.size();i++){
            //判断每一行
            if (i%5==0){
                subList = new ArrayList<>();
                sList.add(subList);
            }
            Songer songer = list.get(i);
            subList.add(songer);

        }

        //查询流派
        List<Mtype> mtypes = mtypeService.selectObjectAll();
        model.addAttribute("mtypes", mtypes);
        model.addAttribute("sList", sList);
        return "songers";
    }



    @RequestMapping("getSonger")
    public String list(Integer srId, Model model){
        Songer songer = songerService.selectSongerSongsById(srId);
        model.addAttribute("songer",songer);
        return "songer";
    }


}
