package com.hx.dc.service;

import com.hx.dc.entity.Dept;

/**
 * Created by zcf on 2020/5/6.
 */
public interface DeptService {
    public Dept select(Integer deptId);
    public int insert(Dept dept);

}
