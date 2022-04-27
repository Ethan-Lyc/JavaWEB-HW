<%@ page import="java.util.List" %>
<%@ page import="DAO.UserDAo" %><%--
  Created by IntelliJ IDEA.
  User: douzi
  Date: 2022/4/27
  Time: 17:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  使用java代码输出<br>
<%
  UserDAo userDAo = new UserDAo();
  List<String> list = userDAo.showBook();
  request.setAttribute("list",list);
  for(String message:list){
    out.write(message + "<br>");
    //out.println("<br>");
  }

%>
使用EL/JSTL输出<br>
  <c:forEach var="message" items="${list}">
    ${message}<br>
  </c:forEach>
  </body>
</html>
