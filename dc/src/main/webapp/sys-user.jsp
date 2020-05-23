<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/common/common.jspf" %>
<html>
<head>
    <title>My JSP 'MyJsp.jsp' starting page</title>

    <script type="text/javascript">
        $(function(){
                $("#bt1").click(
                    function(){
                        var account = $("#account").val();
                        alert(account);
                        $.post(
                            "sysUser/insert2.mvc",
                            {"account":$("#account").val(),"userName":"name1001"},
                            function(json){
                                alert(json.msg);
                            },
                            "json"
                        );
                    }
                );
            }
        );

    </script>

</head>
<body>
请输入需要添加的用户信息
<hr>
<form action="/sysUser/insert.mvc" method="post">
    账号：<input type="text"	name="account"><br>
    名称：<input type="text" name="userName"><br>
    密码：<input type="text" name="password"><br>
    <input type="submit" value="ok">
</form>
<br>
请输入需要添加的用户信息2(返回本页面)
<hr>
<form action="/sysUser/insert2.mvc" id="form2" method="post">
    账号：<input type="text"  id="account"	name="account"><br>
    名称：<input type="text" id="userName" name="userName"><br>
    密码：<input type="text" name="password"><br>
    <input type="button" id="bt1" value="ok">
</form>

<br>
请输入需要查询的用户编号(返回本页面)
<hr>
<form action="/sysUser/selectByKey.mvc"  method="post">
    编号：<input type="text"  	name="id"><br>
    <input type="submit"  value="搜索">
</form>
</body>
</html>
