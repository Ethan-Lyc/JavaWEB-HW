<%@ page import="com.demo.dao.UserDAo" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: douzi
  Date: 2022/4/26
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--本jsp文件用于将数据库中的图书情况显示出来--%>
<html>
<head>
    <title>展示剩余书籍</title>
</head>
<body>
<%
    UserDAo userDAo = new UserDAo();
    List<String> list = userDAo.showBook();
    for(String message:list){
        out.write(message + "<br>");
        //out.println("<br>");
    }
%><br><br>
<a href="returnBook.jsp">还书</a><br>
<a href="borrowBook.jsp">借书</a><br>
<a href="loginout.jsp">注销</a>
</body>
</html>