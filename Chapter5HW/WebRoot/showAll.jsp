<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page  import="vo.User" %>
<html>
  <head><title>查询后显示目前数据库中的全部记录信息</title></head>
  <body>
  
  <p>数据库中的全部用户信息</p>
    <% List<User> users= (List<User>)(request.getAttribute("users_list"));
       for(int i=0;i<users.size();++i){
         User u=users.get(i);
         String abc="编号:"+u.getUserid()+"_姓名:"+u.getUsername()+"_性别:"+u.getSex();
         out.print(abc+"<br>");
      } %> 
  </body>
</html>

