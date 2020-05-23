package com.hx.dc.dao;

import java.util.List;

/**
 * Created by zcf on 2020/5/7.
 */
public interface BaseMapper<T> {

   <K> int  deleteByPrimaryKey(K id);

    int insert(T record);

    int insertSelective(T record);

    <K> T selectByPrimaryKey(K id);

    int updateByPrimaryKeySelective(T record);

    int updateByPrimaryKey(T record);
    //分页查询
    List<T> selectPage(T record);
}
