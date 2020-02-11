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
    
    <title>My JSP 'chengji.jsp' starting page</title>
    
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
	           background-image: url('./img/zzpic13038.jpg');
	           background-size: cover;
	       }
	</style>
  </head>
<body>
      <form action="./jsp/DataHandling/zhuye/yemian/neirong/chengji.jsp" method="post" name="fop">
                <table border="1" align="center">
                       <tr>
                           <td>开课时间</td>
                           <td>
                               <select name="shijian">
                                       <option value="请选择">请选择</option>
                                       <option value="2018-2019-1">2018-2019-1</option>
                                       <option value="2018-2019-2">2018-2019-2</option>
                               </select>
                           </td>
                           <td>学号搜索</td>
                           <td><input type="text" name="xuehao" id="xuehao"></td> 
                           <td><input type="submit" value="查询" onclick="return xuer();"></td>
                       </tr>
                </table>
                <script type="text/javascript">
                         function xuer(){
                               if(document.fop.shijian.value=="请选择"){
                                   alert("请选择时间");
                                 return false;
                               }
                               if(document.fop.xuehao.value==""){
                                   alert("请输入正确学号");
                                    document.fop.xuehao.focus();
                                 return false;
                               }
                             return true;
                         }
                </script>
        </form>
         <table border="1" align="center">
           	  <tr>
                  <th>序号</th>
                  <th>开课学期</th>
                  <th>课程编号</th>
                  <th>课程名称</th>
                  <th>成绩</th>
                  <th>考核方式</th>
      </tr>
                                                   <%
          request.setCharacterEncoding("UTF-8"); 
          String shijian=request.getParameter("shijian"); 
          String xuehao=request.getParameter("xuehao"); 
          
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
   	  String sal="select * from chengji where shijian='"+shijian+"' and ID='"+xuehao+"'";
   	  ResultSet rs=stmt.executeQuery(sal);
   	  while(rs.next()){
   	  %>
   	  <tr>
   	       <td><%=rs.getString("ID") %></td>
   	       <td><%=rs.getString("shijian") %></td>
   	       <td><%=rs.getString("kechengbianhao") %></td>
   	       <td><%=rs.getString("kechengmingzi") %></td>
   	       <td><%=rs.getString("chengji") %></td>
   	       <td><%=rs.getString("kaoshifangshi") %></td>
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
