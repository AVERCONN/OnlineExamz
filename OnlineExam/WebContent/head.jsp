<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>考试资料网_在线考试系统</title>
<link href=".\css\index.css" rel="stylesheet" />
<link href=".\images\online.ico" rel="icon" />
<script src=".\js\jquery-1.9.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src=".\js\archenav.js"></script>
	<script src=".\js\jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src=".\js\jquery.nivo.slider.pack.js" type="text/javascript"></script>
    <script src=".\js\home.min.js" type="text/javascript"></script>
	<script src=".\js\windows.js" type="text/javascript"></script>
	<script type="text/javascript" src=".\js\jquery.min.js"></script>
<script type="text/javascript" src=".\js\zzsc.js"></script>
</head>
<body>
<div class="wrap">
<header>
<div class="spotlightmenu">
<ul>
<li><a href="index.jsp"><span>网站首页</span></a></li>
<li><a href="#"><span>考试题库</span></a></li>
<li><a href="#"><span>考试指南</span></a></li>
<li><a href="#"><span>在线模考</span></a></li>
<li><a href="#"><span>资料下载</span></a></li>
</ul>
</div>
<div class="search">
<form action="">

<input type="text" class="text" value="考试资料网在线考试"   
          onmouseover=this.focus();this.select();   
          onclick="if(value==defaultValue){value=''}"    
           onBlur="if(!value){value=defaultValue}" /> 
<input class="btn" type="submit" value="" />
</form>
</div>
<a href="stindex.jsp" class="log-1">个人中心</a>
<a href="index.jsp" class="log-2">退出</a>
</header>
<div class="wrap-1">
    <div class="header">
        <div class="topNav" id="topNav">
            <div class="topNav2">
                <div class="navBox">
                    
                        <div class="navIL"></div>
                        <div class="navIL navIR"></div>
                        <div class="navIM"></div>
                    
                    <div class="navMain" id="navMain">
                        <!-- 主导航放这里 -->
                        <div class="navIndex" id="navIndex">
                            <ul>
                                <li id="test-1"><a href="#" class="nav4">工程类</a></li>
                                <li id="test-2"><a href="#" class="nav5">医学类</a></li>
                                <li id="test-3"><a href="#" class="nav6">学历类</a></li>
                                <li id="nav1" ><a href="#" class="test-4">外语类</a></li>
                                <li id="test-5"><a href="#" class="nav8">计算机类</a></li>
                                <li id="test-6"><a href="#" class="nav9">财经类</a></li>
								<li id="test-7"><a href="#" class="nav10">外贸类</a></li>
								<li id="test-8"><a href="#" class="nav11">法律类</a></li>
                            </ul>
                        </div>
                        <div class="navSub" id="navSub">
                        <dl  class="nav4">
                                <dt>工程资料</dt>
                                <dd><a href="#">城市规划师</a></dd>
                                <dd><a href="#" target="_blank">安全工程师</a></dd>
								
                            </dl>
						<dl class="nav5">
                                <dt>医学资料</dt>
                                <dd><a href="#">基础医学</a></dd>
                                <dd><a href="#" target="_blank">执业医师</a></dd>
                                <dd><a href="#">卫生资格考试(中级)</a></dd>
                                <dd><a href="#">执业护士</a></dd>
								<dd><a href="#">执业药师</a></dd>
								
                            </dl>
                            <dl class="nav6">
                                <dt>学历资料</dt>
                                <dd><a href="#">中学试题</a></dd>
                                <dd><a href="#" target="_blank">自学考试</a></dd>
                                <dd><a href="#">博士考试</a></dd>
                                <dd><a href="#">高职试题</a></dd>
								<dd><a href="#">竞赛类试题</a></dd>
								
                            </dl>
							
                            <dl  class="nav7"  id="nav1">
                                <dt>外语资料</dt>
                                <dd><a href="#">翻译专业资格考试</a></dd>
                                <dd><a href="#">资格英语</a></dd>
                                <dd><a href="#">留学英语</a></dd>
                                <dd><a href="#">汉语水平考试</a></dd>
                            </dl>
							<dl class="nav8">
                                <dt>计算机资料</dt>
                                <dd><a href="#">计算机水平考试</a></dd>
                                <dd><a href="#" target="_blank">计算机维修工</a></dd>
                                <dd><a href="#">多媒体作品制作员</a></dd>
                                <dd><a href="#">图形图像处理</a></dd>
								<dd><a href="#">数字视频策划制作</a></dd>
                            </dl> 
                            <dl class="nav9">
                                <dt>财经资料</dt>
                                <dd><a href="#">注册税务师</a></dd>
                                <dd><a href="#">保险经纪人考试</a></dd>
								<dd><a href="#">经济师考试</a></dd>
								<dd><a href="#">银行业从业考试</a></dd>
                            </dl>
                            <dl class="nav10">
                                <dt>外贸资料</dt>
                                <dd><a href="#">物流师考试</a></dd>
                                <dd><a href="#">经贸从业人员考试</a></dd>
								<dd><a href="#">外销员考试</a></dd>
								<dd><a href="#">海关报关员考试</a></dd>
                            </dl>
                            <dl class="nav11">
                                <dt>法律资料</dt>
                                <dd><a href="#" target="_blank">国家司法考试</a></dd>
                                <dd><a href="#" target="_blank">法律顾问</a></dd>
                            </dl>
							
							
                        </div>
                        <!-- 二级放这里 end -->
                    </div>
                </div>
            </div>
        </div>
        <div class="logoBox">
            <h1 id="logo" class="logoPNG"></h1>
        </div>
    </div>
</div>

</body>
</html>