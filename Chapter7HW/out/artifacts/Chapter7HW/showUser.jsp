<%@ page import="com.demo.bean.*" %>
<%@ page import="com.demo.dao.*" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: douzi
  Date: 2022/4/26
  Time: 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--本jsp文件用于将数据库中的读者信息展现出来--%>
<html>
<head>
    <title>展示所有的读者</title>
</head>
<body>
<%
    AdminDAo adminDAo = new AdminDAo();
    List<User> list = adminDAo.showUser();
    for(User user:list){
        out.write("姓名"+ user.getName() +"  性别："+user.getSex()+ "  电话号码："+ user.getTelephone() + "邮箱"+ user.getEmail() + "<br>");
        //out.println("<br>");
    }
%><br><br>
<a href="returnBook.jsp">还书</a><br>
<a href="borrowBook.jsp">借书</a><br>
<a href="loginout.jsp">注销</a>
</body>
</html>