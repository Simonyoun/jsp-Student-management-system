<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xiugai.jsp' starting page</title>
    
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
          <% request.setCharacterEncoding("UTF-8");
          String ban =(String)session.getAttribute("ban");
           String a=request.getParameter("a5");
           String a1=request.getParameter("a6");
           String a2=request.getParameter("a7");
           String a3=request.getParameter("a8");
           String a4=request.getParameter("a9");
     %>
     <% 
      Connection con;
   	  Statement sql;
   	  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   	  String uri="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=Jiaowutong";
   	  String user="laoshi";
   	  String password="123456";
   	  con=DriverManager.getConnection(uri,user,password);
   	  Statement stmt =con.createStatement();
   	  String sal1="update chengji set shijian='"+a1+"',kechengbianhao='"+a2+"',kechengmingzi='"+ban+"',chengji='"+a3+"',kaoshifangshi='"+a4+"' where Id='"+a+"' and kechengmingzi='"+ban+"'";
   	  stmt.executeUpdate(sal1);
   	 
   	  %>
   	  <%         
     stmt.close();
     con.close();
      session.setAttribute("cheng","成功");
      response.sendRedirect("../chengjitianjia.jsp");
      %> 
  </body>
</html>
