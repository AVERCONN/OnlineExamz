<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
String id,password;
id="123";
password="123";
String driverName="com.mysql.jdbc.Driver";
String userName="root";
String userPasswd="123";
String dbName="examinationsystem";
String tableName="candidate";
String url="jdbc:mysql://localhost:3307/"+dbName+"?user="+userName+"&password="+userPasswd;
String paperNo; 
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection=DriverManager.getConnection(url);
Statement statement = connection.createStatement();
String sql="SELECT COUNT(*) FROM "+tableName+" where paperNo='computer0003'";
//+" where id='"+id+"'";
	statement.execute(sql);
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>