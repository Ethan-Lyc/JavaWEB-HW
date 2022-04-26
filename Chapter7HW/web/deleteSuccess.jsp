<%@ page import="com.demo.dao.BookDAo" %><%--
  Created by IntelliJ IDEA.
  User: douzi
  Date: 2022/4/26
  Time: 16:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成功删除书籍</title>
</head>
<body>
<%
    BookDAo bookdao = new BookDAo();
    int i = bookdao.deleteBook(request.getParameter("book_num"));
    if( i > 0){
        out.print("删除成功");
    }else{
        out.print("删除失败");
    }
%>
</body>
</html>
