<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="vo.User" %>
<%@ page  import="dao.UserDao" %>
<html>
  <head><title>需要修改的用户信息如下</title></head>
  <body>
  <%request.setCharacterEncoding("UTF-8"); %>
    <%
      String bh=request.getParameter("userid");
      UserDao dao=new UserDao();
      User cur = dao.findUserById(bh);  //查询
      List<User> users=dao.QueryAll();  //查询获取目前数据库中的全部记录信息
     %>
     <form  action="change3.jsp" align = center>
		编号: <input name="userid" value=<%=cur.getUserid()%>><br> 
		姓名: <input name="username" value=<%=cur.getUsername()%>><br>
		性别: <input name="sex" value=<%=cur.getSex()%>><br>
		<input type="submit" value="提交">
	</form>

  </body>
</html>

