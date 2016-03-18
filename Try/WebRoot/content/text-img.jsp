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
							<a href="index.html"><img src="img/logo.gif" alt="湖北第二师范学院"></a>
						</div>
					</div>
					<div class="word">
						<p>登录|注册|旧站入口</p>
						<br> <span class="search">
							<form action="" method="get">
								<input name="" type="text" class="kuan" /> <input value="搜索"
									type="button" class="an" />
							</form>
						</span>
					</div>
				</div>

				<div class="daohang">
					<ul class="nav">
						<li class="current"><a href="index.html"><b>网站首页</b></a></li>
						<li><a href="newslist.html">校园动态</a> <span>
								<p>
									<a href="newslist.html">最新公告</a>
								</p>
								<p>
									<a href="newslist.html">活动通知</a>
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
							<li><a href="newslist.html">活动通知</a></li>
							<li><a href="newslist.html">最新通告</a></li>
							<li><a href="newslist.html">专题教育</a></li>
							<li><a href="newslist.html">学生天地</a></li>
							<li><a href="newslist.html">教师风采</a></li>
						</ul>
					</div>
				</div>
				<div class="left-page">
					<div class="left-title">
						<h3>网站统计</h3>
					</div>
					<div class="left-item">
						<ul>
							<li>总访问量：</li>
							<li>总浏览量：</li>
							<li>今日访问：</li>
							<li>日均访问：</li>
						</ul>
					</div>
				</div>

			</div>
			<div class="right-page">
				<div class="right-title">
					<p>
						<a href="index.html">首页</a>:当前页面>><a href="newslist.html">最新公告</a>
					</p>
				</div>
				<div class="right-item">
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
					<s:property value="%{content}" />
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