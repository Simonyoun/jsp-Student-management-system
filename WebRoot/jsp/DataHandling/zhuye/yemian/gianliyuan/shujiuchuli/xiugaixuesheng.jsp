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
    
    <title>My JSP 'xiugaixuesheng.jsp' starting page</title>
    
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
           String a=request.getParameter("a8");
           String a1=request.getParameter("a9");
           String a2=request.getParameter("a10");
           String a3=request.getParameter("a11");
           String a4=request.getParameter("a12");
           String a5=request.getParameter("a13");
           String a6=request.getParameter("a14");
           
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
   	  String sal1="update xuesheng set mima='"+a1+"',mingzi='"+a2+"',leixing='"+a4+"',banji='"+a3+"',touxiang='"+a5+"',ban='"+a6+"'  where Id='"+a+"' ";
   	  stmt.executeUpdate(sal1);
   	 
   	  %>
   	  <%         
     stmt.close();
     con.close();
      session.setAttribute("cheng","成功");
      response.sendRedirect("../toanjiuxuesheng.jsp");
      %> 
  </body>
</html>
