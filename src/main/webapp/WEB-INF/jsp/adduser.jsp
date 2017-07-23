<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/7/23 0023
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加用户</title>
</head>
<h1>添加用户</h1>
<form action="save" method="post">
    <table>
        用户名:&nbsp;&nbsp;&nbsp;&nbsp;<input name="username" maxlength="3"  value="" placeholder="用户名">
        <br><br>
        密码:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="password" maxlength="6"  value="" placeholder="密码"><br>

        <%--<h>$-----------------------------------------------------------------------------$</h>--%>
        <br><br>
        <input type="submit" value="保存"  onclick="return check(this.form)" style="cursor:hand">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type=”button” name=”Submit” style="background: violet;width:35px;cursor:hand" onclick="javascript:history.back(-1);" value="返回">
    </table>
</form>
</body>
</html>
