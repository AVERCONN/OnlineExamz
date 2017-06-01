<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="bean.CaInfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考生状态浏览</title>
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

<p align="right"><a href="personal-1.jsp" class="STYLE5">首页</a></p>
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
<p>当前位置：浏览考生状态</p>
<p align="left">—————————————————————————————————————————</p>
 
 <p>&nbsp;</p>
 <p><strong>该考生信息：</strong>
<table width="1225" border="1" align="center" cellspacing="0" bordercolor="#CCCCCC" >
            
<tr>
                <td><div align="center">用户名</div></td>
                <td><div align="center">试题编号</div></td>
                <td><div align="center">姓名</div></td>
                <td><div align="center">成绩</div></td>
                <td><div align="center">状态</div></td>
                <td><div align="center">操作</div></td> 
                <td><div align="center">黑名单</div></td>
               
  </tr>

             <tr>
              <td width="12%" ><div align="center">
                <div align="center">
                  <%=((CaInfo)session.getAttribute("caInfo")).getUsername()%>
              </div></td>
              <td width="20%" ><div align="center">
                <div align="center">
                  <%=((CaInfo)session.getAttribute("caInfo")).getPno()%>
              </div></td>
              <td width="12%" ><div align="center">
                <div align="center">
                  <%=((CaInfo)session.getAttribute("caInfo")).getName()%>
              </div></td>
              <td width="12%" ><div align="center">
                <div align="center">
                  <%=((CaInfo)session.getAttribute("caInfo")).getGrade()%>
              </div></td>
              <td width="12%" ><div align="center">
                <div align="center">
                  <%if(((CaInfo)session.getAttribute("caInfo")).getState()==1) out.print("正常");%>
                   <%if(((CaInfo)session.getAttribute("caInfo")).getState()==0) out.print("禁用");%>
           
                
              </div></td>
             
      <td width="12%" ><div align="center">
                <div align="center">
      <a href="BrowseStateServlet2?username=<%=((CaInfo)session.getAttribute("caInfo")).getUsername()%>
      &pNo=<%=((CaInfo)session.getAttribute("caInfo")).getPno()%>">成绩作废
      </a></div></td>
       <td width="20%" ><div align="center">
                <div align="center">
      <a href="BlackListServlet?username=<%=((CaInfo)session.getAttribute("caInfo")).getUsername()%>">加入黑名单
      </a></div></td>
                   </tr>
      
    </table>          
</body>
</html>