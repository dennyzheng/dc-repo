<%@page import="com.cn.webdemo3.entity.Custom"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
这是主界面，你的注册信息是：<br>
<%

Custom custom = (Custom)request.getAttribute("custom") ;
out.print("客户编号："+custom.getCustomNo()+"<br>");
out.print("客户名称："+custom.getCustomName()+"<br>");
out.print("客户年龄："+custom.getCustomAge()+"<br>");
%>
</body>
</html>