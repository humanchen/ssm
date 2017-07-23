<%--&lt;%&ndash;--%>
  <%--Created by IntelliJ IDEA.--%>
  <%--User: Zhangxq--%>
  <%--Date: 2016/7/16--%>
  <%--Time: 0:07--%>
  <%--To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title>用户信息列表</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<c:if test="${!empty userList}">--%>
    <%--<c:forEach var="user" items="${userList}">--%>
        <%--姓名：${user.username} &nbsp;&nbsp;密码：${user.password} &nbsp;&nbsp; &nbsp;&nbsp;<br>--%>
    <%--</c:forEach>--%>
<%--</c:if>--%>
<%--</body>--%>
<%--</html>--%>



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
    <title>添加用户</title>
    <SCRIPT LANGUAGE=javascript>
        function p_del() {
            var msg = "您真的确定要删除吗？\n\n请确认！";
            if (confirm(msg) == true) {
                return true;
            } else {
                return false;
            }
        }
    </SCRIPT>

    <SCRIPT LANGUAGE=javascript>
        function re() {
            var msa = "您真的确定要退出吗？\n\n请确认！";
            if (confirm(msa) == true) {
                return true;
            } else {
                return false;
            }
        }
    </SCRIPT>
</head>
<body>
<div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <h>#</h>
    <marquee width=400 behavior=alternate direction=left align=middle border=1 style="color:red;"
             onmousemove="stop()" onmouseout="start()">欢迎陈思宇</marquee>
    <h>#</h>
    <a href="/user/loginOut.do" onclick="javascript:return re();">退出登录</a>
    <br>
    <h>$-----------------------------------------------------------------------------$</h>
    <br>

    <form action="/user/findUserName.do" method="post">
        姓名:<input type="text" name="userName">&nbsp;&nbsp;
        手机号:<input type="text" name="userPhone">
        <input type="submit" value="查询" style="cursor:hand">
    </form>
    <h>$-----------------------------------------------------------------------------$</h>
    <br>
    <c:if test="${!empty userList}">
        <c:forEach var="user" items="${userList}">
            <%--头像：<img src="<%=basePath%>${user.imageUrl}" style="width: 80px" style="height:60px" alt=""/>--%>
            姓名：${user.username}&nbsp;&nbsp;
            手机号：${user.password} &nbsp;&nbsp;
            <%--邮箱：${user.userEmail} &nbsp;&nbsp;--%>
            <a href="deleteuser/${user.id}" onclick="javascript:return p_del()">删除</a>
            <a href="userinfo/${user.id}">编辑</a><br>
        </c:forEach>
    </c:if>
    <h>$-----------------------------------------------------------------------------$</h>
    <br>
    <input type="button" value="新增一个人员"
           onclick="javascrtpt:window.location.href='add'" style="cursor:hand">

    <div style="position:absolute;font-size:20px;color:blue;font-weight:bold;width:360px;">
        <script>
            document.write((zjd=new Date()).getFullYear()+"年"+(zjd.getMonth()+1)+"月"+zjd.getDate() + "日 星期"+"日一二三四五六".charAt(zjd.getDay())+ " "+zjd.getHours() +":"+zjd.getMinutes()+":"+zjd.getSeconds());
        </script>
    </div>
</div>
</body>
</html>

