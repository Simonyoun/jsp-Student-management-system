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
	<style type="text/css">
	       body{
	           background-image: url('./img/apic3595.jpg');
	           background-size: cover;
	       }
	</style>
  </head>
  
  <body>
     <% String ID=(String)session.getAttribute("ID");
        String touxiang=(String)session.getAttribute("touxiang");
     if(touxiang.trim().equals("")){
        touxiang ="1.png";
    }else{
       touxiang=touxiang.trim();
    }
       ID=ID.trim();
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
   	  String sal="select * from 学籍卡   where ID='"+ID+"'";
   	  ResultSet rs=stmt.executeQuery(sal);
   	  if(rs.next()){
   	  %>


                 <table border="1" align="center" style="text-align: center;margin-top: 50px;">
                        <tr>
                            <th colspan="10" style="border:none;">学籍卡</th>
                        </tr>
                        <tr>
                            <td>姓名</td>
                            <td colspan="2" width="100px"><%=rs.getString("姓名") %></td>
                            <td>性别</td>
                            <td colspan="2" width="100px"><%=rs.getString("性别") %></td>
                            <td>姓名拼音</td>
                            <td colspan="2" width="100px"><%=rs.getString("姓名拼音") %></td>
                            <td rowspan="6" width="100px">
                            <img style="width: 100px;height:140px;" alt="" src="img/<%=touxiang%>">
                            </td>
                        </tr>
                        <tr>
                           <td>出生日期</td>
                           <td colspan="2" width="100px"><%=rs.getString("出生日期") %></td>
                           <td >婚否</td>
                           <td colspan="2" width="100px"><%=rs.getString("婚否") %></td>
                           <td>本人电话</td>
                           <td colspan="2" width="100px"><%=rs.getString("本人电话") %></td>
                        </tr>
                        <tr>
                           <td>专业方向</td>
                           <td colspan="2" width="100px"><%=rs.getString("专业方向") %></td>
                           <td>政治面貌</td>
                           <td colspan="4"><%=rs.getString("政治面貌") %></td>
                        </tr>
                         <tr>
                           <td>籍贯</td>
                           <td colspan="7"><%=rs.getString("籍贯") %></td>
                        </tr>
                        <tr>
                            <td>入党团时间</td>
                            <td colspan="3"><%=rs.getString("入党团时间") %></td>
                            <td>民族</td>
                            <td colspan="3" width="100px"><%=rs.getString("民族") %></td>
                        </tr>
                         <tr>
                            <td>学习形式</td>
                            <td colspan="2" width="100px"><%=rs.getString("学习形式") %></td>
                            <td>学习层次</td>
                            <td colspan="2" width="100px"><%=rs.getString("学习层次") %></td>
                            <td>外语种类</td>
                            <td colspan="1" width="100px"><%=rs.getString("外语种类") %></td>
                        </tr>
                        <tr>
                            <td>家庭现住址</td>
                            <td colspan="5"><%=rs.getString("家庭现住址") %></td>
                            <td>火车到站</td>
                            <td colspan="4" width="100px"><%=rs.getString("火车到站") %></td>
                        </tr>
                        <tr>
                            <td>邮政编码</td>
                            <td colspan="2" width="100px"><%=rs.getString("邮政编码") %></td>
                            <td >家庭电话</td>
                            <td colspan="2"><%=rs.getString("家庭电话") %></td>
                            <td>联系人</td>
                            <td colspan="3" width="100px"><%=rs.getString("联系人") %></td>
                        </tr>
                 </table>
           	  <%
   	  }
   	 rs.close();
     stmt.close();
     con.close();
   	   %>
        </body>
</html>
