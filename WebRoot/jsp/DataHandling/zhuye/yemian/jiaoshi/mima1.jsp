<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'mima.jsp' starting page</title>
    
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
     <form action="./jsp/DataHandling/zhuye/yemian/jiaoshi/shujiuchuli/mimachuli1.jsp" method="post" name="xiugai" style="position: absolute;top:200px;left:42%;">
                    <table border="1" align="center">
                           <tr>
                               <th colspan="2">修改密码 </th>
                           </tr>
                           <tr>
                                <td>工号：</td>
                                <td>
                                    <%String ID =(String)session.getAttribute("ID"); %>
                                    <%=ID%>
                                </td>
                           </tr> 
                            <tr>
                                <td>原密码：</td>
                                <td>
                                    <input name="xiugai2" type="text" title="请输入6位数密码" />
                                </td>
                           </tr> 
                            <tr>
                                <td>密码：</td>
                                <td>
                                    <input name="xiugai3" type="text" title="请输入6位数密码"/>
                                </td>
                           </tr> 
                            <tr>
                                <td>确认密码：</td>
                                <td>
                                    <input name="xiugai4" type="text" title="请输入6位数密码"/>
                                </td>
                           </tr> 
                            <tr>
                                <td colspan="2" style="padding-left: 30px;"><input type="submit" style="width:80px;background-color:#DEB887;border: none;" value="确认" onclick="return mi()"/>
                                <input style="margin-left: 20px;width:80px; color:#DEB887;background-color: #FAEBD7;border: none;" type="reset"  value="重置"/></td>
                           </tr> 
                    </table>
       </form>
       <% String mima=(String)session.getAttribute("mima");
       String cheng=(String)session.getAttribute("cheng");
        %>
       <script type="text/javascript">
                   var mima ="<%=mima%>";
                   var cheng ="<%=cheng%>";
                   function mi(){
                   
                     if(document.xiugai.xiugai2.value==""){
                            alert("请输入正确的密码")
                           document.xiugai.xiugai2.focus();
                           return false;
                      }
                      if(document.xiugai.xiugai2.value!=mima){
                            alert("请输入正确的密码")
                           document.xiugai.xiugai2.focus();
                           return false;
                      }
                      if(document.xiugai.xiugai3.value==""){
                            alert("请输入正确的密码")
                           document.xiugai.xiugai3.focus();
                           return false;
                      }
                      if(document.xiugai.xiugai4.value==""){
                            alert("请输入正确的密码")
                           document.xiugai.xiugai4.focus();
                           return false;
                      }
                     if(document.xiugai.xiugai3.value!=document.xiugai.xiugai4.value){
                            alert("两次输入密码不一致")
                           document.xiugai.xiugai3.focus();
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
