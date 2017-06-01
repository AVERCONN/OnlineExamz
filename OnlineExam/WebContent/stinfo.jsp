<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bean.StInfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考生个人信息</title>
<style type="text/css">
p a:hover{
color:#FF6600;
}
.ast{
width:120px;
font-size:18px;
}
.STYLE6 {font-size: 18px; font-weight: bold; font-family: "微软雅黑"; text-decoration: none; color: #000000; }
.STYLE4 {font-size: 18px}
.STYLE5 {color: #FF4413}
</style>
</head>
<body>
<p align="right"><a href="stindex.jsp?username=<%=request.getParameter("username") %>" class="STYLE6">个人中心</a></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p class="STYLE5">_______<span class="STYLE4">您的个人信息</span>_________________________________________________________________________________</p>
<p>&nbsp;</p>
<table border="1" style="margin:50px auto 0;">
<tr>
          <td align="right" class="ast">用&nbsp; 户&nbsp;&nbsp; 名：</td>
      <td valign="middle" style="height:30px;"><%=((StInfo)session.getAttribute("stInfo")).getUsername() %>
            </td>
         <td align="right" class="ast">就读院校：</td>
      <td valign="middle" style="height:30px;"><%=((StInfo)session.getAttribute("stInfo")).getUniversity() %>
            </td>   
    </tr>
   
<tr>
          <td align="right" class="ast">姓　　名：</td>
      <td valign="middle" style="height:30px;"><%=((StInfo)session.getAttribute("stInfo")).getName() %>
            </td>
            <td align="right" class="ast">专　　业：</td>
      <td valign="middle" style="height:30px;"><%=((StInfo)session.getAttribute("stInfo")).getSpecial() %>
            </td>
    </tr>
   
    <tr>
    <td align="right" class="ast">性　　别：</td>
      <td valign="middle" style="height:30px;"><%=((StInfo)session.getAttribute("stInfo")).getSex() %>
            </td>
          <td align="right" class="ast">手机号码：</td>
      <td valign="middle" style="height:30px;"><%=((StInfo)session.getAttribute("stInfo")).getTelephone() %>
            </td>
    </tr>
     <tr>
       <td align="right" class="ast">邮箱地址：</td>
      <td valign="middle" style="height:30px;"><%=((StInfo)session.getAttribute("stInfo")).getEmail() %>
            </td>
          <td align="right" class="ast">学　　历：</td>
      <td valign="middle" style="height:30px;"><%=((StInfo)session.getAttribute("stInfo")).getXueli() %>
            </td>
    </tr>
    <tr>
      <td align="right" class="ast">身份证号：</td>
      <td valign="middle" style="height:30px;"><%=((StInfo)session.getAttribute("stInfo")).getCard() %>
            </td>
         <td align="right" class="ast">通讯地址：</td>
      <td valign="middle" style="height:30px;"><%=((StInfo)session.getAttribute("stInfo")).getAddress() %>
            </td>
    </tr>
     </table>
</body>
</html>