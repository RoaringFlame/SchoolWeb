<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留言板</title>
<link rel="stylesheet" type="text/css" href="css/second.css">
<link rel="stylesheet" type="text/css" href="css/public.css">
</head>
<body>

	<div class="daohang">
		<ul class="nav">
			<li class="current"><a href="index.jsp"><b>网站首页</b></a></li>
			<li><a href="vpageAction?column=17">新闻动态</a> <span>
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
					<h3>校园动态</h3>
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
					<a href="index.jsp">首页</a>:当前页面>><a href="newslist.html">最新公告</a>
				</p>
			</div>
			<div class="right-item">
				<div class="messagetext">
					<div class="message-main">
						<s:form action="addMessage" method="post" validate="true">
							<s:actionmessage cssClass="warning" />
							<div class="messageli">
								<s:fielderror fieldName="title" cssClass="warning" />
								<div class="te">标题：</div>
								<div class="boots">
									<input class="boot" type="text" name="title" maxlength="50">
								</div>
							</div>
							<div class="messageli">
								<s:fielderror fieldName="visName" cssClass="warning" />
								<div class="te">姓名：</div>
								<div class="boots">
									<input class="boot" type="text" name="visName" maxlength="">
								</div>
							</div>
							<div class="messageli">
								<s:fielderror fieldName="visTel" cssClass="warning" />
								<div class="te">电话：</div>
								<div class="boots">
									<input class="boot" type="text" name="visTel">
								</div>
							</div>
							<div class="messageli">
								<s:fielderror fieldName="visEmail" cssClass="warning" />
								<div class="te">E-mail：</div>
								<div class="boots">
									<input class="boot" type="text" name="visEmail">
								</div>
							</div>
							<div class="messageli">
								<s:fielderror fieldName="content" cssClass="warning" />
								<div class="ti">留言内容：</div>
								<div class="bootarea">
									<textarea name="content" id="content" cols="30" rows="10"></textarea>
								</div>
							</div>
							<div class="messagebutton">
								<input type="submit" value="确认" class="message-button">
								<input type="reset" value="重置" class="message-button">
							</div>
						</s:form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="clear"></div>
	<div class="divider"></div>
	<div class="footer">
		<div class="message">
			<ul>
				<li class="weixin"><img src="" alt=""></img></li>
				<li class="weibo"><img src="" alt=""></img></li>
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