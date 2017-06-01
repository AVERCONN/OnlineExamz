<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考生注册——在线考试系统</title>
<script type="text/javascript">

function check(){//js表单验证
	var nam=document.getElementById("nam").value; 
	var yuanx=document.getElementById("yuanx").value; 
	var telephone=document.getElementById("telephone").value;
	var sfzh=document.getElementById("sfzh").value;
	var email=document.getElementById("email").value;
   if(document.getElementById("no").value==""){
   alert("请输入用户名！");
   return false;
}
	 
	 if(document.getElementById("pwd").value==""||document.getElementById("repwd").value==""){
		 alert("请输入密码！");
		 return false;
		 }
		   if(document.getElementById("pwd").value!=document.getElementById("repwd").value){
		 alert("两次密码不一致");
		 return false;
	}	
	if(nam.length<2||escape(nam).indexOf( "%u" )<0){
		   alert("姓名必须为2位以上汉字！");
		   return false;
		   }
	 if(document.getElementById("xueli").value=="emp"){
		    alert("请选择");
		    return false;
		} 	
	   // 身份证号码为15位或者18位，15位时全为数字，18位前17位为数字，最后一位是校验位，可能为数字或字符X  
var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;  
	   if(reg.test(sfzh) === false)  
	   {  
	       alert("身份证号输入不合法");  
	       return  false;  
	   }  
	   if(document.getElementById("addr").value==""){
			 alert("请输入通讯地址！");
			 return false;
			 } 
   if(yuanx){
	   if(escape(yuanx).indexOf( "%u" )<0){
		   alert("院校名称不合法！");
		   return false;
		   }
}
   if(!(/^1[3|4|5|8][0-9]\d{4,8}$/.test(telephone)))
   {
	   alert("请输入正确的手机号码！");
       return false;
 
   }
   if(email){
   var reg= /[a-zA-Z0-9]{1,10}@[a-zA-Z0-9]{1,5}\.[a-zA-Z0-9]{1,5}/;   
   if ( !(reg.test(email))) {
	   alert( "您输入的电子邮件地址不合法" );    
       return false; 
}
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
.STYLE6 {
	font-size: 14px;
	font-family: "微软雅黑";
	color: #666666;
}
.STYLE7 {color: #FF0000}
    </style>
</head> 
<body>
<p>&nbsp;</p>
<p class="zay">用户注册&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="STYLE6">如果您已经注册，请<a href="login.jsp"><span class="STYLE7">登录</span></a>，(带*号的必须填写)</span></p>
<p>&nbsp;</p>
<p><strong>请仔细填写个人信息，注册后信息将不能修改</strong></p>
<table border="0" style="margin:50px auto 0;">
 <form action="RegiServlet" method="post" onSubmit="return check()">
<tr>
          <td align="right" class="ast"><span class="STYLE7">*</span> 用 户 名： </td>
      <td valign="middle" style="height:40px;"><input name="no" id="no" type="text" size="20" maxlength="16" style="height:23px;line-height:18px;
            " /></td>
            <td align="right" class="ast">就读院校：</td>
    <td style="height:40px;"><input type="text" name="yuanx" id="yuanx" size="20" maxlength="30" style="height:23px;line-height:18px;"/> </td>
    </tr>
    
    <tr>
          <td align="right" class="ast"><span class="STYLE7">*</span>密　　码：</td>
<td style="height:40px;"><input type="password" name="pwd"  id="pwd" size="21" maxlength="16" style="height:23px;line-height:18px;"/>             </td>
<td align="right" class="ast">专　　业：</td>
    <td style="height:40px;"><input type="text" name="spe" id="spe" size="20" maxlength="30" style="height:23px;line-height:18px;"
          /></td>
</tr>
 <tr>
          <td align="right" class="ast"><span class="STYLE7">*</span>确认密码：</td>
    <td style="height:30px;"><input name="repwd" id="repwd" type="password" size="21" maxlength="16" style="height:23px;line-height:18px;"/> </td>
    <td align="right" class="ast"><span class="STYLE7">*</span>手机号码：</td>
    <td style="height:40px;"><input type="text" name="telephone" id="telephone" size="20" maxlength="11" style="height:23px;line-height:18px;"/> </td>     

          </tr>
<tr>
          <td align="right" class="ast"><span class="STYLE7">*</span>姓　　名：</td>
    <td style="height:40px;"><input type="text" name="nam" id="nam" size="20" maxlength="4" style="height:23px;line-height:18px;"
          /></td>
          <td align="right" class="ast">邮箱地址：</td>
    <td style="height:40px;"><input type="text" name="email" id="email" size="20" style="height:23px;line-height:18px;"/> </td>
          </tr>
<tr>
<td align="right" class="ast"><span class="STYLE7">*</span>性　　别：</td>
           <td style="height:40px;">   <input name="xb" type="radio" id="RadioGroup1_0" value="男" checked="checked" />男
           <input type="radio" name="xb" value="女" id="RadioGroup1_1" /> 女       </td>
</tr>

<tr>          
    <td align="right" class="ast"><span class="STYLE7">*</span>学　　历：</td>
   <td style="height:40px;">
      <select name="xueli" style="width:120px;height:20px;" id="xueli">
        <option value="emp" selected="selected"></option>
        <option value="博士">博士</option>
        <option value="硕士">硕士</option>
        <option value="本科">本科</option>
        <option value="专科">专科</option>
        <option value="高中">高中</option>
        <option value="中专">中专</option>
        <option value="初中">初中</option>
        <option value="小学">小学</option>
      </select>
   </td>
   </tr>
<tr>
          <td align="right" class="ast"><span class="STYLE7">*</span>身份证号：</td>
    <td style="height:40px;"><input type="text" name="sfzh" id="sfzh" size="20" maxlength="30" style="height:23px;width:200px;line-height:18px;"/> </td></tr>
  <tr>  <td align="right" class="ast"><span class="STYLE7">*</span>通讯地址：</td>
    <td style="height:40px;"><input type="text" name="addr" id="addr" size="20" style="height:23px;width:200px;line-height:18px;"
          /></td>  </tr>
<tr>
          <td align="right" class="ast">&nbsp;</td>
    </tr>
<tr style="text-align:center;" colspan="2";>
          <td colspan="2" align="center"><input type="submit" class="but" value="注册"/><input type="reset" class="but" value="重置"/></td>
    </tr>
</form>
 </table>
</body>
</html>
