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
    
    <title>My JSP 'pingfen.jsp' starting page</title>
    
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
	           background-image: url('./img/bpic7718.jpg');
	           background-size: cover;
	       }
	</style>
  </head>
  
  <body>
          <table border="1" style="text-align:center;position: absolute;top: 100px;left: 34%;" align="center">
                 <tr>
                      <th>序号</th>
                      <th>学年学期</th>
                      <th>评价分类</th>
                      <th>评价批次</th>
                      <th>开始时间</th>
                      <th>结束时间</th>
                      <th>操作</th>
                 </tr>
                   <% 
      Connection con;
   	  Statement sql;
   	  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   	  String uri="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=Jiaowutong";
   	  String user="laoshi";
   	  String password="123456";
   	  con=DriverManager.getConnection(uri,user,password);
   	  Statement stmt =con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
   	  String sal="select * from pingfen";
   	  ResultSet rs=stmt.executeQuery(sal);
   	  rs.last();
   	  %>
   	  <tr>
   	       <td colspan="7" style="color:#FF0000;">你有"<%=rs.getRow() %>"条需要评价</td>
   	  </tr>
   	  <%
   	  rs.beforeFirst();
   	  while(rs.next()){
   	  %>
   	  <tr>
   	      <td><%=rs.getString("序号") %></td>
   	      <td><%=rs.getString("学年学期") %></td>
   	      <td><%=rs.getString("评价分类") %></td>
   	      <td><%=rs.getString("评价批次") %></td>
   	      <td><%=rs.getString("开始时间") %></td>
   	      <td><%=rs.getString("结束时间") %></td>
   	      <td><a href="jsp/DataHandling/zhuye/yemian/neirong/<%=rs.getString("操作").trim() %>.jsp" target="wei">查询</a></td>
   	  </tr>
   	 <%
   	 session.setAttribute("naoxi", rs.getString("评价分类"));
   	  }
   	  
   	 rs.close();
     stmt.close();
     con.close();
   	   %>
 
          </table>
            	   <%  String cheng=(String)session.getAttribute("cheng"); %>
                  <script type="text/javascript">
                  var cheng="<%=cheng%>";
                       if(cheng=="成功"){
                  alert("成功");
               }
        </script>
  </body>
</html>
