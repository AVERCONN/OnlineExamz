<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>题库管理员个人中心</title>
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

line-height:50px;
}
p a:hover{
color:#FF6600;
}
.STYLE4 {
	font-size: 18px;
	font-weight: bold;
	font-family: "微软雅黑";
}

a:link,a:visited{
 color:#000;
 text-decoration:none;  /*超链接无下划线*/
}
	/*ul li{list-style-type:none; margin:0px;}*/
    #menu 
    {
	width: 145px;
	margin: auto;
	border: 1px solid #999;
	left: 64px;
	position: absolute;
	font-size: 14px;
	top: 209px;
    } 
#div1 
{
	display: none;
	font-size: 12px;
	position: relative;
	left: 192px;
	top: 5px;
	background-color: White;
	width: 100px;
	height: 30px;
} 
#div2 
{
	display: none;
	font-size: 16px;
	position: relative;
	left: 192px;
	top: 25px;
	background-color: White;
	padding: 5px 10px 0px 10px;
	width: 100px;
} 
#div3 
{
	display: none;
	font-size: 12px;
	position: relative;
	left: 192px;
	top: 60px;
	background-color: White;
	padding: 5px 10px 0px 10px;
	width: 100px;
} 
#div4 
{
	display: none;
	font-size: 12px;
	position: relative;
	left: 192px;
	top: 90px;
	background-color: White;
	padding: 5px 10px 0px 10px;
	width: 100px;
} 
.STYLE5 {
	color: #000000;
	font-weight: bold;
}
.STYLE7 {font-size: 18px; }
</style>
<script language="javascript" type="text/javascript">
//显示层 
     function showDiv(divName) 
     { 
     document.getElementById(divName).style.display = "block"; 
     } 
     //隐藏层 
     function hiddenDiv(divName) 
     { 
     document.getElementById(divName).style.display = "none"; 
     }
</script>
</head>
<body>

<p align="right"><a href="personal-4.jsp" class="STYLE4">首页</a></p>
<div class="top_nei">
<div align="left">
当前用户：
<%=(String)session.getAttribute("Name")//将对象类型转换为String类型；输出用户的名字。
%>
</div> 
</div>
<p>&nbsp;</p>

<div id="menu">
  <table width="145" border="1" cellspacing="0" bordercolor="#CCCCCC" bgcolor="#FFFFFF">
  <tr>
    <td height="40" onMouseOver="showDiv('div1');this.style.background='#E7E5E5'" onMouseOut="hiddenDiv('div1');this.style.background=''" >
    <div align="center"><a href="/OnlineExam/BrowsePaperServlet" class="STYLE7">查看试卷</a></div></td>
  </tr>
  <tr>
    <td height="40" onMouseOver="showDiv('div2');this.style.background='#E7E5E5'" onMouseOut="hiddenDiv('div2');this.style.background=''">
    <div align="center" class="STYLE7"><a href="NewPaper.jsp" class="STYLE7">新建试卷</a><span class="STYLE5">></span></div></td>
  </tr>
  <tr>
    <td height="40" onMouseOver="showDiv('div3');this.style.background='#E7E5E5'" onMouseOut="hiddenDiv('div3');this.style.background=''">
    <div align="center" class="STYLE7"><a href="/OnlineExam/EditPaperServlet" class="STYLE7">编辑试卷</a></div></td>
  </tr>
  <tr>
    <td height="40" onMouseOver="showDiv('div4');this.style.background='#E7E5E5'" onMouseOut="hiddenDiv('div4');this.style.background=''">
    <div align="center" class="STYLE7"><a href="/OnlineExam/DeletePaperServlet" class="STYLE7">删除试卷</a></div></td>
  </tr>
</table>
</div>
<div id="div1" onMouseOver="showDiv(this.id)" onMouseOut="hiddenDiv(this.id)"> 
</div> 
<div id="div2" onMouseOver="showDiv(this.id)" onMouseOut="hiddenDiv(this.id)"> 
<ul>
<li><a href="#">添加选择题</a> </li>
<li><a href="#">添加填空题</a> </li>
</ul>
</div> 
<div id="div3" onMouseOver="showDiv(this.id)" onMouseOut="hiddenDiv(this.id)">
</div> 
<div id="div4" onMouseOver="showDiv(this.id)" onMouseOut="hiddenDiv(this.id)"> 
</div> 

<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>