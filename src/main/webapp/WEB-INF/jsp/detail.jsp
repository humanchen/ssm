<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>详情页面</title>

    <SCRIPT LANGUAGE=javascript>
        function p_del() {
            var msg = "您真的确定要更改吗？\n\n请确认！";
            if (confirm(msg) == true) {
                return true;
            } else {
                return false;
            }
        }
    </SCRIPT>
</head>
<body>
<table>
    <form action="updateuser" method="post" enctype="multipart/form-data">
        编号：<span style="color:red;">${user.id}</span><br>
        用户名:&nbsp;&nbsp;<input name="username" maxlength="3" placeholder="" value="${user.username}"><br>
        密码:&nbsp;<input name="password" maxlength="11" placeholder="" value="${user.password}"><br>
        <input type="hidden" name="id" value="${user.id }"/>
        <h>$-----------------------------------------------------------------------------$</h>
        <br>
        <input type="submit" value="修改" onclick="javascript:return p_del()" style="cursor:hand">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type=”button” name=”Submit” style="background: violet;width:35px;cursor:hand" onclick="javascript:history.back(-1);" value="返回">
</table>
</form>
</body>
</html>
