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
    
    <title>My JSP 'chengjitianjia.jsp' starting page</title>
    
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
            background-image: url('./img/opdi.jpg');
            background-size: cover;
       }
       li{
           
           float:left;
           list-style: none;
           margin-left: 200px;
        }
        a{
           text-decoration: none;
           color: 	#F0FFFF;
        }
        a:HOVER {
           opacity: 0.6;
	
}
  </style>
  </head>
  
  <body>
         <div>
               <ul>
                    <li><a href="javascript:void(0)" onclick="sdf(1,2,3)">添加学生成绩</a></li>
                    <li><a href="javascript:void(0)" onclick="sdf(2,1,3)">修改学生成绩</a></li>
                    <li><a href="javascript:void(0)" onclick="sdf(3,1,2)">删除学生成绩</a></li>
               </ul>
         </div>

          <form id="1" action="./jsp/DataHandling/zhuye/yemian/jiaoshi/shujiuchuli/tianjiachengji.jsp" method="post" style="position: absolute;left:200px;top:50px;">
                    <table border="1" align="center"  style="text-align: center;">
                             <tr><th colspan="8">添加</th></tr>
                            <tr> 
                                 <td>学生学号</td>
                                          
                      <td><select name="a">
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
   	  <%  while(rs.next()){%>

                                       <option value="<%=rs.getString("ID")%>"><%=rs.getString("ID")%></option>
                                       <%} %>
                               </select></td>
                                 <td>时间</td>
                                 <td> <select name="a1">
                                       <option value="请选择">请选择</option>
                                       <option value="2018-2019-1">2018-2019-1</option>
                                       <option value="2018-2019-2">2018-2019-2</option>
                               </select>
                               </td>
                               <td>课程编号</td>
                               <td><input name="a2" type="text"/></td>
                               <td>你的课程</td>
                               <td width="80px">
                                   <% String ban =(String)session.getAttribute("ban");%>
                                   <%=ban%>
                               </td>
                               </tr>
                               <tr>
                               <td>你给出的分数</td>
                               <td><input name="a3" type="text"/></td>
                               <td>考核方式</td>
                               <td><select name="a4" style="width: 100px">
                                       <option value="请选择">请选择</option>
                                       <option value="考试">考试</option>
                                       <option value="程目 ">程目 </option>
                               </select>
                               </td>
                            </tr>
                            <tr>
                                 <td colspan="8">
                                     <input type="submit" value="提交"/>
                                     <input type="reset" value="重置"/>
                                 </td>
                            </tr>
                    </table>
          </form>
                    <form id="2" action="./jsp/DataHandling/zhuye/yemian/jiaoshi/shujiuchuli/xiugai.jsp" method="post"style="position: absolute;left:200px;top:50px;display: none;">
                    <table border="1" align="center"  style="text-align: center;">
                            <tr><th colspan="8">修改</th></tr>
                            <tr> 
                                 <td>学生学号</td>
                                <td><select name="a5">
                                <%   	  Statement stmt1 =con.createStatement();
                                          String sal1="select * from xuesheng";
                                          ResultSet rs1=stmt1.executeQuery(sal1); %>
                                          	  <%  while(rs1.next()){%>
                                       <option value="<%=rs1.getString("ID")%>"><%=rs1.getString("ID")%></option>
                                       <%} %>
                               </select>
                               
                               </td>
                                 <td>时间</td>
                                 <td> <select name="a6">
                                       <option value="请选择">请选择</option>
                                       <option value="2018-2019-1">2018-2019-1</option>
                                       <option value="2018-2019-2">2018-2019-2</option>
                               </select>
                               </td>
                               <td>课程编号</td>
                               <td><input name="a7" type="text"/></td>
                               <td>你的课程</td>
                               <td width="80px">
                                   <%=ban%>
                               </td>
                               </tr>
                               <tr>
                               <td>你给出的分数</td>
                               <td><input name="a8" type="text"/></td>
                               <td>考核方式</td>
                               <td><select name="a9" style="width: 100px">
                                       <option value="请选择">请选择</option>
                                       <option value="考试">考试</option>
                                       <option value="程目 ">程目 </option>
                               </select>
                               </td>
                            </tr>
                            <tr>
                                 <td colspan="8">
                                     <input type="submit" value="提交"/>
                                     <input type="reset" value="重置"/>
                                 </td>
                            </tr>
                            
                    </table>

          </form>
           <form id="3" action="./jsp/DataHandling/zhuye/yemian/jiaoshi/shujiuchuli/shanchu.jsp" method="post" style="position: absolute;left:400px;top:50px;display: none;">
                    <table border="1" align="center">
                          <tr><th colspan="4">删除</th></tr>
                          <tr>
                               <td>学生学号</td>
                               <td><input name="a10" type="text"/></td>
                               <td>你的课程</td>
                               <td width="80px">
                                   <%=ban%>
                               </td>
                              </tr>
                               <tr>
                                 <td colspan="4" align="center">
                                     <input type="submit" value="删除"/>
                                     <input type="reset" value="重置"/>
                                 </td>
                            </tr>

                    </table>
                                                    <% 
     rs.close();
     stmt.close();
     con.close();
      %>
           </form>
  
                  <%
       String cheng=(String)session.getAttribute("cheng");
        %>
              <script type="text/javascript">
                    function sdf(a,b,c){
                          document.getElementById(a).style.display="block";
                          document.getElementById(b).style.display="none";
                           document.getElementById(c).style.display="none";
                    }
              
              
              var cheng ="<%=cheng%>";
                if(cheng=="成功"){
                  alert(cheng);
               }else if(cheng=="失败"){
               alert(cheng);
               }
              </script>
  </body>
</html>
