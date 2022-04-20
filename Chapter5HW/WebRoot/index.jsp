<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Homepage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
        <center><h3>主页面</h3></center>
    <br><br><br>
  <table border="1" width="238" height="252" align="center">
  	<tr><td align="center"><a href="add.jsp" >添加</a></td></tr>
  	<tr><td align="center"><a href="find.jsp" >查询</a></td></tr>
  	<tr><td align="center"><a href="delete.jsp" >删除</a></td></tr>
  	<tr><td align="center"><a href="change.jsp">修改</a></td></tr>
  </table>
  </body>
</html>
