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
    
    <title>My JSP 'xueji.jsp' starting page</title>
    
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
      String a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19;
      request.setCharacterEncoding("UTF-8") ;
      String name =request.getParameter("name");
      a1=request.getParameter("a1");
      a2=request.getParameter("a2");
      a3=request.getParameter("a3");
      a4=request.getParameter("a4");
      a5=request.getParameter("a5");
      a6=request.getParameter("a6");
      a7=request.getParameter("a7");
      a8=request.getParameter("a8");
      a9=request.getParameter("a9");
      a10=request.getParameter("a10");
      a11=request.getParameter("a11");
      a12=request.getParameter("a12");
      a13=request.getParameter("a13");
      a14=request.getParameter("a14");
      a15=request.getParameter("a15");
      a16=request.getParameter("a16");
      a17=request.getParameter("a17");
      a18=request.getParameter("a18");
      a19=request.getParameter("a19");
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
   	  String sal1="update 学籍卡 set 姓名='"+a1+"',性别='"+a2+"',姓名拼音='"+a3+"',出生日期='"+a4+"',婚否='"+a5+"',本人电话='"+a6+"',专业方向='"+a7+"',政治面貌='"+a8+"',籍贯='"+a9+"',入党团时间='"+a10+"',民族='"+a11+"',学习形式='"+a12+"',学习层次='"+a13+"',外语种类='"+a14+"',家庭现住址='"+a15+"',火车到站='"+a16+"',邮政编码='"+a17+"',家庭电话='"+a18+"',联系人='"+a19+"' where Id='"+name+"' ";
   	  stmt.executeUpdate(sal1);

   	  
   	  %>
   
   	  <% 
     session.setAttribute("cheng","成功");
     stmt.close();
     con.close();
     response.sendRedirect("../xuejixiugai.jsp");
      %>  
  </body>
</html>
