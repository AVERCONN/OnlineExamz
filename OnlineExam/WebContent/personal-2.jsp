<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<li><a href="#"><span>网站首页</span></a></li>
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
<a href="ksmindex.jsp" class="log-1">个人中心</a>
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

<div class="wrapper slide-box">
    <div class="slider">
        <div class="theme-default">
            <div id="slider" class="nivoSlider">
                <a href="#" title="1"><img src=".\images\a.png" data-thumb=".\images\a.png" alt="" /></a>
                <a href="#" title="2"><img src=".\images\b.jpg" data-thumb=".\images\b.jpg" alt="" /></a>
                <a href="#" title="3"><img src=".\images\c.jpg" data-thumb=".\images\c.jpg" alt="" /></a>
                <a href="#"><img src=".\images\a.png" data-thumb=".\images\a.png" alt="" /></a>
                <a href="#" title="4"><img src=".\images\b.jpg" data-thumb=".\images\b.jpg" alt="" /></a>
                <a href="#" title="5"><img src=".\images\c.jpg" data-thumb=".\images\c.jpg" alt="" /></a>
                <a href="#" title="6"><img src=".\images\b.jpg" data-thumb=".\images\b.jpg" alt="" /></a>
            </div>
        </div>
    </div>
	</div>
	
<div class="wrap-2">
<div class="content-2"></div>
<div class="content-3">
<div class="pic-1">
<a href="javascript: sAlert('<br>全国2008年4月高等教育自学考试宪法学资产评估真题2008年<br><br>全国2013年7月高等教育自学考试宪法学<br><br>全国2013年7月高等教育自学考试行政法<br><br>经济师考试初级经济基础真题');" class="pic-5" />历史真题</a>
<p>让我们站在巨人的肩膀上</p>  
</div>
<div class="pic-2">
<a href="javascript: sAlert('<br>高级维修电工理论知识试卷（四）<br><br>高级维修电工理论知识试卷（五）<br><br>卫生高级职称考试麻醉（正高）特训密卷十<br><br>卫生高级职称考试麻醉（正高）特训密卷九');" class="pic-6" />模拟试题</a>
<p>精准定位，考试重点一把抓</p>
</div>
<div class="pic-3">
<a href="javascript: sAlert('<br>2015年四川会计从业资格考试《财经法》（1）<br><br>2015年四川会计从业资格考试《财经法》（2）<br><br>2015年四川会计从业资格考试《财经法》（3）');" class="pic-7" />章节练习</a>
<p>哪里不会，抓哪里</p>
</div>
<div class="pic-4">
<a href="javascript: sAlert('<br>注册电气工程师试题库电气工程基础知识<br><br>高级人力资源管理师（国家职业资格一级）<br><br>注册环保师考试题库环保公共基础知识单元');" class="pic-8" />每日一练</a>
<p>日积月累，以致千里</p>
</div>
<div id="Loading" style="display:none" ondblclick="this.style.display='none'"></div>
</div> <!-- window.js -->
</div>

