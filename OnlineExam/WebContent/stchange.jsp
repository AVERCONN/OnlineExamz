<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考生信息修改</title>
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

<style type="text/css">

.STYLE1 {
	font-family: "微软雅黑";
	font-size: 18px;
}
.STYLE3 {
	font-family: "微软雅黑";
	font-size: 18px;
	color: #0099FF;
	font-weight: bold;
}
.but{
        

            width:50px; /*宽*/
            height: 30px;/*高*/          
            font-size: 15px;/*字体大小*/

        }
.ast{
width:120px;
font-size:18px;
}
</style>
</head>
<body>
<%
	
String driver="com.mysql.jdbc.Driver";  
String url = "jdbc:mysql://localhost:3307/examinationsystem?user=root&password=123";//数据库已经设置了编码，这里不需要再设置
response.setContentType("text/html;charset=utf-8");
request.setCharacterEncoding("utf-8");

Class.forName(driver); 
Connection conn=DriverManager.getConnection(url);
Statement stmt = conn.createStatement();		   
String username=request.getParameter("no");	//获取用户名
ResultSet rs = stmt.executeQuery("select * from student where username='"+username+"'");
	 
      %>

<p>&nbsp;</p>


<p class="STYLE1">当前位置：修改考生信息</p>
<p align="left" class="STYLE3">—————————————————————————————————————————</p>
 <form action="" method="post" onSubmit="return check()">
<p>用户名　
  <input type="text" name="no" size="20" style="height:20px;line-height:14px;"/>
  &nbsp;
  <input type="submit" value="查询" style="height:25px;width:50px;"/>
</p>
 </form>
 <p>&nbsp;</p>
 <p>&nbsp;</p>
<table width="1265" border="1" align="center" cellspacing="0" bordercolor="#CCCCCC" >
            
<tr>
                <td width="6%" ><div align="center">用户名</div></td>
    <td width="8%" ><div align="center">姓名</div></td>
    <td width="6%" ><div align="center">性别</div></td>
    <td width="5%" ><div align="center">学历</div></td>
    <td width="12%" ><div align="center">身份证号</div></td>
    <td width="11%" ><div align="center">通讯地址</div></td> 
    <td width="11%" ><div align="center">就读院校</div></td>
    <td width="10%" ><div align="center">邮箱地址</div></td>

    <td width="6%" ><div align="center">密码</div></td>
    <td width="9%" ><div align="center">专业</div></td>
    <td width="10%" ><div align="center">手机号码</div></td>
    <td width="6%" ><div align="center">操作</div></td>
  </tr>
 <%if(rs.next()){%>
            <tr>
              <td width="6%" ><div align="center">
                <div align="center">
                  <%out.println(rs.getString(2));%>
              </div></td>
              <td width="8%" ><div align="center">
                <div align="center">
                  <%out.println(rs.getString(3));%>
              </div></td>
              <td width="6%" ><div align="center">
                <div align="center">
                  <%out.println(rs.getString(4));%>
              </div></td>
              <td width="5%" ><div align="center">
                <div align="center">
                  <%out.println(rs.getString(5));%>
              </div></td>
              <td width="12%" ><div align="center">
                <div align="center">
                  <%out.println(rs.getString(6));%>
              </div></td>
              <td width="11%" ><div align="center">
                <div align="center">
                  <%out.println(rs.getString(7));%>
              </div></td>
              <td width="11%" ><div align="center">
                <div align="center">
                  
              <%
              if(rs.getString(9)==null){
            	  out.println("");
            	  }
              else{
            	  out.println(rs.getString(9)); 
              }
              %>
                </div></td>
              <td width="10%" ><div align="center">
                <div align="center">
                  <%
              if(rs.getString(10)==null){
            	  out.println("");
            	  }
              else{
            	  out.println(rs.getString(10)); 
              }
            	  %>
              </div></td>
              <td width="6%" ><div align="center">
                <div align="center">
                  <%out.println(rs.getString(11));%>
              </div></td>
              <td width="9%" ><div align="center">
                <div align="center">
                  <%
              if(rs.getString(12)==null){
            	  out.println("");
            	  }
              else{
            	  out.println(rs.getString(12)); 
              }

            %>
              </div></td>
              <td width="10%" ><div align="center">
                <div align="center">
                  <%out.println(rs.getString(8));%>
              </div></td>
              <td width="6%" ><div align="center">
            <div align="center"><a href="stchange1.jsp?username=<%=rs.getString(2)%>" >修改</a></div></td>
  </tr>
            <%
		 }  %>
              </table>
              
<%
	     rs.close();  
		 stmt.close();
		 conn.close();  
		  %>
      
             
 <p>&nbsp;</p>
</body>
</html>