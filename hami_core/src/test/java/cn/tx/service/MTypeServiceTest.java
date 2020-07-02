package cn.tx.service;

import cn.tx.model.Mtype;
import cn.tx.query.MtypeQuery;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:beans.xml"})
public class MTypeServiceTest {

    @Autowired
    private MtypeService mTypeService;

    @Test
    public void deleteByPrimaryKey() {
        mTypeService.deleteByPrimaryKey(39);
    }

    @Test
    public void insert() {
        Mtype mtype = new Mtype();
        mtype.setTname("超级摇滚");
        mtype.setTdesc("就是摇滚中的妖滚");
        mTypeService.insert(mtype);
    }

    @Test
    public void insertSelective() {
    }

    @Test
    public void selectByPrimaryKey() {

        Mtype mtype = mTypeService.selectByPrimaryKey(39);
        System.out.println(mtype);
    }

    @Test
    public void updateByPrimaryKeySelective() {
    }

    @Test
    public void updateByPrimaryKey() {
    }

    @Test
    public void selectByCondition() {
        MtypeQuery mtypeQuery  =  new MtypeQuery();
        mtypeQuery.setTname("摇");


        List<Mtype> mtypes = mTypeService.selectByCondition(mtypeQuery);
        System.out.println(mtypes);
    }
}