<div class="wrap-3">
<div class="content-4">
<div class="content-6"></div>
<div class="pic-9">
<div class="case">
    <div class="title cf">
      <ul class="title-list fr cf ">
        <li class="on">工程类</li>
        <li>医学类</li>
        <li>学历类</li>
        <li>计算机类</li>
      </ul>
    </div>
    <div class="product-wrap">
     <!--案例1-->
      <div class="product show">
        <ul class="cf">
          <li class="ml0">
            <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">一级建造师机电工程管理与实务真题2015年&nbsp;2015-12-17</a></p>
            <input name="btn" type="button" class="text-1" value="马上做题" />
          </li>
          <li>
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">2015年一级建造师市政公用工程考试真题&nbsp;2015-12-0</a></p>
            <input name="btn" type="button" class="text-2" value="马上做题" />
          </li>
          <li>
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">城市规划师考试《城市规划管理与法规》真题2009年&nbsp;2015-12-08</a></p>
            <input name="btn" type="button" class="text-3" value="马上做题" />
          </li>
          <li>
         <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">2015年安全生产技术真题&nbsp;2015-12-07</a></p>
            <input name="btn" type="button" class="text-4" value="马上做题" />
          </li>
		   <li>
         <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">2015年安全生产管理知识真题&nbsp;2015-12-07</a></p>
            <input name="btn" type="button" class="text-5" value="马上做题" />
          </li>
        </ul>
      </div>
      <!--案例2-->
      <div class="product">
        <ul class="cf">
          <li class="ml0">
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">2015年执业药师《药学综合知识》真题及答案&nbsp;2016-1-06</a></p>
            <input name="btn" type="button" class="text-1" value="马上做题" />
          </li>
          <li>
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">执业药师考试中药学专业知识--历年真题精选（三）&nbsp;2016-1-06</a></p>
            <input name="btn" type="button" class="text-2" value="马上做题" />
          </li>
          <li>
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">执业药师考试中药学专业知识--历年真题精选（二）&nbsp;2016-1-06</a></p>
            <input name="btn" type="button" class="text-3" value="马上做题" />
          </li>
          <li>
         <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">执业药师考试中药学专业知识--历年真题精选（一）&nbsp;2016-1-06</a></p>
            <input name="btn" type="button" class="text-4" value="马上做题" />
          </li>
		   <li>
         <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">执业药师考试中药学专业知识历年真题精选&nbsp;2016-1-06</a></p>
            <input name="btn" type="button" class="text-5" value="马上做题" />
          </li>
        </ul>
      </div>
      <!--案例3-->
      <div class="product">
        <ul class="cf">
          <li class="ml0">
           <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">江苏省2015年普通高校专转本选拔考试试题&nbsp;2015-12-30</a></p>
            <input name="btn" type="button" class="text-1" value="马上做题" />
          </li>
          <li>
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">2008年江苏省“专转本”计算机应用基础试题&nbsp;2015-12-30</a></p>
            <input name="btn" type="button" class="text-2" value="马上做题" />
          </li>
          <li>
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">2007年江苏省普通高校“专转本”计算机应用基础考试&nbsp;2015-12-30</a></p>
            <input name="btn" type="button" class="text-3" value="马上做题" />
          </li>
          <li>
         <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">2004年普通高等学校专升本招生考试（计算机基础）&nbsp;2015-12-30</a></p>
            <input name="btn" type="button" class="text-4" value="马上做题" />
          </li>
		   <li>
         <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">2003年普通高等学校专升本招生考试计算机基础&nbsp;2015-12-29</a></p>
            <input name="btn" type="button" class="text-5" value="马上做题" />
          </li>
        </ul>
      </div>
      <!--案例4-->
      <div class="product">
        <ul class="cf">
          <li class="ml0">
           <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">linux模拟试卷&nbsp;2015-11-28</a></p>
            <input name="btn" type="button" class="text-1" value="马上做题" />
          </li>
          <li>
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">计算机操作员中级理论知识试卷&nbsp;2015-11-24</a></p>
            <input name="btn" type="button" class="text-2" value="马上做题" />
          </li>
          <li>
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">计算机二级考试VISUAL FOXPRO机试真题2015年&nbsp;2015-3-27</a></p>
            <input name="btn" type="button" class="text-3" value="马上做题" />
          </li>
          <li>
         <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">全国计算机等级考试三级数据库技术真题2013年03月&nbsp;2015-3-18</a></p>
            <input name="btn" type="button" class="text-4" value="马上做题" />
          </li>
		   <li>
         <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">全国计算机等级考试二级C语言机试真题2012年03月&nbsp;2015-3-18</a></p>
            <input name="btn" type="button" class="text-5" value="马上做题" />
          </li>
        </ul>
      </div>
	
    </div>
  </div>
</div>
</div>

<div class="content-5">
<div class="content-7"></div>
<div class="pic-10">
<div class="star" id="star">
<dl href="#">
<dt></dt><dd>全国2008年4月高等教育<br/>自学考试宪法学试题</dd></dl>
<dl href="#">
<dt></dt><dd>全国2013年7月高等教育<br/>自学考试行政法</dd></dl>
<dl href="#">
<dt></dt><dd>资产评估真题2008年</dd></dl>
<dl href="#">
<dt></dt>
<dd>经济师考试初级经济<br/>基础真题</dd></dl>
<dl href="#">
<dt></dt>
<dd>2015年执业药师《药<br/>学综合知识》真题</dd></dl>
<dl href="#">
<dt></dt>
<dd>2009年11月秘书国家职<br/>业资格四级考试真题</dd></dl>

<p class="next"><i class="on"></i><i></i><i></i></p>
<a href="" target="_blank" id="starHover"></a>
</div>
</div>
</div>

