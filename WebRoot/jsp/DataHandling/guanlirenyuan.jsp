<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'guanlirenyuan.jsp' starting page</title>
    
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
         request.setCharacterEncoding("UTF-8");
         String CID = request.getParameter("zhanghao2");
         String Cmima = request.getParameter("mima2");
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
   	  String sal="select * from guanlirenyuan where ID='"+CID+"' and mima='"+Cmima+"'";
   	  ResultSet rs=stmt.executeQuery(sal);
   	           if(rs.next()){
   	                     session.setAttribute("mingzi",rs.getString("mingzi"));
   	                     session.setAttribute("banji","无");
   	                    session.setAttribute("leixing",rs.getString("leixing"));
   	                    session.setAttribute("touxiang",rs.getString("touxiang"));
   	                    session.setAttribute("ban","");
                             response.sendRedirect("zhuye/zhuye.jsp");
               }else{
                             response.sendRedirect("../Dengluye.jsp");
               }
     rs.close();
     stmt.close();
     con.close();
      %>
  </body>
</html>
