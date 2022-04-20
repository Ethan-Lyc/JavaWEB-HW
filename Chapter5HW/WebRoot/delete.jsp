<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head> <title>删除数据页面</title></head>
  <body>
  <h1 align=center>请输入需要删除的用户ID</h1>
  <%request.setCharacterEncoding("UTF-8"); %>
	<form action="delete2.jsp" align = center>
		编号: <input name="userid"><br> 
		<input type="submit" value="提交">
	</form>
	
  </body>
</html>
