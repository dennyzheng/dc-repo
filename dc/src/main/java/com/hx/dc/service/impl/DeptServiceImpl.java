package com.hx.dc.service.impl;

import com.hx.dc.dao.DeptMapper;
import com.hx.dc.entity.Dept;
import com.hx.dc.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by zcf on 2020/5/6.
 */
@Service("deptService")
public class DeptServiceImpl implements DeptService {
  //根据类型从容器里找出对应的对象注入
    @Autowired
    private DeptMapper deptMapper;

    @Override
    public Dept select(Integer deptId) {
        return deptMapper.select(deptId);
    }

    @Override
    public int insert(Dept dept) {
        return deptMapper.insert(dept);
    }

}
