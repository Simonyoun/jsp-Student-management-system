<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'huodong.jsp' starting page</title>
    
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
        <form action="./jsp/DataHandling/zhuye/yemian/jiaoshi/shujiuchuli/huodongye.jsp" method="post" >
              <table border="1" align="center">
                     <tr>
                          <td>
                               <select name="xuauna">
                                       <option value="">请选择</option>
                                       <option value="九月">九月</option>
                                       <option value="十月">十月</option>
                                       <option value="十一月">十一月</option>
                                       <option value="十二月">十二月</option>
                                       <option value="一月">一月</option>
                               </select>
                          </td>
                          <td width="200px" height="100px">
                               <input name="xuauna1" style="width: 200px;height: 100px;border: none;" type="text"/>
                          </td>
                     </tr>
                     <tr>
                         <td colspan="2" style="padding-left: 60px;">
                         <input type="submit" value="确认" onclick="return mi()"/>
                          <input style="margin-left: 40px;" type="reset"  value="重置"/>
                          </td>
                     </tr>
              </table>
        </form>
  </body>
</html>
