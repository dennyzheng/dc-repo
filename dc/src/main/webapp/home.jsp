<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理系统</title>
</head>

<body>
<!-- 
方式一直接使用标签：
class="easyui-控件名"    --用来声明或创建对应控件
data-options="属性：值，属性：值..."   --用来设定控件属性值或事件
方式二采用js处理：
$(选择器).控件名({    
    属性: 值,    
    属性: 值,    
    事件：function(){},
    事件：function(){}
})
方法的使用：
$(选择器).控件名("方法名","参数");如果不需要参数，可以不写

 -->
<div id="cc" class="easyui-layout" data-options="fit:true"  style="width:600px;height:400px;">   
    <div data-options="region:'north',title:'HC后台管理系统',split:true" style="height:100px;">
    欢迎您：${sessionScope.sysUser.username}
    </div>   
    
    <div data-options="region:'west',title:'导航菜单',split:true" style="width:180px;">
		  <div id="aa" class="easyui-accordion" data-options="fit:true" style="width:300px;height:200px;">   
		   
		    <div title="系统管理" data-options="iconCls:'icon-reload'" style="padding:10px;">   
		        <a id="btn11" href="#" onclick="show('用户管理','${baseURL}/base/goURL/system/sys-user');" class="easyui-linkbutton" data-options="iconCls:'icon-search'">用户管理</a>
		        <a id="btn12" href="#" onclick="show('角色管理','role.html');" class="easyui-linkbutton" data-options="iconCls:'icon-search'">角色管理</a>     
		        <a id="btn13" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">权限管理</a>     
		    </div>
		     <div title="商品管理" data-options="iconCls:'icon-reload'" style="padding:10px;">   
		        <a id="btn21" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">商品类目管理</a>     
		        <a id="btn22" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">商品信息管理</a>        
		    </div>
		     <div title="板块管理" data-options="iconCls:'icon-reload'" style="padding:10px;">   
		        <a id="btn31" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">板块分类管理</a>     
		        <a id="btn32" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">板块内容管理</a>            
		    </div>   
		  
		</div>  
    </div>   
   
    <div data-options="region:'center',iconCls:'icon-reload',title:'主要内容'" style="padding:5px;background:#eee;">
   		<div id="tt" class="easyui-tabs" data-options="fit:true" style="width:500px;height:250px;">   
		    <div title="系统介绍" style="padding:20px;">   
		                    后台系统可以给管理员。。。。。。。    
		    </div>   
		  
		</div>  
    </div>   
</div>  

<script type="text/javascript">
function show (title,url){
	/*
	1.根据title判断选项卡中是否已经存在相关的面板
	2。如果是，选中相关的面板
	3。否则创建新的面板，尝试用href关联一个页面放到面板中		
	*/
	
	//根据title判断选项卡中是否已经存在相关的面板
	if($('#tt').tabs("exists",title)){
		//存在相关的面板，选中相关的面板
		$('#tt').tabs("select",title);
	}else{
		//创建新的面板
		$('#tt').tabs('add',{
			title: title,
			closable:true,
			href:url,
			//content:"<iframe  />",//可以加载body外的代码
			selected: true
		});		
	}
	
}
 
</script>
</body>
</html>