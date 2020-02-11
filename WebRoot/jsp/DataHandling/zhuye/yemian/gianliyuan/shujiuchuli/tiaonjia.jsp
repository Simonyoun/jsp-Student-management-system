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
    
    <title>My JSP 'tiaonjia.jsp' starting page</title>
    
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
           String a1=request.getParameter("a1");
           String a2=request.getParameter("a2");
           String a3=request.getParameter("a3");
           String a4=request.getParameter("a4");
           String a5=request.getParameter("a5");
           String a6=request.getParameter("a6");
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
   	  String sal="select * from laoshi where  ID='"+a1+"'";
     ResultSet rs=stmt.executeQuery(sal);
   	  if(rs.next()){
   	         session.setAttribute("cheng","失败");
   	         response.sendRedirect("../tianjiajiaoshi.jsp");
   	         rs.close();
             stmt.close();
             con.close();
   	  %>
   	  <% 
      }else{
      Statement stmt1 =con.createStatement();
   	  String sal1="INSERT INTO laoshi VALUES('"+a1+"','"+a2+"','"+a3+"','"+a4+"','"+a5+"','"+a6+"')";
   	  stmt1.executeUpdate(sal1);
             session.setAttribute("cheng","成功");
             stmt1.close();
            response.sendRedirect("../tianjiajiaoshi.jsp");
             
      }
    
     rs.close();
     stmt.close();
     con.close();
      %> 
      %> 
  </body>
</html>
