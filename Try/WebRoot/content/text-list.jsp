<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>上传</title>
<link rel="stylesheet" href="css/admin.css">
<link rel="stylesheet" href="css/public.css">
<script type="text/javascript" src="js/jquery.js"></script>
</head>
<body>
	<div class="container">
		<div class="header">
			<div class="logo">
				<div class="logo-main">
					<img src="img/logo-main.gif" alt="">
				</div>
			</div>
			<div class="ph">
				<p>您好！欢迎登录，超级管理员!</p>
				<div class="admin">
					<ul class="topnav">
						<li><a class="ad" href="#"></a>
							<ul class="subnav">
								<li><a href="adduser.jsp">添加用户</a></li>
								<li><a href="resetpwd.jsp">修改密码</a></li>
								<li><a href="login!quit">退出</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="main">
			<div class="leftnav">
				<div class="leftsidebar_box">
					<div class="nav-header">
						<div class="nav-admin-png"></div>
					</div>
					<dl class="system_log">
						<dt onClick="changeImage()" class="active">
							<a href="recentNews">网站首页</a>
						</dt>
						<dd class="first_dd">
							<a href="upageAction?column=1">图片新闻</a>
						</dd>

					</dl>

					<dl class="custom">
						<dt onClick="changeImage()">
							<a href="upageAction?column=2">通知公告</a>
						</dt>

					</dl>

					<dl class="channel">
						<dt>
							<a href="upageAction?column=3">机构设置</a>
						</dt>



					</dl>

					<dl class="app">
						<dt onClick="changeImage()">研究生培养</dt>
						<dd class="first_dd">
							<a href="upageAction?column=4">培养方案</a>
						</dd>
						<dd>
							<a href="upageAction?column=5">招生就业</a>
						</dd>
						<dd>
							<a href="upageAction?column=6">工作动态</a>
						</dd>
						<dd>
							<a href="upageAction?column=7">学生工作</a>
						</dd>
					</dl>

					<dl class="cloud">
						<dt>学科建设</dt>
						<dd class="first_dd">
							<a href="upageAction?column=8">重点学科</a>
						</dd>
						<dd class="first_dd">
							<a href="upageAction?column=9">学科动态</a>
						</dd>
						<dd class="first_dd">
							<a href="upageAction?column=10">学科团队</a>
						</dd>
					</dl>

					<dl class="syetem_management">
						<dt>
							<a href="">科学研究</a>
						</dt>
						<dd class="first_dd">
							<a href="upageAction?column=11">他山之石</a>
						</dd>
						<dd>
							<a href="upageAction?column=12">学习交流</a>
						</dd>


					</dl>
					<dl class="syetem_management">
						<dt>
							<a href="upageAction?column=13">导师队伍</a>
						</dt>


					</dl>

					<dl class="source">
						<dt>
							<a href="upageAction?column=14">管理制度</a>
						</dt>

					</dl>

					<dl class="statistics">
						<dt>
							<a href="upageAction?column=15">下载专区</a>
						</dt>

					</dl>
				</div>
			</div>
			<div class="right-main">
				<div class="right-title">
					<h2>
						<a href="recentNews">后台管理系统</a>
					</h2>
				</div>

				<div class="newsbox-2">
					<div class="page-title">
						<span>当前所在：<s:property value="#application.map[column]" /></span>
						<s:if test="#session.user.permissionSign">
							<s:a href="showEditor?column=%{column}" class="button-right">
								<span>发布</span>
							</s:a>
						</s:if>
					</div>
					<div class="text-list">
						<div class="newsbox-list">
							<ul class="first">
								<li class="id">编号</li>
								<li class="article-title">文章标题</li>
								<li class="user">用户</li>
								<li class="click">点击数</li>
								<li class="upload-time">上传时间</li>
								<li class="operate">操作</li>
							</ul>
							<s:iterator value="newsList" status="st">
								<ul class="next">
									<li class="id"><s:property
											value="#st.getIndex()+1+(pageNumber-1)*maxNumber" /></li>
									<li class="article-title"><s:property value="newsTitle" /></li>
									<li class="user"><s:property value="operator" /></li>
									<li class="click"><s:property value="readCount" /></li>
									<li class="upload-time"><s:date name="uploadDate"
											format="yyyy-MM-dd HH:mm:ss" /></li>
									<li class="operate"><s:a cssClass="change"
											href="showInEditor?newsId=%{newsId}&pageNumber=%{pageNumber}">修改</s:a>
										<s:a cssClass="view" href="uGetDetail?newsId=%{newsId}">查看</s:a>
										<s:url id="delete" action="deleteNews">
											<s:param name="newsId">
												<s:property value="newsId" />
											</s:param>
											<s:param name="pageNumber">
												<s:property value="pageNumber" />
											</s:param>
											<s:param name="column">
												<s:property value="column" />
											</s:param>
										</s:url> <s:a cssClass="remove" href="%{delete}">删除</s:a></li>
								</ul>
							</s:iterator>
						</div>
						<div class="pagedown">
							<s:url id="firstPage" action="upageAction">
								<s:param name="pageNumber">1</s:param>
								<s:param name="column">
									<s:property value="column" />
								</s:param>
							</s:url>
							<s:a href="%{firstPage}">首页</s:a>

							<s:url id="prePage" action="upageAction">
								<s:param name="pageNumber">
									<s:property value='pageNumber-1' />
								</s:param>
								<s:param name="column">
									<s:property value="column" />
								</s:param>
							</s:url>
							<s:a href="%{prePage}">上一页</s:a>

							<a><s:property value="pageNumber+'/'" /> <s:property
									value="totalPage" /></a>

							<s:url id="nextPage" action="upageAction">
								<s:param name="pageNumber">
									<s:property value='pageNumber+1' />
								</s:param>
								<s:param name="column">
									<s:property value="column" />
								</s:param>
							</s:url>
							<s:a href="%{nextPage}">下一页</s:a>

							<s:url id="lastPage" action="upageAction">
								<s:param name="pageNumber">
									<s:property value="totalPage" />
								</s:param>
								<s:param name="column">
									<s:property value="column" />
								</s:param>
							</s:url>
							<s:a href="%{lastPage}">末页</s:a>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {

			$("ul.subnav").parent().append("<span></span>"); //Only shows drop down trigger when js is enabled - Adds empty span tag after ul.subnav

			$(".admin li span").click(function() { //When trigger is clicked...

				//Following events are applied to the subnav itself (moving subnav up and down)
				$(this).parent().find("ul.subnav").slideDown('fast').show(); //Drop down the subnav on click

				$(this).parent().hover(function() {
				}, function() {
					$(this).parent().find("ul.subnav").slideUp('slow'); //When the mouse hovers out of the subnav, move it back up
				});

				//Following events are applied to the trigger (Hover events for the trigger)
			}).hover(function() {
				$(this).addClass("subhover"); //On hover over, add class "subhover"
			}, function() { //On Hover Out
				$(this).removeClass("subhover"); //On hover out, remove class "subhover"
			});

		});
	</script>
	<script type="text/javascript">
		$(".leftsidebar_box dt").css({
			"background-color" : "#4C2C4C"
		});
		$(".leftsidebar_box dt img").attr("src", "img/select_xl01.png");
		$(function() {
			$(".leftsidebar_box dd").hide();
			$(".leftsidebar_box dt").click(
					function() {
						$(".leftsidebar_box dt").css({
							"background-color" : "#4C2C4C"
						})
						$(this).css({
							"background-color" : "#000"
						});
						$(this).parent().find('dd').removeClass("menu_chioce");
						$(".leftsidebar_box dt img").attr("src",
								"img/select_xl01.png");
						$(this).parent().find('img').attr("src",
								"img/select_xl.png");
						$(".menu_chioce").slideUp();
						$(this).parent().find('dd').slideToggle();
						$(this).parent().find('dd').addClass("menu_chioce");
					});
		})
	</script>
</body>
</html>