<div class="wrap-4">
<div class="content-8">
<div class="content-9"></div>
<div class="pic-11">
<div class="case">
    <div class="title cf">
      <ul class="title-list fr cf ">
        <li class="on">外语类</li>
        <li>财经类</li>
        <li>外贸类</li>
        <li>法律类</li>
      </ul>
    </div>
    <div class="product-wrap">
     <!--案例1-->
      <div class="product show">
        <ul class="cf">
          <li class="ml0">
            <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">专业英语四级真题2015年&nbsp;2015-5-05</a></p>
            <input name="btn" type="button" class="text-1" value="马上做题" />
          </li>
          <li>
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">职称英语综合类B级真题2015年&nbsp;2015-4-14</a></p>
            <input name="btn" type="button" class="text-2" value="马上做题" />
          </li>
          <li>
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">职称英语综合类C级真题2015年&nbsp;2015-4-14</a></p>
            <input name="btn" type="button" class="text-3" value="马上做题" />
          </li>
          <li>
         <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">职称英语卫生类A级真题2015年&nbsp;2015-4-13</a></p>
            <input name="btn" type="button" class="text-4" value="马上做题" />
          </li>
		   <li>
         <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">职称英语理工类B级真题2015年&nbsp;2015-4-14</a></p>
            <input name="btn" type="button" class="text-5" value="马上做题" />
          </li>
        </ul>
      </div>
      <!--案例2-->
      <div class="product">
        <ul class="cf">
          <li class="ml0">
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">经济师考试初级经济基础真题&nbsp;2016-1-06</a></p>
            <input name="btn" type="button" class="text-1" value="马上做题" />
          </li>
          <li>
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">2007年银行从业资格认证公共基础考试真题&nbsp;2016-1-06</a></p>
            <input name="btn" type="button" class="text-2" value="马上做题" />
          </li>
          <li>
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">2002年注册税务师（税法二）真题及答案&nbsp;2015-12-24</a></p>
            <input name="btn" type="button" class="text-3" value="马上做题" />
          </li>
          <li>
         <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">2003年证券从业考试证券投资分析真题&nbsp;2015-12-17</a></p>
            <input name="btn" type="button" class="text-4" value="马上做题" />
          </li>
		   <li>
         <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">2002年注册税务师（税法二）真题及答案&nbsp;2015-12-24</a></p>
            <input name="btn" type="button" class="text-5" value="马上做题" />
          </li>
        </ul>
      </div>
      <!--案例3-->
      <div class="product">
        <ul class="cf">
          <li class="ml0">
           <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">国际货运代理考试业务卷真题&nbsp;2015-12-30</a></p>
            <input name="btn" type="button" class="text-1" value="马上做题" />
          </li>
          <li>
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">报检员考试冲刺真题&nbsp;2015-12-25</a></p>
            <input name="btn" type="button" class="text-2" value="马上做题" />
          </li>
          <li>
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">物流师考试冲刺试卷（九）&nbsp;2015-11-30</a></p>
            <input name="btn" type="button" class="text-3" value="马上做题" />
          </li>
          <li>
         <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">物流师考试冲刺试卷（八）&nbsp;2015-12-17</a></p>
            <input name="btn" type="button" class="text-4" value="马上做题" />
          </li>
		   <li>
         <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">物流师考试冲刺试卷（七）&nbsp;2015-11-18</a></p>
            <input name="btn" type="button" class="text-5" value="马上做题" />
          </li>
        </ul>
      </div>
      <!--案例4-->
      <div class="product">
        <ul class="cf">
          <li class="ml0">
           <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">律师考试冲刺试卷（七）&nbsp;2015-11-28</a></p>
            <input name="btn" type="button" class="text-1" value="马上做题" />
          </li>
          <li>
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">法官考试冲刺真题（一）&nbsp;2015-11-24</a></p>
            <input name="btn" type="button" class="text-2" value="马上做题" />
          </li>
          <li>
          <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">律师考试冲刺试卷（九）&nbsp;2015-3-27</a></p>
            <input name="btn" type="button" class="text-3" value="马上做题" />
          </li>
          <li>
         <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">法官考试冲刺真题（三）&nbsp;2015-3-18</a></p>
            <input name="btn" type="button" class="text-4" value="马上做题" />
          </li>
		   <li>
         <p class="mt10"> <a href="#" target="_blank"><img src=".\images\paper_blank.png">律师考试冲刺试卷（六）&nbsp;2015-3-18</a></p>
            <input name="btn" type="button" class="text-5" value="马上做题" />
          </li>
        </ul>
      </div>
	
    </div>
</div>
</div>

<div class="content-10">
<div class="content-11"></div>
<div class="pic-12">
<div class="star" id="star-1">
<dl href="#">
<dt></dt><dd>电焊工中级理论（一）</dd></dl>
<dl href="#">
<dt></dt><dd>事业单位考试公共基<br/>础知识考试试题精选</dd></dl>
<dl href="#">
<dt></dt><dd>初级焊工模拟题-4</dd></dl>
<dl href="#">
<dt></dt>
<dd>中级会计会计实务真<br/>题2010年</dd></dl>
<dl href="#">
<dt></dt>
<dd>全国计算机等级考试<br/>一级MS Office真题</dd></dl>
<dl href="#">
<dt></dt>
<dd>2014初级护师考试基<br/>础知识真题及答案</dd></dl>

<p class="next"><i class="on"></i><i></i><i></i></p>
<a href="" target="_blank" id="starHover-1"></a>
</div>
</div>
</div>

