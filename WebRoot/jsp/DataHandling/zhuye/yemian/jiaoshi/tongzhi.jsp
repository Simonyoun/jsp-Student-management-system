<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'tongzhi.jsp' starting page</title>
    
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
         <form action="./jsp/DataHandling/zhuye/yemian/jiaoshi/shujiuchuli/toung.jsp" method="post">
                <table align="center">
                       <tr><th>添加通知</th></tr>
                       <tr>
                            <td width="300px">
                                <input name="a1" style="height: 100px;size: 300px; width: 300px;" type="text" />
                            </td>
                       </tr>
                       <tr>
                       <td colspan="2" style="padding-left: 60px;"><input type="submit" value="确认" />
                       <input style="margin-left: 40px;" type="reset"  value="重置"/></td>
                       </tr>
                </table>
         </form>
          <%

       String cheng=(String)session.getAttribute("cheng");
         %>
         <script type="text/javascript">
            var cheng="<%=cheng%>"
               if(cheng=="成功"){
                  alert("成功");
               }

         </script>
  </body>
</html>
