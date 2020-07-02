package cn.tx.dao;

import cn.tx.model.Mtype;

import java.util.List;

public interface BaseDao<Q,T> {

    int deleteByPrimaryKey(Integer tid);

    int insert(T record);

    T selectByPrimaryKey(Integer tid);

    int updateByPrimaryKeySelective(T record);

    List<T> selectObjectAll();

    List<T> selectByCondition(Q q);

    Integer selectByConditionCount(Q q);



}
