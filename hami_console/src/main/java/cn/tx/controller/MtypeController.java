package cn.tx.controller;

import cn.tx.model.Mtype;
import cn.tx.query.MtypeQuery;
import cn.tx.service.MtypeService;
import cn.tx.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("mtype")
public class MtypeController {


    @Autowired
    private MtypeService mtypeService;


    @RequestMapping("list")
    public String list(MtypeQuery mq, Model model){
        if(mq.getPageNo() == null){
            mq.setPageNo(1);
        }
        //查询分页的数据
        Page<Mtype> page = mtypeService.selectByConditionPage(mq);
        //把page对象发给页面
        model.addAttribute("page", page);
        //把查询条件也要回显
        model.addAttribute("mq", mq);

        return "mtype";
    }

    /**
     * 添加流派
     * @param mtype
     * @return
     */
    @ResponseBody
    @RequestMapping("addMtype")
    public String addMtype(Mtype mtype){
        mtypeService.insert(mtype);
        return "success";
    }

    @ResponseBody
    @RequestMapping("getMtype")
    public Mtype getMtype(int tid){
        Mtype mtype = mtypeService.selectByPrimaryKey(tid);
        return mtype;
    }


    /**
     * 添加流派
     * @param mtype
     * @return
     */
    @ResponseBody
    @RequestMapping("updateMtype")
    public String updateMtype(Mtype mtype){
        mtypeService.updateByPrimaryKeySelective(mtype);
        return "success";
    }

    /**
     * 添加流派
     * @return
     */
    @ResponseBody
    @RequestMapping("delMtype")
    public String delMtype(int tid){
        mtypeService.deleteByPrimaryKey(tid);
        return "success";
    }

}
