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
    
    <title>My JSP 'kanpingfen.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	       body{
	           background-image: url('./img/apic3595.jpg');
	           background-size: cover;
	       }
	</style>
  </head>
  
  <body>
       <%String ban=(String)session.getAttribute("ban");
       String ID=(String)session.getAttribute("ID"); 
        %>
        <table border="1" align="center">
              <tr><th>课程</th>
              <th>评分</th></tr>
     
          <% 
      Connection con;
   	  Statement sql;
   	  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   	  String uri="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=Jiaowutong";
   	  String user="laoshi";
   	  String password="123456";
   	  con=DriverManager.getConnection(uri,user,password);
   	  Statement stmt =con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
   	  String sal="select * from "+ban+" ";
   	  ResultSet rs=stmt.executeQuery(sal);
   	  	  rs.last();
   	  	  %>
   	  	  <tr>
   	  	  <td>共</td>
   	  	  <td><%=rs.getRow() %>评分</td>
   	  	  </tr>
      <%
      rs.beforeFirst();
   	  while(rs.next()){
   	  %>
   	  <tr>
   	       <td><%=rs.getString("ban") %></td>
   	       <td><%=rs.getString("fncu") %></td>
   	  </tr>
   	

<% 
               }
     rs.close();
     stmt.close();
     con.close();
      %>  
        </table>
  </body>
</html>
