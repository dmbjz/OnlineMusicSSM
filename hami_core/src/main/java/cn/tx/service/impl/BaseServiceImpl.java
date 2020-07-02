package cn.tx.service.impl;

import cn.tx.dao.BaseDao;
import cn.tx.service.BaseService;
import cn.tx.util.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Method;
import java.util.List;


public class BaseServiceImpl<Q, T> implements BaseService<Q, T> {


    protected BaseDao<Q, T> baseDao;

    @Override
    public int deleteByPrimaryKey(Integer tid) {
        return baseDao.deleteByPrimaryKey(tid);
    }

    @Override
    public int insert(T record) {
        return baseDao.insert(record);
    }

    @Override
    public T selectByPrimaryKey(Integer tid) {
        return baseDao.selectByPrimaryKey(tid);
    }

    @Override
    public int updateByPrimaryKeySelective(T record) {
        return baseDao.updateByPrimaryKeySelective(record);
    }

    @Override
    public List<T> selectObjectAll() {
        return baseDao.selectObjectAll();
    }

    @Override
    public List<T> selectByCondition(Q q) {
        return baseDao.selectByCondition(q);
    }

    @Override
    public Page<T> selectByConditionPage(Q q) {
        //定义一个Page对象
        Page<T> page = new Page<>();
        //获得查询对象的类对象
        Class<?> cq = q.getClass();
        //获得getPageNo方法
        try {
            Method getPageNo = cq.getDeclaredMethod("getPageNo", null);
            Method getPageSize = cq.getDeclaredMethod("getPageSize", null);
            //通过反射调用
            Integer pageNo = (Integer) getPageNo.invoke(q, null);
            Integer pageSize = (Integer) getPageSize.invoke(q, null);
            //获得
            Method setStartNum = cq.getDeclaredMethod("setStartNum", Integer.class);
            setStartNum.invoke(q, (pageNo - 1) * pageSize);
            //设置page对象
            page.setPageSize(pageSize);
            page.setPageNo(pageNo);
            page.setStartNum((pageNo - 1) * pageSize);

            //查询指定条件下的总记录数
            Integer totalCount = baseDao.selectByConditionCount(q);
            page.setTotalCount(totalCount);
            //查询结果集
            List<T> list = baseDao.selectByCondition(q);
            page.setList(list);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return page;
    }


}
