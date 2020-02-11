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
    
    <title>My JSP 'laoshi.jsp' starting page</title>
    
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
         String CID = request.getParameter("zhanghao1");
         String Cmima = request.getParameter("mima1");
      %>
    <% 
      Connection con;
   	  Statement sql;
   	  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   	  String uri="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=Jiaowutong";
   	  String user="laoshi";
   	  String password="123456";
   	  con=DriverManager.getConnection(uri,user,password);
   	  Statement stmt =con.createStatement();////
   	  String sal="select * from laoshi where ID='"+CID+"' and mima='"+Cmima+"' ";
   	  ResultSet rs=stmt.executeQuery(sal);
   	       if(rs.next()){  
   	                    session.setAttribute("ID",rs.getString("ID")); 
   	                    session.setAttribute("mima",rs.getString("mima"));   
   	                    session.setAttribute("mingzi",rs.getString("mingzi"));
   	                    session.setAttribute("banji",rs.getString("ban"));
   	                    session.setAttribute("leixing",rs.getString("leixing"));
   	                    session.setAttribute("touxiang",rs.getString("touxiang"));
   	                    session.setAttribute("ban",rs.getString("ban"));
   	                    response.sendRedirect("zhuye/zhuye.jsp");

   	       }else{
   	             response.sendRedirect("../Dengluye.jsp");   
   	      }
   	  %>
   	 <%   
     rs.close();
     stmt.close();
     con.close();
      %>
  </body>
</html>
