<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/common/common.jspf" %>
<html>
<head>



    <title>My JSP 'json.jsp' starting page</title>
    <script type="text/javascript">
        $(function(){
                $("#bt1").click(
                    function(){
                        $.post(
                            "dept/doAjax.mvc",
                            {deptId:1001,deptName:"name1001"},
                            function(json){
                                alert(json.deptId+"||"+json.deptName);
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
<button id="bt1" >testJson</button>
</body>
</html>
