<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'tou.jsp' starting page</title>
    
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
                 position: absolute;
            }
            .div1{
                 font-size: 26px;
                 color: #FFFFFF;
                 text-align: center;
                 position: relative;
                 top:0px;
                 left: 80px;
            }
            #mingzi{
                  width:60px;
                  height:50px;
                  border-radius: 4px;
            }
             #tuichu{
                  width:60px;
                  height:50px;
                 border-radius: 4px;
            }
            a{
                  width:60px;
                  height:50px;
                  background-color:#66B3FF; 
                  display: block;
                  text-decoration: none;
                  color: #FFFFFF;
                  line-height: 50px;
                  text-align: center;
                  border-radius: 4px;
            }
            a:HOVER {
              opacity: 0.5;
	        }
}
    </style>
  </head>
  
  <body style="background-color:#0080FF">
             <div class="div">
                <div class="div1"><span style="position:relative;top:0px;left: 0px;"><img src="img/loogo.png" width="60px" height="60px" /></span><span style="position:relative;top:-13px;left:30px;">九江职业技术学院</span><span style="font-size:14px; position: relative;top:-8px;left:50px;">教务管理系统</span></div>
                <div style="position: relative; top:-40px; left: 800px">
                     <div id="mingzi" style="position: relative;top:-8px;left: 0px;">
                     <a href="jsp/DataHandling/zhuye/yemian/wei.jsp" target="wei"><%=session.getAttribute("mingzi") %></a></div>
          </div>
  </body>
</html>
