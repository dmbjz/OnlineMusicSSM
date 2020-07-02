package cn.tx.service;

import cn.tx.model.Album;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:beans.xml"})
public class AlbumServiceTest {

    @Autowired
    AlbumService albumService;


    @Test
    public void insert(){
        Album a = new Album();
        a.setAname("世纪唱片");
        a.setCompany("滚石");
        albumService.insert(a);
    }



}