</div>

<div class="foot">
<hr/>
<div class="content-12"><a href="#" class="content-13">关于我们</a></div>
<div class="content-12"><a href="#" class="content-14">付款方式</a></div>
<div class="content-12"><a href="#" class="content-15">广告联系</a></div>
<div class="content-12"><a href="#" class="content-16">网站地图</a></div>
<div class="content-12"><a href="#" class="content-17">友情链接</a></div>
<div class="content-12"><a href="#" class="content-18">网站招聘</a></div>
<div class="content-12"><a href="#" class="content-19">分享论坛</a></div>
<div class="content-12"><a href="#" class="content-20">帮助中心</a></div>
<p>资料考试网版权所有权</p>
</div>

</div>

<script type="text/javascript" src=".\js\jquery-1.6.4.min.js"></script>

<script type="text/javascript">

//明星专栏
(function(){
	$('#star dl dt').each(function(i){
		$(this).css('background','url(starimg.jpg) 0 ' + i * -61 +'px no-repeat').parent().attr('i',i);
	});

	var starHoverT;
	$('#star').delegate('dl','mouseenter',function(){
		clearTimeout(starHoverT);
		var n = $('#star dl:visible').index($(this)),h = $(this).attr('h'),i=$(this).attr('i');
		starHoverT = setTimeout(function(){
			if($('#starHover').css('width') != '0px'){
				var curY = $('#starHover').css('top').replace('px','');
				var oneY = curY > n * 87 ? 24 : 10,
				twoY = oneY == 10 ? 24 : 10;
				$('#starHover').stop().animate({'top':n * 87 - oneY},100).animate({'top':n * 87 - twoY},100).animate({'top':n * 87 - 18},50);
			}else{
				$('#starHover').css({'top':n * 87 - 18}).html('<b></b>');
				$('#starHover').animate({'width':300},200);//调会跳动的宽位置
			}
			$('#starHover b').css('margin-top',i * -127).parent().attr('href',h);
		},200);
	});
	
	$('#star').mouseleave(function(){xi
		clearTimeout(starHoverT);
		$('#starHover').animate({'width':0},200);//调跳动的那框的隐藏长度
	});

	$('#star .next').mouseenter(function(){
		$('#star').trigger('mouseleave');
	});
	var starAnim = false;
	$('#star .next i').mouseenter(function(){
		if(starAnim || $(this).hasClass('on')) return false;
		starAnim = true;
		$('#star .next i').removeClass('on');
		var i = $(this).addClass('on').index();
		$('#star dl:visible').slideUp(200,function(){
			starAnim = false;
		});
		$('#star dl').slice(i * 7,i * 7 + 7).slideDown(200);
	});


})();

</script>

<script type="text/javascript">

//明星专栏
(function(){
	$('#star-1 dl dt').each(function(i){
		$(this).css('background','url(starimg.jpg) 0 ' + i * -61 +'px no-repeat').parent().attr('i',i);
	});

	var starHoverT;
	$('#star-1').delegate('dl','mouseenter',function(){
		clearTimeout(starHoverT);
		var n = $('#star-1 dl:visible').index($(this)),h = $(this).attr('h'),i=$(this).attr('i');
		starHoverT = setTimeout(function(){
			if($('#starHover-1').css('width') != '0px'){
				var curY = $('#starHover-1').css('top').replace('px','');
				var oneY = curY > n * 87 ? 24 : 10,
				twoY = oneY == 10 ? 24 : 10;
				$('#starHover-1').stop().animate({'top':n * 87 - oneY},100).animate({'top':n * 87 - twoY},100).animate({'top':n * 87 - 18},50);
			}else{
				$('#starHover-1').css({'top':n * 87 - 18}).html('<b></b>');
				$('#starHover-1').animate({'width':300},200);//调会跳动的宽位置
			}
			$('#starHover-1 b').css('margin-top',i * -127).parent().attr('href',h);
		},200);
	});
	
	$('#star-1').mouseleave(function(){
		clearTimeout(starHoverT);
		$('#starHover-1').animate({'width':0},200);//调跳动的那框的隐藏长度
	});

	$('#star-1 .next').mouseenter(function(){
		$('#star-1').trigger('mouseleave');
	});
	var starAnim = false;
	$('#star-1 .next i').mouseenter(function(){
		if(starAnim || $(this).hasClass('on')) return false;
		starAnim = true;
		$('#star-1 .next i').removeClass('on');
		var i = $(this).addClass('on').index();
		$('#star-1 dl:visible').slideUp(200,function(){
			starAnim = false;
		});
		$('#star-1 dl').slice(i * 7,i * 7 + 7).slideDown(200);
	});


})();

</script>
</body>
</html>