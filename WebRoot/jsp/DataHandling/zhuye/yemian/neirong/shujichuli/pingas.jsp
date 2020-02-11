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
    
    <title>My JSP 'pingas.jsp' starting page</title>
    
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
            request.setCharacterEncoding("UTF-8") ;
            String a=request.getParameter("1");
            String b=request.getParameter("2");
            String c=request.getParameter("3");
            String d=request.getParameter("4");
            String e=request.getParameter("5");
            int exam=0;
            if(a==null){
            exam=exam+0;
            }
            if(a==null){
            exam=exam+0;
            }
            if(a==null){
            exam=exam+0;
            }
            if(a==null){
            exam=exam+0;
            }
            if(a==null){
            exam=exam+0;
            }
            
            if(a.equals("A")){
                exam=exam+20;
            }else if(a.equals("B")){
                exam=exam+10;
            }
            if(b.equals("A")){
                exam=exam+20;
            }else if(b.equals("B")){
                exam=exam+10;
            }
            if(c.equals("A")){
                exam=exam+20;
            }else if(c.equals("B")){
                exam=exam+10;
            }
            if(d.equals("A")){
                exam=exam+20;
            }else if(d.equals("B")){
                exam=exam+10;
            }
            if(e.equals("A")){
                exam=exam+20;
            }else if(e.equals("B")){
                exam=exam+10;
            }
         %>
         <%String wwer=(String)session.getAttribute("naoxi");
              wwer=wwer.trim();
         String ban=(String)session.getAttribute("ban");
         %>
           <% 
      Connection con;
   	  Statement sql;
   	  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   	  String uri="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=Jiaowutong";
   	  String user="laoshi";
   	  String password="123456";
   	  con=DriverManager.getConnection(uri,user,password);
      Statement stmt1 =con.createStatement();
   	  String sal1="INSERT INTO "+wwer+" VALUES('"+ban+"','"+exam+"')";
   	  stmt1.executeUpdate(sal1);    
     stmt1.close();
     con.close();
            session.setAttribute("cheng","成功");
            response.sendRedirect("../pingfen.jsp");

      %> 
  </body>
</html>
