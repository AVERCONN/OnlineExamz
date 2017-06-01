<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<%@include file="/head.jsp"%>
<%

String id,password;
id="123";
password="123";
String driverName="com.mysql.jdbc.Driver";
String userName="root";
String userPasswd="123";
String dbName="examinationsystem";
String tableName="paperanswer";
String url="jdbc:mysql://localhost:3307/"+dbName+"?user="+userName+"&password="+userPasswd;
String paperNo;
String num;
String type; 
String title;
String op1,op2,op3,op4;
String answer;
String fillAnswer;
int opcount=0;			//生成选择题控件名编号
int fillcount=0;		//生成填空题控件名编号
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection connection=DriverManager.getConnection(url);
Statement statement = connection.createStatement();
String sql="SELECT * FROM "+tableName+" where paperNo='computer0003'";
//+" where id='"+id+"'";
	statement.execute(sql);
	ResultSet rs = statement.executeQuery(sql); 
	ResultSetMetaData rmeta = rs.getMetaData();
	int numColumns=rmeta.getColumnCount();
	
%>
<%
        long time=3600;				//设置定时时间
 %>
<script>

var second = <%= time %>; // 剩余秒数
var toDays = function(){
 var s = second % 60; // 秒
 var mi = (second - s) / 60 % 60; // 分钟
 //var h =  ((second - s) / 60 - mi ) / 60 % 24; // 小时
 //var d =  (((second - s) / 60  mi ) / 60 - h ) / 24 // 天
 return "剩余："  + mi + "分钟" + s + "秒";

}
//然后写一个定时器
window.setInterval(function(){
 second --;
 if(second<=0) {time=0;second=0;alert("时间到");
 
 }
 document.getElementById("showTimes").innerHTML = toDays ();
}, 1000);
</script>
<%if(time<=0) %><jsp:forward page="index.jsp"></jsp:forward>

<head>

<title>测试</title>
<style type="text/css">
body {
	align: center;
	background-repeat: repeat-x;
}
</style>



</head>

<body>
	<form action="DoExamResultServlet" method="post" name="form" >
		<P>
		<br><br><br><br>
			<div id="showTimes"></div>
			<br>
			一、选择题
			<%   
			while(rs.next()) {
				opcount++;
				paperNo=rs.getString(1);
				num=rs.getString(2);
				type=rs.getString(3);
				title=rs.getString(4);
				op1=rs.getString(5);
				op2=rs.getString(6);
				op3=rs.getString(7);
				op4=rs.getString(8);
				answer=rs.getString(9);
				String name="O"+opcount;
				%>
				<input type=hidden name="paperNo" value=<%=paperNo %>>
				<% 
				if(type.equals("1")) break;
%>

		<P>
			<%=num+"."+title %>
			<BR> <INPUT type="radio" name=<%=name %> value="A"><%="A."+op1 %><BR><INPUT
				type="radio" name=<%=name %> value="B"><%="B."+op2 %><BR> <INPUT type="radio"
				name=<%=name %> value="C"><%="C."+op3 %><BR><INPUT type="radio"
				name=<%=name %> value="D"><%="D."+op4 %>
			<%
			} 
			out.print("<br>");
			  
			%>
		
		<P>
			二、填空题
			<%
			rs = statement.executeQuery(sql);
			while(rs.next()) {
			fillcount++;
			paperNo=rs.getString(1);
			num=rs.getString(2);
			type=rs.getString(3);
			title=rs.getString(4);
			op1=rs.getString(5);
			op2=rs.getString(6);
			op3=rs.getString(7);
			op4=rs.getString(8);
			answer=rs.getString(9);
			String name="F"+fillcount;
			if(type.equals("0")) continue;
%>
		
		<P>
			<%=num+"."+title %> <BR><BR><INPUT type="text" name=<%=name					 %>><BR>
			<%
		} 
		out.print("<br>");
		rs.close(); 
		statement.close(); 
		connection.close();  
%>
			<BR>
		<p>
			<INPUT TYPE="submit" value="提交" name="submit"><br> </font>
		</form>	
		</center>
	
</body>
</html>
