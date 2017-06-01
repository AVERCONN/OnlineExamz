<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考生信息查询</title>
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
            alert("请输入姓名");
            return false;
        }

        return true;
    }
</script>
</head>
<body>

<p>&nbsp;</p>
<p>当前位置：查询考生信息</p>
<p align="left">—————————————————————————————————————————</p>
 <form action="StQueryServlet" method="post" onSubmit="return check()">
<p>姓名　
  <input type="text" name="nam" size="20" maxlength="4" style="height:20px;line-height:14px;"/>
  &nbsp;
  <input type="submit" value="查询" style="height:25px;width:50px;"/>
</p>
</form>
 <p>&nbsp;</p>
 <p>&nbsp;</p>
<table width="1225" border="1" align="center" cellspacing="0" bordercolor="#CCCCCC" >
            
<tr>
                <td><div align="center">用户名</div></td>
    <td><div align="center">姓名</div></td>
                <td><div align="center">性别</div></td>
                <td><div align="center">学历</div></td>
                <td><div align="center">身份证号</div></td>
                <td><div align="center">通讯地址</div></td> 
                <td><div align="center">就读院校</div></td>
                <td><div align="center">邮箱地址</div></td>
                <td><div align="center">密码</div></td>
                <td><div align="center">专业</div></td>
                <td><div align="center">联系电话</div></td>
              
  </tr>
    </table>
</body>
</html>