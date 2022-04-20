<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="vo.User" %>
<%@ page  import="dao.UserDao" %>
<html>
  <head><title>查询数据并显示</title></head>
  <body>
  <%request.setCharacterEncoding("UTF-8"); %>
    <%
String bh=request.getParameter("userid");
      String xm=request.getParameter("username");
      String xb=request.getParameter("sex");
      User u=new User();
      u.setUserid(bh);
      u.setUsername(xm);
      u.setSex(xb);
      UserDao dao=new UserDao();
      dao.update(u);  //实现插入
      List<User> users=dao.QueryAll();  //查询获取目前数据库中的全部记录信息

     %>
     <p>数据库中的当前修改用户信息</p>
     <%
     	String current = "编号:"+u.getUserid()+"_姓名:"+u.getUsername()+"_性别:"+u.getSex();
     	out.print(current+"<br>"); 
     %>
       <p>数据库中的全部用户信息</p>
    <% 
       for(int i=0;i<users.size();++i){
         User j=users.get(i);
         String abc="编号:"+j.getUserid()+"_姓名:"+j.getUsername()+"_性别:"+j.getSex();
         out.print(abc+"<br>");
      } %> 
  </body>
</html>

