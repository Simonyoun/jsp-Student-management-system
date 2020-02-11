<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zhong.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <style type="text/css">
           *{
               padding: 0px;
               margin:0px;
           }
           body{
                 background-color: #0080FF;
            }
            .div ul{
                list-style: none;
                color: #000000;
                font-family:"华文宋体";
            }
            .ul>li{
                width: 80px;
                background-color:#FFFFFF;
                margin-bottom: 2px;
                border-right: 2px solid #000000;
                
            }
            .ul>li>ul{
                width: 80px;
                margin-bottom: 5px;

            }
            .ul>li>ul li{
                  margin-bottom: 5px;
                  
            }
            .ul>li>ul>li a{
                  width: 80px;
                  height: 30px;
                  color:#000000;
               text-decoration: none;
            }
            .ul>li>ul>li a:HOVER{
                background-color:#000000;
                color: #FFFFFF;
            }
   </style>
  </head>
  <body onload="ar1();">
  <% String huoqu =(String)session.getAttribute("leixing"); 
     huoqu=huoqu.trim();
  %>
  <script type="text/javascript">
            var aa="<%=huoqu%>"
            function ar1(){
                     if(aa=="学生"){
                          document.getElementById("aw1").style.display="block";
                     }else if(aa=="教师"){
                          document.getElementById("aw2").style.display="block";
                     }else if(aa=="管理员"){
                          document.getElementById("aw3").style.display="block";
                     }
            }
  </script>
          <div class="div" >
              <ul class="ul" id="aw1" style="display: none;">
                  <li onmouseover="div(1)" onmouseout="div1(1)">我的桌面
                      <ul style="display: none;" id="1">     
                      </ul>
                  </li>
                  <li onmouseover="div(2)" onmouseout="div1(2)">学籍成绩
                      <ul style="display: none; " id="2" >
                      <li ><a href="jsp/DataHandling/zhuye/yemian/neirong/xueji.jsp" target="wei">学籍管理</a></li>
                      <li ><a href="jsp/DataHandling/zhuye/yemian/neirong/chengji.jsp" target="wei">我的成绩</a></li>           
                      </ul>
                  </li>
                  <li onmouseover="div(3)" onmouseout="div1(3)">教学评分
                      <ul style="display: none;" id="3">
                      <li><a href="jsp/DataHandling/zhuye/yemian/neirong/pingfen.jsp" target="wei">评分</a></li>  
                      </ul>
                  </li>
                   <li onmouseover="div(4)" onmouseout="div1(4)" >密码修改
                      <ul style="display: none;" id="4">
                      <li><a href="jsp/DataHandling/zhuye/yemian/neirong/mima.jsp" target="wei">正常修改</a></li>      
                      </ul>
                  </li>
              </ul>
               <ul class="ul" id="aw2" style="display: none;">
                  <li onmouseover="div(5)" onmouseout="div1(5)">我的桌面
                      <ul style="display: none;" id="5">     
                      </ul>
                  </li>
                  <li onmouseover="div(6)" onmouseout="div1(6)">学生管理
                      <ul style="display: none; " id="6" >
                      <li ><a href="jsp/DataHandling/zhuye/yemian/jiaoshi/xuejixiugai.jsp" target="wei">学籍修改</a></li>
                      <li ><a href="jsp/DataHandling/zhuye/yemian/jiaoshi/chengjitianjia.jsp" target="wei">成绩添加</a></li> 
                  
                      </ul>
                  </li>
                  <li onmouseover="div(7)" onmouseout="div1(7)">教学评分
                      <ul style="display: none;" id="7">
                      <li><a href="jsp/DataHandling/zhuye/yemian/jiaoshi/kanpingfen.jsp" target="wei">查询得分</a></li>    
                      </ul>
                  </li>
                  <li onmouseover="div(8)" onmouseout="div1(8)" >添加活动
                      <ul style="display: none;" id="8">
                      <li><a href="jsp/DataHandling/zhuye/yemian/jiaoshi/tongzhi.jsp" target="wei">通知</a></li>
                      <li><a href="jsp/DataHandling/zhuye/yemian/jiaoshi/huodong.jsp" target="wei">教学活动安排</a></li>        
                      </ul>
                  </li>
                   <li onmouseover="div(9)" onmouseout="div1(9)" >密码修改
                      <ul style="display: none;" id="9">
                      <li><a href="jsp/DataHandling/zhuye/yemian/jiaoshi/mima1.jsp" target="wei">正常修改</a></li>        
                      </ul>
                  </li>
              </ul>
               <ul class="ul" id="aw3" style="display: none;">
                  <li onmouseover="div(10)" onmouseout="div1(10)">我的桌面
                      <ul style="display: none;" id="10">     
                      </ul>
                  </li>
                  <li onmouseover="div(11)" onmouseout="div1(11)" >添加用户
                      <ul style="display: none;" id="11">
                      <li><a href="jsp/DataHandling/zhuye/yemian/gianliyuan/tianjiajiaoshi.jsp" target="wei">添加教师</a></li> 
                      <li ><a href="jsp/DataHandling/zhuye/yemian/gianliyuan/toanjiuxuesheng.jsp" target="wei">添加学生</a></li>    
                      </ul>
                  </li>
                  <li onmouseover="div(12)" onmouseout="div1(12)" >添加评价
                      <ul style="display: none;" id="12">
                      <li><a href="jsp/DataHandling/zhuye/yemian/gianliyuan/shezhipinglun.jsp" target="wei">设置评价</a></li> 
                      </ul>
                  </li>
              </ul>
        
       </div>
      
          <script type="text/javascript">
                  function div(o){
                           document.getElementById(o).style.display="block";
                  }
                  function div1(o){
                           document.getElementById(o).style.display="none";
                  }
          </script>
  </body>
</html>
