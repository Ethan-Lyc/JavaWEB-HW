<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="vo.User" %>
<%@ page  import="dao.UserDao" %>
<html>
  <head><title>接受数据并实现添加</title></head>
  <body>
  
    <% request.setCharacterEncoding("UTF-8"); 
      String bh=request.getParameter("userid");
      String xm=request.getParameter("username");
      String xb=request.getParameter("sex");
      User u=new User();
      u.setUserid(bh);
      u.setUsername(xm);
      u.setSex(xb);
      UserDao dao=new UserDao();
      dao.add(u);  //实现插入
      List<User> users=dao.QueryAll();  //查询获取目前数据库中的全部记录信息
      request.setAttribute("users_list", users);
     %>
     //转向到c.jsp网页
    <jsp:forward page="showAll.jsp"></jsp:forward>
  </body>
</html>
