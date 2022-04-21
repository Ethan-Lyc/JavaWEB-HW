<%--
  Created by IntelliJ IDEA.
  User: douzi
  Date: 2022/4/20
  Time: 22:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8") ;
%>
<form action="Chapter6HW" method="get">
    <table>
        <fp>用户名：
            <input type="text" name="username" value=""></fp>

        <p>密码：   <input type="password" name="password"value="" required placeholder="密码长度必须大于3位"></p>

        <p>性别：
            <input type="radio" name="sex" value="女">女
            <input type="radio" name="sex" value="男">男

        <p>民族:
            <select name="nation" id="reg">
                <option value="汉族">汉族</option>
                <option value="维吾尔族">维吾尔族</option>
                <option value="回族">回族</option>
            </select>
        <p> 年龄:<input type="text"   name="age"  value=""></p>
        <p>爱好：
            <input type="checkbox" name="hobby" value="游泳">游泳
            <input type="checkbox" name="hobby" value="羽毛球">羽毛球
            <input type="checkbox" name="hobby" value="篮球">篮球
            <input type="checkbox" name="hobby" value="乒乓球">乒乓球</p>
        <p>个人介绍:       <textarea rows="5" cols="50" name="description"></textarea></p>
        <td colspan="2"><input type="submit" name="submit" value="注册">   <input type="reset"></td>
    </table>
</form>
</body>
</html>
