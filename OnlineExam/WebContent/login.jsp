<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录——在线考试系统</title>
<script language="javascript">
    function check(){//js表单验证方法
        if(document.getElementById("usna").value==""|| document.getElementById("passw").value==""){
            alert("请输入账号密码");
            return false;
        }
        if(document.getElementById("yhsf").value=="emp"){
            alert("请选择");
            return false;
        }
        return true;
    }
</script>
<style type="text/css">
.but{
           border-style: solid;
           border-color:#D3D3D3;
            width:60px; /*宽*/
            height: 30px;/*高*/
           background-color:#1E90FF;
            font-size: 18px;/*字体大小*/
            font-family:"楷体";
           
            color: white; /*字体颜色*/
        }
   .ast{
width:120px;
font-size:18px;
}
   .zay{
background:#FFDEAD;
font-size: 20px;
color: #0033FF;
	font-weight: bold;
}
    .STYLE1 {
	color: #999999;
	font-family: "微软雅黑";
	font-size: 14px;
}
.STYLE3 {color: #666666}
.STYLE7 {color: #FF0000}
</style>
</head> 
<body>
<p>&nbsp;</p>
<p class="zay">用户登录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="STYLE6 STYLE1"><span class="STYLE3"> 还未注册？请点击</span><a href="register.jsp"><span class="STYLE7">立即注册</span></a><span class="STYLE3">。</span></span></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="248" border="0" align="center">
<form action="LoginServlet" method="post" onSubmit="return check()">
  <tr>
    <td class="ast" align="right">用户名</td>
    <td valign="middle" style="height:40px;">
      <input type="text" name="username" id="usna" size="18" maxlength="16" style="height:23px;line-height:18px;"/>
   </td>
  </tr>
  <tr>
    <td align="right" class="ast">密码</td>
    <td style="height:40px;">
      <input type="password" name="password" id="passw" size="19" maxlength="16" style="height:23px;line-height:18px;"/>
    </td>
  </tr>
  <tr>
    <td align="right" class="ast">用户身份</td>
   <td style="height:40px;">
      <select name="yhsf" style="width:120px;height:20px;" id="yhsf">
        <option value="emp" selected="selected"></option>
        <option value="tikumanag">题库管理员</option>
        <option value="jiankao">监考员</option>
        <option value="st">考生</option>
        <option value="stmanag">考生管理员</option>
      </select>
   </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="center"><span style="width:50%;">
      <input type="submit" class="but"  value="登录"/>
    </span><span style="width:50%;">
    <input type="reset" class="but" value="重置"/>
    </span></td>
  </tr>
  </form>
</table>
<p>&nbsp;</p>

</body>
</html>
