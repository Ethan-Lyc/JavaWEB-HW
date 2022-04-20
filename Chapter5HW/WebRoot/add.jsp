<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
  <head> <title>提交数据页面</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
  <h1>请输入用户数据</h1>
  <%request.setCharacterEncoding("UTF-8"); %>
	<form action="add2.jsp" align = center>
		编号: <input name="userid"><br> 
		姓名: <input name="username"><br>
		性别: <input name="sex"><br>
		<input type="submit" value="提交">
	</form>
	
  </body>
</html>
