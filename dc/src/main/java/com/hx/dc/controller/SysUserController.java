package com.hx.dc.controller;

import com.github.pagehelper.PageInfo;
import com.hx.dc.entity.SysUser;
import com.hx.dc.service.SysUserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by zcf on 2020/5/7.
 */
@Controller
@RequestMapping("sysUser")
public class SysUserController extends BaseController {

    @Resource
    private SysUserService sysUserService;

    @RequestMapping("insert")
    public String insert(SysUser sysUser){
        sysUserService.insert(sysUser);
        return "forward:/WEB-INF/main.jsp";
    }

    @RequestMapping("insert2")
    @ResponseBody
    public Object insert2(SysUser sysUser){
        int i = sysUserService.insert(sysUser);
        Map<String,String> map = new HashMap<>();
        if(i>0){
            map.put("msg","操作成功！");
        }else{
            map.put("msg","操作失败！");
        }
        return map;
    }

    @RequestMapping("selectByKey")
    @ResponseBody
    public Object selectByKey(Integer id){
       SysUser sysUser = sysUserService.selectByPrimaryKey(id);
       return sysUser;
    }

    @RequestMapping("login")
    public String login(SysUser sysUser){
        //SysUser sysUser = sysUserService.selectByPrimaryKey(id);
        return "forward:/WEB-INF/main.jsp";
    }

    /*
    分页查询：
    查询参数：page  int  表示当前页
              rows  int   表示页大小

     返回的数据：json格式，{"total":28,"rows":[ ]}
             total  int   表示匹配的数据条数
             rows   数组   表示查询出来的数据列表
     */
    @RequestMapping("selectPage")
    @ResponseBody
    public Object selectPage(SysUser sysUser,Integer page,Integer rows){
      //调用业务层查询数据
      PageInfo<SysUser> pageInfo = sysUserService.selectPage(sysUser,page,rows);
      /*   Map<String,Object> pageMap = new HashMap<>();
        pageMap.put("total",pageInfo.getTotal());//获取总记录数
        pageMap.put("rows",pageInfo.getList());//获取用户数据列表
        return  pageMap;*/
       //return getPageMap(pageInfo);
        return getPageResult(pageInfo);
    }
}
