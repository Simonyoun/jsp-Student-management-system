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
    
    <title>My JSP 'wei.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <style type="text/css">
         .div{
              margin: 0px;
              padding: 0px;
              position: absolute;
         }
         .div1{
              position: relative;
 
         }
          .div5{
              position: relative;
              top:410px;
              left: 0px;
         }
         .div1 .div2{
             position:absolute;
             top:0px;
             left:0px;
             width: 300px;
             height: 400px;
             font-family:"华文宋体";
             color: #FFFFFF;
             
         }
          .div1 .div3{
             position:absolute;
             top:0px;
             left:310px;
             width: 600px;
             height: 400px;
             background-color: #80FFFF;
             border-radius: 4px;
             font-family:"华文宋体";
             color: #FFFFFF;
         }
         .div1 .div4{
             position:absolute;
             top:0px;
             left:920px;
             width: 300px;
             height: 400px;
             border-radius: 5px;
         }
         .div5 .div6{
             position:absolute;
             top:0px;
             left:0px;
             width: 400px;
             height: 200px;
            background-image: url('./img/wpic660.jpg');
            background-size: cover;
            color:#F0FFFF;
             border-radius: 6px;
             font-family:"华文宋体";
         }
         .div5 .div7{
             position:absolute;
             top:0px;
             left:410px;
             width: 400px;
             height: 200px;
            background-image: url('./img/wpic660.jpg');
            background-size: cover;
            color:#F0FFFF;
             border-radius: 6px;
             font-family:"华文宋体";
         }
         .div5 .div8{
             position:absolute;
             top:0px;
             left:820px;
             width: 400px;
             height: 200px;
             background-image: url('./img/wpic660.jpg');
            background-size: cover;
             border-radius: 6px;
             color:#F0FFFF;
             font-family:"华文宋体";
         }
         td{
            text-align: center;
            font-size: 14px;
            color: #000000;
            font-family:"华文宋体";
            
         }
         a{
           text-decoration: none;
           color: #FFFFFF;
           font-family:"华文宋体";
         }
         a:HOVER {
         opacity: 0.6;
	}
   </style>
  </head>
  <body>
      <% 
      
      String touxiang=(String)session.getAttribute("touxiang");
    String ban=(String)session.getAttribute("ban");
   if(touxiang.trim().equals("")){
        touxiang ="1.png";
    }else{
       touxiang=touxiang.trim();
    }
       %>
       <div class="div">
           <div class="div1">
                <div class="div2" >
                                  <div style="background-color: #FF8080; width: 300px;height:200px;position:absolute;border-top-left-radius:10px;border-top-right-radius: 10px;">
                                             <div style="position:absolute;top:60px; left:100px;"><img style="border-radius: 60px;width: 100px;height:100px;" alt="" src="img/<%=touxiang%>"></div>
                                              
                                  </div>
                                  <div style="background-color: #FF80C0; width: 300px;height:199px;position: absolute;top:201px;left: 0px;">
                                             <div style="position:absolute;top:50px;left: 100px; background-color: #FF8040;width: 100px;height: 30px;border-radius: 5px;">
                                                       <p style="text-align:center;line-height:2px;"><%=session.getAttribute("leixing") %></p>
                                                   
                                             </div>
                                             <div style="position:absolute;top:90px;left: 100px; background-color: #FF8040;width: 100px;height: 30px;border-radius: 5px;">
                                                   <p style="text-align:center;line-height:2px;"><%=session.getAttribute("banji") %></p>
                                             </div>
                                             <div style="position:absolute;top:130px;left: 100px; background-color: #FF8040;width: 100px;height: 30px;border-radius: 5px;">
                                                    <p style="text-align:center;line-height:2px;"><%=session.getAttribute("mingzi") %></p>
                                             </div>
                                  </div>
                </div>
                <div class="div3" >
                                   <div style="position: absolute;top:4px;left: 0px;width:600px;height: 30px; background-color: #008080;">
                                   <p style="text-align:center;line-height:2px;"><%=session.getAttribute("banji") %></p>
                                   <form action="./jsp/DataHandling/zhuye/yemian/wei.jsp" method="post">
                                           <select size="1" name="sel" style="position: absolute;top:4px;left: 380px;">
                                           <option value="1701" selected="selected">1701</option>
                                           <option value="1702">1702</option>
                                           <option value="1703">1703</option>
                                   </select>
                                   <input type="submit" value="提交" style="position: absolute;top:4px;left: 450px;"/>
                                   </form>
                                   </div>
                                   <div style="position:absolute;top:40px;left: 1px;width:598px;height:358px;background-color: #FFFFFF;">
                                           <table >
                                                  <tr>
                                                      <th  width="70px">&nbsp;&nbsp;&nbsp;&nbsp;</th>
                                                      <th width="70px">周一</th>
                                                      <th width="70px">周二</th>
                                                      <th width="70px">周三</th>
                                                      <th width="70px">周四</th>
                                                      <th width="70px">周五</th>
                                                      <th width="70px">周六</th>
                                                      <th width="70px">周日</th>
                                                  </tr>
                                                  <% 
                                                  Connection con;
   	                                              Statement sql;
   	                                              Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   	                                              String uri="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=Jiaowutong";
   	                                              String user="laoshi";
   	                                              String password="123456";
   	                                              con=DriverManager.getConnection(uri,user,password);
   	                                              Statement stmt =con.createStatement();
   	                                              String sal="select * from dbo.安卓  where ban='"+ban+"' ";
   	                                              ResultSet rs=stmt.executeQuery(sal);
   	                                              int a=0;
   	                                              while(rs.next()){ 
   	                                              a++; 	
   	                                              %>                                                                                               	                                                
                                                                  
                                                  <tr>
                                                      <th height="48px">第<%=a%>节</th>
                                                      <td><%=rs.getString("yi") %> </td>
                                                      <td><%=rs.getString("er") %></td>
                                                      <td><%=rs.getString("san") %> </td>
                                                      <td> <%=rs.getString("si") %></td>
                                                      <td><%=rs.getString("wu") %> </td>
                                                      <td> <%=rs.getString("liu") %></td>
                                                      <td><%=rs.getString("re") %></td>
                                                  </tr>
                                               <%
   	                                              }

   	                                               %>
   	                                                                
 
                                           </table>

                                   </div>
                </div>
                <div class="div4" >
                            <div style="width:100px;height:200px;background-color:#0080FF;position:absolute;top:0px;left:0px;border-top-left-radius: 5px;">
                            <a href="##"><img alt="学期理论课表" src="img/tb12.png" style="position: absolute;top:60px;left: 30px;" /></a>
                            <a href="##" style="position: absolute;top:120px;left: 0px;">社会考试报名</a>
                            </div>
                            <div style="width:100px;height:200px;background-color:#0080FF;position: absolute;top:0px;left:101px;">
                             <a href="##"><img alt="学期理论课表" src="img/tb11.png" style="position: absolute;top:60px;left: 30px;" /></a>
                            <a href="##" style="position: absolute;top:120px;left: 0px;">培养方案明细</a>
                            </div>
                            <div style="width:100px;height:200px;background-color:#0080FF;position: absolute;top:0px;left: 202px;border-top-right-radius: 5px;">
                             <a href="##"><img alt="学期理论课表" src="img/tb9.png" style="position: absolute;top:60px;left: 30px;" /></a>
                            <a href="##" style="position: absolute;top:120px;left: 0px;">学生选课中心 </a>
                            </div> 
                            <div style="width:100px;height:200px;background-color:#0080FF;position:absolute;top:201px;left:0px;border-bottom-left-radius: 5px;">
                             <a href="##"><img alt="学期理论课表" src="img/tb12.png" style="position: absolute;top:60px;left: 30px;" /></a>
                            <a href="##" style="position: absolute;top:120px;left: 0px;">考试安排查询 </a>
                            </div>
                            <div style="width:100px;height:200px;background-color:#0080FF;position: absolute;top:201px;left:101px;">
                             <a href="##"><img alt="学期理论课表" src="img/tb11.png" style="position: absolute;top:60px;left: 30px;" /></a>
                            <a href="##" style="position: absolute;top:120px;left: 20px;">学生评价 </a>
                            </div>
                            <div style="width:100px;height:200px;background-color:#0080FF;position: absolute;top:201px;left: 202px;border-bottom-right-radius:5px;">
                             <a href="##"><img alt="学期理论课表" src="img/tb12.png" style="position: absolute;top:60px;left:30px;" /></a>
                            <a href="##" style="position: absolute;top:120px;left: 20px;">缓考申请 </a>
                            </div>                
                </div>
           </div>
           <div class="div5">
                <div class="div6"> 
                                 <div style="position:absolute;top:2px;left:0px; width: 400px;height:20px;background-color: #81B3BA;border-radius: 3px;color: #000000;font-size: 16px;">在线问答</div>
                </div>
                <div class="div7" >
                                 <div style="position:absolute;top:2px;left:0px; width: 400px;height:20px;background-color: #81B3BA;border-radius: 3px;color: #000000;font-size: 16px;">通知</div>
                                 <div style="position: absolute;top:24px;left: 0px;width:400px;height:176px;border-bottom-left-radius:3px;border-bottom-right-radius: 3px;overflow-y:scroll;">
                                   <% Statement stmt2 =con.createStatement();
   	                               String sal2="select * from jiaoxueanpai";
   	                               ResultSet rs2=stmt2.executeQuery(sal2);%>
   	                               <%while(rs2.next()){  %>
   	                                 <%=rs2.getString("时间") %>
   	                                 <%=rs2.getString("内容") %>
   	                                 <br>
   	                               <%} %>
                                 </div>
                </div>
                <div class="div8">
                                 <div style="position:absolute;top:2px;left:0px; width: 400px;height:20px;background-color: #81B3BA;border-radius: 3px;color: #000000;font-size: 16px;">教学活动安排</div>
                                 <div style="position: absolute;top:24px;left: 0px;width:400px;height:176px;border-bottom-left-radius:3px;border-bottom-right-radius: 3px;overflow-y:scroll;">
                                 
                                 <% Statement stmt1 =con.createStatement();
   	                               String sal1="select * from tongzhi";
   	                               ResultSet rs1=stmt1.executeQuery(sal1); %>
   	                               <%while(rs1.next()){  %>
   	                                 <%=rs1.getString("shijian") %>
   	                                 <%=rs1.getString("内容") %>
   	                                 <br>
   	                               <%} %>
                                 </div>
                </div>
           </div>
       </div>
        <%
                                   
      rs.close();
       stmt.close();
       con.close();
      %>
  </body>
</html>
