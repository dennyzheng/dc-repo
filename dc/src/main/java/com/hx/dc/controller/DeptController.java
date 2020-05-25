package com.hx.dc.controller;

import com.hx.dc.entity.Dept;
import com.hx.dc.service.DeptService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * Created by zcf on 2020/5/6.
 */
@Controller
@RequestMapping("dept")
public class DeptController {

    //B开发人员修改
    private String testB;

    //A开发人员修改
    private String testA;

    //A开发人员修改
    private String testA2;

    @Resource
    private DeptService deptService;


    @RequestMapping(value="/insert")
    public String insert(Dept dept){
        System.out.println("---action.dept:"+dept);
        deptService.insert(dept);
        return "forward:/WEB-INF/main.jsp";
    }

    @RequestMapping("/doAjax")
    @ResponseBody //如果返回json格式，需要这个注解，这里用来测试环境
    public Object doAjax(Dept dept){
        System.out.println("---doAjax.dept:"+dept);
        dept.setDeptName("研发中心");
        return dept;
    }

}

