<%--
  Created by IntelliJ IDEA.
  User: douzi
  Date: 2022/4/26
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除书籍</title>
</head>
<body>
<div style="text-align:center;margin-top: 120px">
    <form action="deleteSuccess.jsp" method="post">
        <table style="margin-left:40%">
            <tr>
                书籍编号：<input type="text" name="book_num" >
            </tr>
            <tr>
                <input type="submit" value="确认删除">
            </tr>
        </table>
    </form>
</div>
</body>
</html>
