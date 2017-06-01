<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bean.Stgrade"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考生查询成绩</title>
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
<p class="STYLE5">_______<span class="STYLE4">您的考试成绩</span>_________________________________________________________________________________</p>
<p>&nbsp;</p>
<table border="1" style="margin:50px auto 0;">
<tr>
          <td align="right" class="ast">用&nbsp; 户&nbsp; 名：</td>
      <td valign="middle" style="height:30px;"><%=((Stgrade)session.getAttribute("stgrade")).getSno() %>
            </td>
         <td align="right" class="ast">姓　　名：</td>
      <td valign="middle" style="height:30px;"><%=((Stgrade)session.getAttribute("stgrade")).getSname()  %>
            </td>   
    </tr>
   
<tr>
          <td align="right" class="ast">试　　卷　　编　　号：</td>
      <td valign="middle" style="height:30px;"><%=((Stgrade)session.getAttribute("stgrade")).getpNo() %>
            </td>
            <td align="right" class="ast">成　　绩：</td>
      <td valign="middle" style="height:30px;"><%=((Stgrade)session.getAttribute("stgrade")).getGrade() %>
            </td>
    </tr>
   
    
     </table>
</body>
</html>