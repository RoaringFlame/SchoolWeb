<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>新闻页面</title>
<link rel="stylesheet" href="css/second.css">
<link rel="stylesheet" type="text/css" href="css/public.css">
</head>
<body>
	<div class="container">
		<div class="header">
			<div class="header">
				<div class="nav-top">
					<div class="logo">
						<div class="logo-main">
							<a href="index.jsp"><img src="img/logo.gif" alt="湖北第二师范学院"></a>
						</div>
					</div>
					<div class="word">
						<p>
							<a href="login.jsp">登录</a>&nbsp;|&nbsp;<a href="">注册</a>&nbsp;|&nbsp;<a
								href="">旧站入口</a>
						</p>
						<br>
						<form action="spageAction" method="post">
							<span class="search"> <s:textfield name="searchStr"
									cssClass="kuan" /> <input value="搜索" type="submit" class="an" />
							</span>
						</form>
					</div>
				</div>

				<div class="daohang">
					<ul class="nav">
						<li class="current"><a href="index.jsp"><b>网站首页</b></a></li>
						<li><a href="vpageAction?column=17">校园动态</a> <span>
								<p>
									<a href="vpageAction?column=2">通知公告</a>
								</p>
								<p>
									<a href="vpageAction?column=6">工作动态</a>
								</p>
						</span></li>

						<li><a href="newslist.html">校园风采</a> <span>
								<p>
									<a href="newslist.html">学校概况</a>
								</p>
								<p>
									<a href="newslist.html">办学特色</a>
								</p>
								<p>
									<a href="newslist.html">办学成果</a>
								</p>
								<p>
									<a href="newslist.html">校报校刊</a>
								</p>
								<p>
									<a href="newslist.html">校园风采</a>
								</p>
						</span></li>
						<li><a href="newslist.html">教师家园</a> <span>
								<p>
									<a href="newslist.html">读书交流</a>
								</p>
								<p>
									<a href="newslist.html">教师博客</a>
								</p>
								<p>
									<a href="newslist.html">名师风采</a>
								</p>
								<p>
									<a href="newslist.html">旅游生活</a>
								</p>
						</span></li>
						<li><a href="newslist.html">课程管理</a> <span>
								<p>
									<a href="newslist.html">教务管理</a>
								</p>
								<p>
									<a href="newslist.html">学科建设</a>
								</p>
								<p>
									<a href="newslist.html">高校课堂</a>
								</p>
								<p>
									<a href="newslist.html">家长课堂</a>
								</p>
						</span></li>
						<li><a href="newslist.html">学生乐园</a> <span>
								<p>
									<a href="newslist.html">读书频道</a>
								</p>
								<p>
									<a href="newslist.html">班级主页</a>
								</p>
								<p>
									<a href="newslist.html">学生活动</a>
								</p>

						</span></li>
						<li><a href="newslist.html">教学园地</a> <span>
								<p>
									<a href="newslist.html">常规教学</a>
								</p>
								<p>
									<a href="newslist.html">教育科研</a>
								</p>
								<p>
									<a href="newslist.html">教师成长</a>
								</p>
								<p>
									<a href="newslist.html">教师风采</a>
								</p>
						</span></li>
						<li><a href="newslist.html">党旗飘扬</a> <span>
								<p>
									<a href="newslist.html">网上党校</a>
								</p>
								<p>
									<a href="newslist.html">队伍建设</a>
								</p>
								<p>
									<a href="newslist.html">党校生活</a>
								</p>
						</span></li>
						<li><a href="newslist.html">专题教育</a> <span>
								<p>
									<a href="newslist.html">安全教育</a>
								</p>
								<p>
									<a href="newslist.html">年组活动</a>
								</p>
								<p>
									<a href="newslist.html">备课组建设</a>
								</p>
								<p>
									<a href="newslist.html">艺术节</a>
								</p>
								<p>
									<a href="newslist.html">读书节</a>
								</p>
								<p>
									<a href="newslist.html">科技节</a>
								</p>
						</span></li>
					</ul>
				</div>
			</div>

		</div>
		<div class="pic-dh">
			<img src="img/1.jpg" alt="">
		</div>
		<div class="main">
			<div class="left">
				<div class="left-ipage">
					<div class="left-ititle">
						<h2>校园动态</h2>
					</div>
					<div class="left-itemi">
						<ul>
							<li><a href="vpageAction?column=2">通知公告</a></li>
							<li><a href="vpageAction?column=17">新闻动态</a></li>
							<li><a href="vpageAction?column=18">学校公告</a></li>
							<li><a href="vpageAction?column=19">学生园地</a></li>
							<li><a href="vpageAction?column=20">教师风采</a></li>
						</ul>
					</div>
				</div>
				<div class="left-page">
					<div class="left-title">
						<h3>网站统计</h3>
					</div>
					<div class="left-item">
						<ul>
							<li>总访问量：<s:property value="#application.counter.allCount" /></li>
							<li>总浏览量：<s:property value="#application.counter.clickCount" /></li>
							<li>今日访问：<s:property value="#application.counter.todayCount" /></li>
							<li>日均访问：<s:property
									value="#application.counter.allCount/#application.counter.dayCount" /></li>
						</ul>
					</div>
				</div>

			</div>
			<div class="right-page">
				<div class="right-title">
					<p>
						<a href="index.jsp">首页</a>:当前页面>><a
							href="vpageAction?column=<s:property
								value="news.newsColumn" />">
							<s:property value="#application.map[news.newsColumn]" />
						</a>>>
						<s:property value="%{news.newsTitle}" />
					</p>
				</div>
				<div class="main-item">
					<div class="article-ti">
						<h2>
							<s:property value="%{news.newsTitle}" />
						</h2>

						<p>
							上传日期：
							<s:date name="%{news.uploadDate}" format="yyyy-MM-dd" />
							&nbsp作者：
							<s:property value="%{news.newsUploader}" />
							&nbsp点击数：
							<s:property value="%{news.readCount}" />
						</p>
					</div>
					<div class="article">
						<s:property escape="false" value="%{content}" />
					</div>
				</div>

			</div>
			<div class="clear"></div>
			<div class="divider"></div>
			<div class="footer">
				<div class="message">
					<ul>
						<li class="weixin"><a href="#"><img src="" alt=""></a></li>
						<li class="weibo"><a href="#"><img src="" alt=""></a></li>
					</ul>
				</div>
				<div class="foot">
					版权所有 Copyright © 2005-2015 湖北第二师范学院<br> 地址：khsfkljhasjkhflkha<br>
					联系方式：hgsfgkakajkhkahklh
				</div>
			</div>

		</div>
</body>
</html>