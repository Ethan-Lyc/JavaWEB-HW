<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="vo.User" %>
<%@ page  import="dao.UserDao" %>
<html>
  <head><title>查询数据并显示</title></head>
  <body>
  <%request.setCharacterEncoding("UTF-8"); %>
    <%
      String bh=request.getParameter("userid");
      UserDao dao=new UserDao();
      User cur = dao.findUserById(bh);  //查询
      List<User> users=dao.QueryAll();  //查询获取目前数据库中的全部记录信息

     %>
     <p>数据库中的当前用户信息</p>
     <%
     	String current = "编号:"+cur.getUserid()+"_姓名:"+cur.getUsername()+"_性别:"+cur.getSex();
     	out.print(current+"<br>"); 
     %>
       <p>数据库中的全部用户信息</p>
    <% 
       for(int i=0;i<users.size();++i){
         User u=users.get(i);
         String abc="编号:"+u.getUserid()+"_姓名:"+u.getUsername()+"_性别:"+u.getSex();
         out.print(abc+"<br>");
      } %> 
  </body>
</html>
