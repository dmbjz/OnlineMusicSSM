package cn.tx.controller;

import cn.tx.model.Mtype;
import cn.tx.model.Song;
import cn.tx.model.Songer;
import cn.tx.query.SongQuery;
import cn.tx.service.MtypeService;
import cn.tx.service.SongService;
import cn.tx.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.nio.cs.UnicodeEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("song")
public class SongController {

    @Autowired
    private SongService songService;

    @Autowired
    private MtypeService mtypeService;

    @RequestMapping("list")
    public String list(SongQuery mq, Model model) {
        if (mq.getPageNo() == null) {
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
        return "search";
    }


    @RequestMapping("play")
    public String play(String sids, HttpServletRequest request, HttpServletResponse response, Model model) throws UnsupportedEncodingException {

        //获取到前台传过来的歌曲ID，判断是否为空，然后去掉分隔符转成list
        String[] idsArray = null;
        if (sids != null && !"".equals(sids)) {
            idsArray = sids.split(",");
        }

        /*历史记录逻辑:
         *
         * 1.之前打开的播放页的选中歌曲数据储存在cookie中
         * 2.判断cookie有没有值
         * 3.有旧数据，遍历cookies，拿到cookies名字
         * 4.判断名字和设置单位cookies名字是否一样
         *
         * */
        Cookie[] cookies = request.getCookies();
        String cookieIds = null;
        String[] idsArrCookie = null;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                String name = cookie.getName();
                if ("playids".equals(name)) {
                    cookieIds = cookie.getValue();
                    cookieIds = URLDecoder.decode(cookieIds, "UTF-8");  //解码，将加密为乱码的cookie转为看得懂的编码
                }
            }
        }
        if (cookieIds != null) {
            idsArrCookie = cookieIds.split(",");
        }


        /*判断存放id的string数值是否有值，有就放到list里面*/
        List<Integer> sidsInt = new ArrayList<>();
        cookieIds = "";
        if (idsArray != null) {
            for (String s : idsArray) {
                sidsInt.add(new Integer(s));
                cookieIds = cookieIds + s + ",";
            }
            if (idsArrCookie != null) {
                /*去重*/
                for (String s : idsArrCookie) {
                    Integer sid = new Integer(s);
                    boolean exists = false;
                    //如果cookie和当前存放的有一样id就终止
                    for (Integer i : sidsInt) {
                        if (sid.equals(i)) {
                            exists = true;
                            break;
                        }
                    }
                    if (!exists) {
                        sidsInt.add(sid);
                        cookieIds = cookieIds + ",";
                    }

                }
            }

        }

        //如果什么都不选，直接点，传一个不存在的负数id值避免SQL语句报错，跳珠到空页面
        if (sidsInt.size() == 0) {
            sidsInt.add(-1);
        }


        cookieIds = URLEncoder.encode(cookieIds, "UTF-8");
        Cookie cookie = new Cookie("playids", cookieIds);
        cookie.setMaxAge(60 * 60 * 24 * 30);
        cookie.setPath("/");
        response.addCookie(cookie);
        /*将储存多个id的list集合作为参数发给services调用dao做查询并返回数据*/
        List<Song> songs = songService.selectSongBySids(sidsInt);
        model.addAttribute("songs", songs);
        return "player";
    }

    @ResponseBody
    @RequestMapping("getSong")
    public Song getSong(Integer sid){
        Song song = songService.selectSongBySid(sid);
        return song;
    }


}
