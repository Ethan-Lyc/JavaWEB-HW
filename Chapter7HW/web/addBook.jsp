<%--
  Created by IntelliJ IDEA.
  User: douzi
  Date: 2022/4/26
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div style="text-align:center;margin-top: 120px">
    <form action="AddBookServlet" method="post">
        <table style="margin-left:40%">
            <caption>添加书籍</caption>
            <tr>
                <td>书籍编号:</td>
                <td><input name="book_num" type="text" size="20" id="name" onblur="ajax();"><span id="checkname"></span></td>
            </tr>
            <tr>
                <td>书籍名称：</td>
                <td><input name="book_name" type="text" size="20" ></td>
            </tr>
            <tr>
                <td>作者:</td>
                <td><input name="book_writer" type="text" size="20" ></td>
            </tr>
            <tr>
                <td>价格:</td>
                <td><input name="book_price" type="text" size="10" ></td>
            </tr>
            <tr>
                <td>出版时间:</td>
                <td><input name="publish_time" type="text" size="10" ></td>
            </tr>
            <tr>
                <td>出版社:</td>
                <td><input name="publish_house" type="text" size="10" ></td>
            </tr>
        </table>
        <input type="submit" value="添加书籍"/>
        <input type="reset" value="重置" />

    </form>
</div>
</body>
</html>
