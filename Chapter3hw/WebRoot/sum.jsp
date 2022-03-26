<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sum.jsp' starting page</title>
    
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
     <%
  String str1 = request.getParameter("shuju1");
  String str2 = request.getParameter("shuju2");
  double s1 = Double.parseDouble(str1);
  double s2 = Double.parseDouble(str2);
  double s3 = s1 + s2;
  request.setAttribute("st1", s1);
  request.setAttribute("st2", s2);
  request.setAttribute("st3", s3);
  if(s3>=0){%>
   <jsp:forward page="positive.jsp"/>
  <%}else{%>
   <jsp:forward page="negative.jsp"/>
   <%}%>
  
  </body>
</html>
