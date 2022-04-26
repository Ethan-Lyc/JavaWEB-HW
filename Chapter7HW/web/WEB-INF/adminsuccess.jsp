<%--
  Created by IntelliJ IDEA.
  User: douzi
  Date: 2022/4/26
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功页面</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    session.setAttribute("name",name);
%>
<center>
    <h1>登录成功</h1>
    <hr>
    <a href="showBooks.jsp">查看剩余书籍情况</a>
    <br>
    <a href="showUser.jsp">展示所有读者</a><br>
    <a href="register.jsp">添加用户</a><br>
    <a href="addBook.jsp">添加书籍</a><br>
    <a href="deleteBook.jsp">删除书籍</a><br>
    <br>
    <a href="loginout.jsp">注销</a><br><br>
    <a href="getmessage.jsp">查看借阅情况</a>
</center>
</body>
</html>