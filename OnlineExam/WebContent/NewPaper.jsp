<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" language="javascript">
function check() {            //检查函数，用于检测各项是否非空
	if(document.form1.pcategory.value=="") {
		alert("请选择试卷类别！");
	}
	else if(document.form1.pno.value=="") {
		alert("请输入试卷编号！");
	}
	else if(document.form1.pname.value=="") {
		alert("请输入试卷名称！");
	}
	else if(document.form1.pcshu.value=="") {
		alert("请输入选择题数！");
	}
	else if(document.form1.pcpoint.value=="") {
		alert("请输入选择题分值！");
	}
	else if(document.form1.pfshu.value=="") {
		alert("请输入填空题数！");
	}
	else if(document.form1.pfpoint.value=="") {
		alert("请输入填空题分值！");
	}
	else {
		document.form1.submit();
	}
}
</script>
<title>新建试卷</title>
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
</head>
<body>
<form name="form1" action='NewPaperServlet' method='post'>
<table>
<tr>
<td>试卷类别：</td>
</tr>
<tr>
<td><input type="radio" name="pcategory" value="computer" checked="true" /></td>
<td>计算机类</td>
</tr>
<tr>
<td><input type="radio" name="pcategory" value="construction" /></td>
<td>工程类</td>
</tr>
<tr>
<td><input type="radio" name="pcategory" value="medicine" /></td>
<td>医学类</td>
</tr>
<tr>
<td><input type="radio" name="pcategory" value="degree" /></td>
<td>学历类</td>
</tr>
<tr>
<td><input type="radio" name="pcategory" value="language" /></td>
<td>外语类</td>
</tr>
<tr>
<td><input type="radio" name="pcategory" value="finance" /></td>
<td>财经类</td>
</tr>
<tr>
<td><input type="radio" name="pcategory" value="foreigntrade" /></td>
<td>外贸类</td>
</tr>
<tr>
<td><input type="radio" name="pcategory" value="civilservant" /></td>
<td>公务员类</td>
</tr>
<tr>
<td><input type="radio" name="pcategory" value="qualification" /></td>
<td>资格类</td>
</tr>
<tr>
<td><input type="radio" name="pcategory" value="law" /></td>
<td>法律类</td>
</tr>
<tr>
<td>试卷编号：</td>
<td><input type="text" name="pno" /></td>
</tr>
<tr>
<td>试卷名称：</td>
<td><input type="text" name="pname" /></td>
</tr>
<tr>
<td>选择题数：</td>
<td><input type="text" name="pcshu" /></td>
</tr>
<tr>
<td>选择题分值：</td>
<td><input type="text" name="pcpoint" /></td>
</tr>
<tr>
<td>填空题数：：</td>
<td><input type="text" name="pfshu" /></td>
</tr>
<tr>
<td>填空题分值：</td>
<td><input type="text" name="pfpoint" /></td>
</tr>
<tr>
<td><br><br></td>
</tr>
<tr>
<td><input type='button' value='确定' onclick="check()" /></td>
<td><input type='reset' value='重置' /></td>
<td><input type='button' value='返回' onclick="location.href='tkmindex.jsp'" /></td>
</tr>
</table>
</form>
</body>
</html>