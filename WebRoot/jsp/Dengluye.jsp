<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Dengluye.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="./css/denglu.css">
    <script type="text/javascript">

                   function a(){       
                    var a1 =document.getElementById("b1");
                    var a2 =document.getElementById("b2");
                    var a3 =document.getElementById("b3");
                            a1.style.display="block"
                            a2.style.display="none";
                            a3.style.display="none"; 
                   }
                   function q(){
                    var a1 =document.getElementById("b1");
                    var a2 =document.getElementById("b2");
                    var a3 =document.getElementById("b3");
                            a2.style.display="block"
                            a1.style.display="none";
                            a3.style.display="none"; 
                   }
                    function p(){
                     var a1 =document.getElementById("b1");
                     var a2 =document.getElementById("b2");
                     var a3 =document.getElementById("b3");
                             a3.style.display="block"
                             a1.style.display="none";
                             a2.style.display="none"; 
                   }
                 

    </script>
    <style type="text/css">
         #b1{
            position: relative;
            top:100px;
            left: 150px;
         }
         #b2{
            position: relative;
            top:100px;
            left: 150px;
         }
         #b3{
            position: relative;
            top:100px;
            left: 150px;
         }
    </style>
  </head>
  
  <body>
   <%session.invalidate(); %>
          <div class="a1" style="background-image: url('./img/lo.jpg'); border-radius:10px;">
              <div class="a2">
                   <div id="a1" class="v1">
                        <a href="javascript:void(0)" onclick="a()">学生登录</a>
                   </div>
                   <div id="a2" class="v1">
                        <a href="javascript:void(0)" onclick="q()">老师登录</a>
                   </div>
                   <div id="a3" class="v1">
                        <a href="javascript:void(0)" onclick="p()">管理人员登录</a>
                   </div>
              </div>
              <div class="a3">
                   <div id="b1">
                               <form action="./jsp/DataHandling/xuesheng.jsp" method="get" name="zhuce">
                                      <table style="border-collapse: separate;border-spacing:5px 15px;">
                                             <tr><th colspan="2" style="color:#F4B57B;font-size:26px;">学生登录</th></tr>
                                             <tr>
                                                 <td style="color:#FFFFFF">账号：</td>
                                                 <td><input type="text" name="zhanghao" style="width: 160px;border:none;padding-left: 10px;height:30px;border-radius:6px;" title="请输入6位数账号"/></td>
                                             </tr>
                                             <tr>
                                                 <td style="color:#FFFFFF">密码：</td>
                                                 <td><input type="password" name="mima" style="width: 160px;border:none;padding-left: 10px;height:30px;border-radius:6px;" title="请输入6位数密码"/></td>
                                             </tr>
                                             <tr>
                                                 <td colspan="2">
                                                     <input type="submit" value="登录" onclick="return Check()"  style="width:100px;background-color:#5BE7FB;border:none;height:30px; margin-left: 10px;border-radius:4px;"/>
                                                     <input type="button" value="退出" onclick="javascript:window.close()" style="width: 100px;background-color:#FF8000;border:none;height:30px;border-radius:4px;" />
                                                 </td>
                                             </tr>
                                      </table>
                               </form>
                   </div>
                    <div id="b2">
                               <form action="./jsp/DataHandling/laoshi.jsp" method="get" name="zhuce1">
                                      <table style="border-collapse: separate;border-spacing:5px 15px;">
                                             <tr><th colspan="2" style="color:#FFFFFF;font-size:26px;">老师登录</th></tr>
                                             <tr>
                                                 <td style="color:#FFFFFF">账号：</td>
                                                 <td><input type="text" name="zhanghao1" style="width: 160px;border:none;padding-left: 10px;height:30px;border-radius:6px;"title="请输入6位数账号"/></td>
                                             </tr>
                                             <tr>
                                                 <td style="color:#FFFFFF">密码：</td>
                                                 <td><input type="password" name="mima1" style="width: 160px;border:none;padding-left: 10px;height:30px;border-radius:6px;" title="请输入6位数密码"/></td>
                                             </tr>
                                             <tr>
                                                 <td colspan="2">
                                                 
                                                     <input type="submit" value="登录" onclick="return Check1()" style="width:100px;background-color:#5BE7FB;border:none;height:30px;margin-left:10px;border-radius:4px;"/>
                                                     <input type="button" value="退出" onclick="javascript:window.close()" style="width: 100px;background-color:#FF8000;border:none;height:30px;border-radius:4px;" />
                                                 </td>
                                             </tr>
                                      </table>
                               </form>
                   </div>
                    <div id="b3">
                               <form action="./jsp/DataHandling/guanlirenyuan.jsp" method="get" name="zhuce2">
                                      <table style="border-collapse: separate;border-spacing:5px 15px;">
                                             <tr><th colspan="2" style="color:#86E6DE;font-size:26px;">管理人员登录</th></tr>
                                             <tr>
                                                 <td style="color:#FFFFFF">账号：</td>
                                                 <td><input type="text" name="zhanghao2" style="width: 160px;border:none;padding-left: 10px;height:30px;border-radius:6px;"title="请输入6位数账号"/></td>
                                             </tr>
                                             <tr>
                                                 <td style="color:#FFFFFF">密码：</td>
                                                 <td><input type="password" name="mima2"  style="width: 160px;border:none;padding-left: 10px;height:30px;border-radius:6px;"title="请输入6位数密码"/></td>
                                             </tr>
                                             <tr>
                                                 <td colspan="2">
                                                     <input type="submit" value="登录" onclick="Check2()" style="width:100px;background-color:#5BE7FB;border:none;height:30px;margin-left:10px;border-radius:4px;"/>
                                                     <input type="button" value="退出" onclick="javascript:window.close()" style="width: 100px;background-color:#FF8000;border:none;height:30px;border-radius:4px;"/>
                                                 </td>
                                             </tr>
                                      </table>
                               </form>
                   </div>
              </div>
          </div>
         
          <script type="text/javascript">
                function Check(){
                        if(document.zhuce.zhanghao.value==""){
                             alert("账号为空");
                            document.zhuce.zhanghao.focus();
                          return false;
                        }
                          if(document.zhuce.mima.value==""){
                             alert("密码为空");
                            document.zhuce.mima.focus();
                            return false;
                          }      
                         return true;
                  }
                function Check1(){
                        if(document.zhuce1.zhanghao1.value==""){
                             alert("账号为空");
                            document.zhuce1.zhanghao1.focus();
                          return false;
                        }
                          if(document.zhuce1.mima1.value==""){
                             alert("密码为空");
                            document.zhuce1.mima1.focus();
                            return false;
                          }      
                         return true;
                  }
                function Check2(){
                        if(document.zhuce2.zhanghao2.value==""){
                             alert("账号为空");
                            document.zhuce2.zhanghao2.focus();
                          return false;
                        }
                          if(document.zhuce2.mima2.value==""){
                             alert("密码为空");
                            document.zhuce2.mima2.focus();
                            return false;
                          }      
                         return true;
                  }
          </script>
  </body>
</html>
