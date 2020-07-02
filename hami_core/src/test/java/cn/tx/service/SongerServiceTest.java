package cn.tx.service;

import cn.tx.model.Songer;
import cn.tx.query.SongerQuery;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:beans.xml"})
public class SongerServiceTest {

    @Autowired
    private SongerService songerService;

    @Test
    public void deleteByPrimaryKey() {
        songerService.deleteByPrimaryKey(2);
    }

    @Test
    public void insert() {
        Songer songer = new Songer();
        songer.setSrname("james");
        songer.setArea("欧美");
        songer.setIsHot(2);

        songerService.insert(songer);

    }

    @Test
    public void selectByPrimaryKey() {
        Songer songer = songerService.selectByPrimaryKey(1);
        System.out.println(songer);
    }


    @Test
    public void selectByCondition() {
        SongerQuery query = new SongerQuery();
        query.setIsHot(1);
        //query.setArea("大陆");
        //query.setSrname("亮");
        List<Songer> songers = songerService.selectByCondition(query);
        System.out.println(songers);
    }


    @Test
    public void selectSonger() {

        Songer songer = songerService.selectSongerSongsById(13);
        System.out.println(songer);

    }
}