<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  include file="/common/common.jspf" %>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="base" value="${pageContext.request.contextPath }"></c:set> --%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">   
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">   
<script type="text/javascript" src="easyui/jquery.min.js"></script>   
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script> -->
<title>Insert title here</title>
</head>
<script type="text/javascript">
function login(){
	//如果检证通过将提交请求
	if($('#ff').form('validate')){
		$('#ff').submit();
	}else{
		return false;
	}
}
</script>
<body>

<div id="win">
<div style="color:red">
    ${requestScope.errmsg}
    </div>
    <form id="ff" action="${proPath}/sysUser/login.mvc" method="post">
        <div>
            <label for="account">账号:</label>
            <input class="easyui-validatebox" type="text" name="account" data-options="required:true,validType:'length[4,36]'" />
        </div>
        <div>
            <label for="password">密码:</label>
            <input class="easyui-validatebox" type="text" name="password" data-options="required:true,validType:'length[4,32]'" />
        </div>
        <div><a id="btn" href="#" class="easyui-linkbutton" onclick="login()" data-options="iconCls:'icon-search'">登陆</a>
        </div>
    </form>
</div>

<script type="text/javascript">
$('#win').window({
	title:'登陆窗口',
    width:280,    
    height:150,    
    modal:true   
});
 </script>
</body>
</html>