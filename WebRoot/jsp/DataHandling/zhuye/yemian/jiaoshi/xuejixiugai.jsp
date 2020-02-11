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
    
    <title>My JSP 'xuejixiugai.jsp' starting page</title>
    
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
	           background-image: url('./img/zzpic9209.jpg');
	           background-size: cover;
	       }
	</style>
  </head>
  
  <body>
            <form action="./jsp/DataHandling/zhuye/yemian/jiaoshi/shujiuchuli/xueji.jsp" method="post" name="a">
                <table border="1" align="center">
                <tr>
                     <th colspan="6" align="center">修改学籍</th>
                </tr>
              <tr>
                  <td>学生学号</td>
                                     
                                  <% 
      Connection con;
   	  Statement sql;
   	  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   	  String uri="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=Jiaowutong";
   	  String user="laoshi";
   	  String password="123456";
   	  con=DriverManager.getConnection(uri,user,password);
   	  Statement stmt =con.createStatement();
   	  String sal="select * from xuesheng";
   	  ResultSet rs=stmt.executeQuery(sal);
   	  
   	  %>
                   <td> <select name="name">
                   <%while(rs.next()){ %>
                                       <option value="<%=rs.getString("ID")%>"><%=rs.getString("ID")%></option>
                         <% } %>            
                   </select></td>
          <% 
         
     rs.close();
     stmt.close();
     con.close();
      %>
              </tr>
                       <tr>
                            <td>姓名*</td>  
                            <td><input name="a1" type="text" title="中文名"/></td>  
                            <td>性别*</td>  
                            <td><input name="a2" type="text" title="男或女"/></td>    
                            <td>姓名拼音*</td>  
                            <td><input name="a3" type="text" title="拼音"/></td>              
                       </tr>
                       <tr>
                            <td>出生日期*</td>  
                            <td><input name="a4" type="text" title="19xx-1x-x"/></td>  
                            <td>婚否</td>  
                            <td><input name="a5" type="text" title="是或否"/></td>    
                            <td>本人电话*</td>  
                            <td><input name="a6" type="text"   title="11位"/></td>              
                       </tr>
                       <tr>
                            <td>专业方向</td>  
                            <td><input name="a7" type="text" /></td>  
                            <td>政治面貌 </td>  
                            <td colspan="3" ><input name="a8" type="text" style="width: 380px;"/></td>                 
                       </tr>
                       <tr>
                            <td>籍贯*</td>  
                            <td colspan="5"><input name="a9" type="text" title="必填"/></td>              
                       </tr>
                       <tr>
                            <td>入党团时间</td>  
                            <td><input name="a10" type="text" /></td>  
                            <td>民族*</td>  
                            <td><input name="a11" type="text" title="56民族"/></td>                 
                       </tr>
                       <tr>
                            <td>学习形式</td>  
                            <td><input name="a12" type="text" /></td>  
                            <td>学习层次</td>  
                            <td><input name="a13" type="text"/></td>    
                            <td>外语种类</td>  
                            <td><input name="a14" type="text"/></td>              
                       </tr>
                       <tr>
                            <td>家庭现住址</td>  
                            <td><input name="a15" type="text"/></td>  
                            <td>火车到站</td>  
                            <td><input name="a16" type="text"/></td>                 
                       </tr>
                        <tr>
                            <td>邮政编码</td>  
                            <td><input name="a17" type="text"/></td>  
                            <td>家庭电话</td>  
                            <td><input name="a18" type="text"/></td>    
                            <td>联系人</td>  
                            <td><input name="a19" type="text"/></td>              
                       </tr>
                       <tr>
                           <td colspan="3" align="center" ><input type="submit" value="确认" onclick="return Check()" /></td>
                           <td colspan="3" align="center"><input type="reset" value="重置"/></td>
                       </tr>
                </table>
        </form>
        <%  String cheng=(String)session.getAttribute("cheng"); %>
        <script type="text/javascript">
         var cheng ="<%=cheng%>";
                             function Check(){
                        if(document.a.a1.value==""){
                             alert("姓名为空");
                            document.zhuce.zhanghao.focus();
                          return false;
                        }
                          if(document.a.a2.value==""){
                             alert("性别为空");
                            document.zhuce.mima.focus();
                            return false;
                          } 
                           if(document.a.a3.value==""){
                             alert("姓名拼音为空");
                            document.zhuce.mima.focus();
                            return false;
                          }    
                           if(document.a.a4.value==""){
                             alert("出生日期为空");
                            document.zhuce.mima.focus();
                            return false;
                          }   
                          if(document.a.a6.value==""){
                             alert("本人电话为空");
                            document.zhuce.mima.focus();
                            return false;
                          }    
                           if(document.a.a9.value==""){
                             alert("籍贯为空");
                            document.zhuce.mima.focus();
                            return false;
                          }        
                         return true;
                  }
                 if(cheng=="成功"){
                  alert("成功");
               }
        </script>
  </body>
</html>
