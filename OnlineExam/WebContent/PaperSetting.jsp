<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<title>命题</title>
</head>
<body>
<form name="form1" method="post">
<table>
<tr>
<td>请选择需要的功能</td>
</tr>
<tr>
<td><input type="button" name="browsePaper" value="查看试卷" onclick="window.location.href='/PropositionalSystem/BrowsePaperServlet'" />
</td>
</tr>
<tr>
<td><input type="button" name="newPaper" value="新建试卷" onclick="location.href='NewPaper.jsp'"/>
</td>
</tr>
<tr>
<td><input type="button" name="editPaper" value="编辑试卷" onclick="window.location.href='/PropositionalSystem/EditPaperServlet'"/>
</td>
</tr>
<tr>
<td><input type="button" name="deletePaper" value="删除试卷" onclick="window.location.href='/PropositionalSystem/DeletePaperServlet'"/>
</td>
</tr>
</table>
</form>
</body>
</html>