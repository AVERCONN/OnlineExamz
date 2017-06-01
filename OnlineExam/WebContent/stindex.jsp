<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考生个人中心</title>

<style type="text/css">

.top_nei{
	width:100%;
	text-align:center;
	height:40px;
	background-color:#1E90FF;
	line-height:40px;
	font-size: 18px;
	font-family: "微软雅黑";
	color:white;
}
 .menu{
font-size: 18px;
 line-height:30px;

        }
.menu a:hover{
color:#FF6600;
}
p a:hover{
color:#FF6600;
}

.STYLE5 {font-size: 18px; font-weight: bold; font-family: "微软雅黑"; text-decoration: none; color: #000000; }
</style>
</head>

<body>

<p align="right"><a href="personal-3.jsp" class="STYLE5">首页</a></p>
<div class="top_nei">
<div align="left">
当前用户：<%=(String)session.getAttribute("Name") //将对象类型转换为String类型；输出用户的名字。
%></div>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div class="menu" >

    <ul>

      <li><a href="stinfoServlet?username=<%=(String)session.getAttribute("userName") %>" class="STYLE5">个人信息</a>  </li>

      <li><a href="ShowGrade.jsp?username==<%=(String)session.getAttribute("userName") %>" class="STYLE5">查询成绩</a>        </li>

    </ul>
</div>

<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
