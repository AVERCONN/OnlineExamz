<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="bean.StInfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考生信息删除</title>
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
</head>
<body>
<p>&nbsp;</p>
<p>当前位置：删除考生信息</p>
<p align="left">—————————————————————————————————————————</p>
 
 <p>&nbsp;</p>
 <p><strong>该考生信息：</strong>
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
                <td><div align="center">专业</div></td>
                <td><div align="center">联系电话</div></td>
                <td><div align="center">操作</div></td>
               
  </tr>

             <tr>
              <td width="6%" ><div align="center">
                <div align="center">
                  <%=((StInfo)session.getAttribute("stInfo")).getUsername()%>
              </div></td>
              <td width="8%" ><div align="center">
                <div align="center">
                  <%=((StInfo)session.getAttribute("stInfo")).getName()%>
              </div></td>
              <td width="6%" ><div align="center">
                <div align="center">
                  <%=((StInfo)session.getAttribute("stInfo")).getSex()%>
              </div></td>
              <td width="5%" ><div align="center">
                <div align="center">
                  <%=((StInfo)session.getAttribute("stInfo")).getXueli()%>
              </div></td>
              <td width="12%" ><div align="center">
                <div align="center">
                  <%=((StInfo)session.getAttribute("stInfo")).getCard()%>
              </div></td>
              <td width="11%" ><div align="center">
                <div align="center">
                  <%=((StInfo)session.getAttribute("stInfo")).getAddress()%>
              </div></td>
              <td width="11%" ><div align="center">
                <div align="center">
                  
              <%
              if(((StInfo)session.getAttribute("stInfo")).getUniversity()==null){
            	  out.println("");
            	  }
              else{
            	  out.println(((StInfo)session.getAttribute("stInfo")).getUniversity()); 
              }
              %>
                </div></td>
              <td width="10%" ><div align="center">
                <div align="center">
                  <%
              if(((StInfo)session.getAttribute("stInfo")).getEmail()==null){
            	  out.println("");
            	  }
              else{
            	  out.println(((StInfo)session.getAttribute("stInfo")).getEmail()); 
              }
            	  %>
              </div></td>        
              <td width="9%" ><div align="center">
                <div align="center">
                  <%
              if(((StInfo)session.getAttribute("stInfo")).getSpecial()==null){
            	  out.println("");
            	  }
              else{
            	  out.println(((StInfo)session.getAttribute("stInfo")).getSpecial()); 
              }

            %>
              </div></td>
              <td width="10%" ><div align="center">
                <div align="center">
                  <%=((StInfo)session.getAttribute("stInfo")).getTelephone()%>
                   </div> </td>
          <td width="9%" ><div align="center">
                <div align="center">
      <a href="DelstServlet1?username=<%=((StInfo)session.getAttribute("stInfo")).getUsername()%>">删除</a></div></td>
                   </tr>
      
    </table>          
</body>
</html>