<%@ page import="javax.sound.midi.SysexMessage" %><%--
  Created by IntelliJ IDEA.
  User: douzi
  Date: 2022/4/20
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <fp>用户名：<%=request.getParameter("username")%></fp>

    <p>密码：<%= request.getParameter("password")%></p>

    <p>性别： <%= request.getParameter("sex")%>
    <p>民族: <%= request.getParameter("nation")%>
    <p> 年龄: <%= request.getParameter("age")%>  </p>
    <p>爱好：<% String[] values = request.getParameterValues("hobby");
            for(int i = 0; i < values.length; i++){
                out.print(values[i]);
                out.print("\t");
            }%>

    <p>个人介绍:  <%= request.getParameter("description")%></p>
</table>
</body>
</html>
