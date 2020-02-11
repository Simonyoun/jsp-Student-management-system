<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="java.util.*" %>
<%@page import="java.text.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'shezhipinglun.jsp' starting page</title>
    
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
          <form action="./jsp/DataHandling/zhuye/yemian/gianliyuan/shujiuchuli/pinglun.jsp" method="post">
                    <table border="1" align="center">
                            <tr>
                                 <td>序号</td>
                                 <td><input name="a1" type="text"/></td>
                                 <td>学年学期</td>
                                         <td> <select name="a2">
                                       <option value="请选择">请选择</option>
                                       <option value="2018-1">2018-1</option>
                                       <option value="2018-2">2018-2</option>
                                       <option value="2019-1">2019-1</option>
                                       <option value="2019-2">2019-2</option>
                               </select>
                               </td>
                                 <td>评价分类</td>
                                         <td> <select name="a3">
                                       <option value="请选择">请选择</option>
                                       <option value="jvav">java</option>
                                       <option value="大数据">大数据</option>
                                       <option value="jQ">jQ</option>
                                       <option value="安卓1">安卓1</option>
                               </select>
                               </td>
                                 <td>评价批次</td>
                                 <td> <select name="a4">
                                       <option value="请选择">请选择</option>
                                       <option value="1">1</option>
                                       <option value="2">2</option>
          
                               </select>
                               </td>
                                 </tr>
                                 <tr>
                                 <td>开始时间</td>
                                 <%       Date a=new Date();
                                          SimpleDateFormat formatter = new SimpleDateFormat("MM-dd");
                                          String startdate = formatter.format(a); %>
                                <td> <select name="a5">
                                       <option value="<%=startdate%>"><%=startdate%></option>
                               </select>
                               </td>
                                 <td>结束时间</td>
                                 <td><input name="a6" type="text"/></td>
                                 <td>操作</td>
                                 <td> <select name="a7">
                                       <option value="请选择">请选择</option>
                                       <option value="ping">ping</option>
                                       <option value="2">2</option>
          
                               </select>
                            </tr>
                            <tr>
                             <td colspan="6" align="center">
                                     <input type="submit" value="确认"/>
                                     <input type="reset" value="重置"/>
                            </td>
                            </tr>
                    </table>
          </form>
                            <%
       String cheng=(String)session.getAttribute("cheng");
        %>
              <script type="text/javascript">
              var cheng ="<%=cheng%>";
                if(cheng=="成功"){
                  alert(cheng);
               }else if(cheng=="失败"){
               alert(cheng);
               }
              </script>
  </body>
</html>
