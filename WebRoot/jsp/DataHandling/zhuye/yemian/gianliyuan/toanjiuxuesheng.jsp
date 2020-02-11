<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'toanjiuxuesheng.jsp' starting page</title>
    
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
            background-image: url('./img/bpic7718.jpg');
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
                    <li><a href="javascript:void(0)" onclick="sdf(1,2,3)">添加成员</a></li>
                    <li><a href="javascript:void(0)" onclick="sdf(2,1,3)">修改成员</a></li>
                    <li><a href="javascript:void(0)" onclick="sdf(3,1,2)">删除成员</a></li>
               </ul>
         </div>
          <form action="./jsp/DataHandling/zhuye/yemian/gianliyuan/shujiuchuli/tianjiaxuesheng.jsp" method="post" id="1" style="position: absolute;left:200px;top:50px;">
                    <table border="1" align="center"  style="text-align: center;">
                             <tr><th colspan="8">添加</th></tr>
                            <tr> 
                                <td>学号</td>
                                
                                <td><input name="a1" type="text" /></td>
                                <td>密码</td>
                                <td><input name="a2" type="text" /></td>
                                <td>名字</td>
                                <td><input name="a3" type="text" /></td>
                                <td>班级</td>
                                <td><input name="a4" type="text" /></td>
                            </tr>
                            <tr>
                                <td>类型</td>
                                <td><input name="a5" type="text" /></td>
                                <td>图片路径</td>
                                <td><input name="a6" type="text" /></td>
                                <td>编号</td>
                                <td><input name="a7" type="text" /></td>
                            </tr>
                            <tr>
                                 <td colspan="8">
                                     <input type="submit" value="提交"/>
                                     <input type="reset" value="重置"/>
                                 </td>
                            </tr>
                    </table>
          </form>
                    <form action="./jsp/DataHandling/zhuye/yemian/gianliyuan/shujiuchuli/xiugaixuesheng.jsp" method="post" id="2" style="position: absolute;left:200px;top:50px;display: none;">
                    <table border="1" align="center"  style="text-align: center;">
                            <tr><th colspan="8">修改</th></tr>
                            <tr> 
                                 
                               </tr>
                               <tr> 
                                <td>学号</td>
                                <td><input name="a8" type="text" /></td>
                                <td>密码</td>
                                <td><input name="a9" type="text" /></td>
                                <td>名字</td>
                                <td><input name="a10" type="text" /></td>
                                <td>班级</td>
                                <td><input name="a11" type="text" /></td>
                            </tr>
                            <tr>
                                <td>类型</td>
                                <td><input name="a12" type="text" /></td>
                                <td>图片路径</td>
                                <td><input name="a13" type="text" /></td>
                                <td>编号</td>
                                <td><input name="a14" type="text" /></td>
                            </tr>
                            <tr>
                                 <td colspan="8">
                                     <input type="submit" value="提交"/>
                                     <input type="reset" value="重置"/>
                                 </td>
                            </tr>
                    </table>
          </form>
           <form action="./jsp/DataHandling/zhuye/yemian/gianliyuan/shujiuchuli/shanchuxuesheng.jsp" method="post" id="3" style="position: absolute;left:400px;top:50px;display: none;">
                    <table border="1" align="center">
                          <tr><th colspan="4">删除</th></tr>
                          <tr>
                               <td>学生学号</td>
                               <td><input name="a15" type="text"/></td>
                              </tr>
                               <tr>
                                 <td colspan="4" align="center">
                                     <input type="submit" value="删除"/>
                                     <input type="reset" value="重置"/>
                                 </td>
                            </tr>

                    </table>
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
