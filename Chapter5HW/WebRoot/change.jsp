<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head> <title>提交数据页面</title></head>
  <body>
  <h1 align=center>请输入需要修改的用户ID</h1>
  <%request.setCharacterEncoding("UTF-8"); %>
	<form action="change2.jsp" align = center>
		编号: <input name="userid"><br> 
		<input type="submit" value="提交">
	</form>
	
  </body>
</html>
