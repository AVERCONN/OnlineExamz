<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考生信息添加</title>
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

<p align="right"><a href="personal-2.jsp" class="STYLE5">首页</a></p>
<div class="top_nei">
<div align="left">
当前用户：<%=(String)session.getAttribute("Name") //将对象类型转换为String类型；输出用户的名字。
%></div>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<script language="javascript">
    function check(){//js表单验证方法
        if(document.getElementById("no").value==""){
            alert("请输入用户名");
            return false;
        }

        return true;
    }
</script>

</head> 
<body>
<p>&nbsp;</p>
<p>当前位置：添加考生信息</p>
<p align="left">—————————————————————————————————————————</p>
 <form action="addServlet" method="post" onSubmit="return check()">
<p>用户名　
  <input type="text" name="no" size="20" style="height:20px;line-height:14px;"/>
  &nbsp;
  <input type="submit" value="查询" style="height:25px;width:50px;"/>
</p>
 </form>
</body>
</html>