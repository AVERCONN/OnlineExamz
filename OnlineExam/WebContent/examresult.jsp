<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<%
String driver="com.mysql.jdbc.Driver";  
String url = "jdbc:mysql://localhost:3307/examinationsystem?user=root&password=123";
%>
<head>
<%@include file="/head.jsp"%>
</head>
<body>
<center>
<br><br><br><br><br><br><br><br><br><br><br><br>
 <%
try{ 
   	 Class.forName(driver); 
	 Connection conn=DriverManager.getConnection(url);
	 Statement stmt = conn.createStatement();
	 Statement stmt2 = conn.createStatement();
	 String username=(String) session.getAttribute("userName");
	 String pNo=(String) session.getAttribute("paperNo");
	 ResultSet rs = stmt.executeQuery("select * from paperanswer where paperNo='"+pNo+"'");
	 ResultSet rs2 = stmt.executeQuery("select * from candidate where Id='"+username+"'"+" and paperNo='"+pNo+"'");
	 while(rs.next()&&rs2.next()){
		 out.print("rs.getString(2). ");
		 out.print("你的答案:rs2.getString(4) ");
		 out.print("正确答案:rs.getString(9) ");
		 out.print("<br>");
	  }  
 		rs.close();
 		stmt.close();
 		conn.close();
}
catch(ClassNotFoundException e){
	 e.printStackTrace();
	 }catch(SQLException e){
		 e.printStackTrace();
	 }
%>
<%
String score=(String) session.getAttribute("score");
%>
<%="你的考试成绩为:"+score+"分"  %>
</center>

	
</body>
</html>
