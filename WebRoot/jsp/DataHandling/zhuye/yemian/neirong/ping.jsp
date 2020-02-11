<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ping.jsp' starting page</title>
    
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
	           background-image: url('./img/wpic660.jpg');
	           background-size: cover;
	           color: #F0FFFF;
	       }
	</style>
  </head>
  
  <body>
        <form action="./jsp/DataHandling/zhuye/yemian/neirong/shujichuli/pingas.jsp" method="post">
                   1.老师的授课方式好吗？（）<br>
                   <input type="radio" name="1" value="A"/>
                   好<br>
                   <input type="radio" name="1" value="B"/>
                   一般<br>
                   <input type="radio" name="1" value="C"/>
                   不好<br>
                   2.老师是否负责任。（）<br>
                   <input type="radio" name="2" value="A"/>
                   是<br>
                   <input type="radio" name="2" value="B"/>
                   一般<br>
                   <input type="radio" name="2" value="C"/>
                   否<br>
                    3.你是否喜欢老师的授课风格？（）<br>
                   <input type="radio" name="3" value="A"/>
                   是<br>
                   <input type="radio" name="3" value="B"/>
                   一般<br>
                   <input type="radio" name="3" value="C"/>
                   否<br>    
                    4.你是否喜欢老师的授课风格？（）<br>
                   <input type="radio" name="4" value="A"/>
                   是<br>
                   <input type="radio" name="4" value="B"/>
                   一般<br>
                   <input type="radio" name="4" value="C"/>
                   否<br>   
                    5.有没有收获到知识？（）<br>
                   <input type="radio" name="5" value="A"/>
                   是<br>
                   <input type="radio" name="5" value="B"/>
                   一般<br>
                   <input type="radio" name="5" value="C"/>
                   否<br>   
            <input type="submit" value="提交" />      
            <input type="submit" value="重置" />      
        </form>
        
        </body>
</html>
