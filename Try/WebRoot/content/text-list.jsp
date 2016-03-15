<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
								<li><a href="adduser.html">添加用户</a></li>
								<li><a href="resetpassword.html">修改密码</a></li>
								<li><a href="login.html">退出</a></li>
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
							网站首页<img src="img/select_xl01.png" alt="">
						</dt>
						<dd class="first_dd">
							<a href="text-list.html">图片新闻</a>
						</dd>

					</dl>

					<dl class="custom">
						<dt onClick="changeImage()">
							<a href="text-list.html">通知公告</a>
						</dt>

					</dl>

					<dl class="channel">
						<dt>
							<a href="text-list.html">机构设置</a>
						</dt>



					</dl>

					<dl class="app">
						<dt onClick="changeImage()">
							研究生培养<img src="img/select_xl01.png" alt="">
						</dt>
						<dd class="first_dd">
							<a href="text-list.html">培养方案</a>
						</dd>
						<dd>
							<a href="text-list.html">招生就业</a>
						</dd>
						<dd>
							<a href="text-list.html">工作动态</a>
						</dd>
						<dd>
							<a href="text-list.html">学生工作</a>
						</dd>
					</dl>

					<dl class="cloud">
						<dt>
							学科建设<img src="img/select_xl01.png" alt="">
						</dt>
						<dd class="first_dd">
							<a href="text-list.html">重点学科</a>
						</dd>
						<dd class="first_dd">
							<a href="text-list.html">学科动态</a>
						</dd>
						<dd class="first_dd">
							<a href="text-list.html">学科团队</a>
						</dd>
					</dl>

					<dl class="syetem_management">
						<dt>
							<a href="">科学研究</a><img src="img/select_xl01.png" alt="">
						</dt>
						<dd class="first_dd">
							<a href="text-list.html">他山之石</a>
						</dd>
						<dd>
							<a href="text-list.html">学习交流</a>
						</dd>


					</dl>
					<dl class="syetem_management">
						<dt>
							<a href="text-list.html">导师队伍</a>
						</dt>


					</dl>

					<dl class="source">
						<dt>
							<a href="text-list.html">管理制度</a><img src="img/select_xl01.png"
								alt="">
						</dt>

					</dl>

					<dl class="statistics">
						<dt>
							<a href="text-list.html">下载专区</a><img src="img/select_xl01.png"
								alt="">
						</dt>

					</dl>
				</div>
			</div>
			<div class="right-main">
				<div class="right-title">
					<h2>
						<a href="admin.html">后台管理系统</a>
					</h2>
				</div>

				<div class="newsbox-2">
					<div class="page-title">
						当前所在：
						<s:property value="#application.map[column]" />
						<s:if test="#session.user.permissionSign">
							<a href="uptext.html" class="button-right"><span>上传<s:property
										value="#application.map[column]" /></span></a>
						</s:if>
					</div>
					<table class="text-list">
						<tr class="newsbox-list">
						<tr class="first">
							<td class="id">编号</td>
							<td class="article-title">文章标题</td>
							<td class="user">用户</td>
							<td class="click">点击数</td>
							<td class="upload-time">上传时间</td>
							<td class="operate">操作</td>
						</tr>
						<tr class="next">
							<s:iterator value="newsList" status="st">
								<td class="id"><s:property
										value="#st.getIndex()+1+(pageNumber-1)*10" /></td>
								<td class="article-title"><s:property value="newsTitle" /></td>
								<td class="user"><s:property value="newsUploader" /></td>
								<td class="click"><s:property value="readCount" /></td>
								<td class="upload-time"><s:date name="uploadDate"
										format="yyyy-MM-dd HH:mm:ss" /></td>
								<td><s:url id="update" action="getAction!course">
										<s:param name="cid">
											<s:property value="cid" />
										</s:param>
										<s:param name="pageNumber">
											<s:property value="pageNumber" />
										</s:param>
									</s:url> <s:a class="change" href="%{update}">修改</s:a> <s:url
										id="delete" action="delCourse">
										<s:param name="cid">
											<s:property value="cid" />
										</s:param>
										<s:param name="pageNumber">
											<s:property value="pageNumber" />
										</s:param>
									</s:url> <s:a href="%{delete}">删除</s:a></td>
							</s:iterator>
							</ul>

							<!-- 							<ul class="next"> -->
							<!-- 								<li class="id"></li> -->
							<!-- 								<li class="article-title"></li> -->
							<!-- 								<li class="user"></li> -->
							<!-- 								<li class="click"></li> -->
							<!-- 								<li class="upload-time"></li> -->
							<!-- 								<li class="operate"><a class="change" href="uptext.html">修改</a><a -->
							<!-- 									class="view" href="uptext.html">查看</a> <a class="remove" -->
							<!-- 									href="uptext.html">删除</a></li> -->
							<!-- 							</ul> -->
							<!-- 							<ul> -->
							<!-- 								<li class="id"></li> -->
							<!-- 								<li class="article-title"></li> -->
							<!-- 								<li class="user"></li> -->
							<!-- 								<li class="click"></li> -->
							<!-- 								<li class="upload-time"></li> -->
							<!-- 								<li class="operate"><a class="change" href="uptext.html">修改</a><a -->
							<!-- 									class="view" href="uptext.html">查看</a> <a class="remove" -->
							<!-- 									href="uptext.html">删除</a></li> -->
							<!-- 							</ul> -->
							<!-- 							<ul> -->
							<!-- 								<li class="id"></li> -->
							<!-- 								<li class="article-title"></li> -->
							<!-- 								<li class="user"></li> -->
							<!-- 								<li class="click"></li> -->
							<!-- 								<li class="upload-time"></li> -->
							<!-- 								<li class="operate"><a class="change" href="uptext.html">修改</a><a -->
							<!-- 									class="view" href="uptext.html">查看</a> <a class="remove" -->
							<!-- 									href="uptext.html">删除</a></li> -->
							<!-- 							</ul> -->

							<!-- 							<ul> -->
							<!-- 								<li class="id"></li> -->
							<!-- 								<li class="article-title"></li> -->
							<!-- 								<li class="user"></li> -->
							<!-- 								<li class="click"></li> -->
							<!-- 								<li class="upload-time"></li> -->
							<!-- 								<li class="operate"><a class="change" href="uptext.html">修改</a><a -->
							<!-- 									class="view" href="uptext.html">查看</a> <a class="remove" -->
							<!-- 									href="uptext.html">删除</a></li> -->
							<!-- 							</ul> -->
							<!-- 							<ul> -->
							<!-- 								<li class="id"></li> -->
							<!-- 								<li class="article-title"></li> -->
							<!-- 								<li class="user"></li> -->
							<!-- 								<li class="click"></li> -->
							<!-- 								<li class="upload-time"></li> -->
							<!-- 								<li class="operate"><a class="change" href="uptext.html">修改</a><a -->
							<!-- 									class="view" href="uptext.html">查看</a> <a class="remove" -->
							<!-- 									href="uptext.html">删除</a></li> -->
							<!-- 							</ul> -->
							<!-- 							<ul> -->
							<!-- 								<li class="id"></li> -->
							<!-- 								<li class="article-title"></li> -->
							<!-- 								<li class="user"></li> -->
							<!-- 								<li class="click"></li> -->
							<!-- 								<li class="upload-time"></li> -->
							<!-- 								<li class="operate"><a class="change" href="uptext.html">修改</a><a -->
							<!-- 									class="view" href="uptext.html">查看</a> <a class="remove" -->
							<!-- 									href="uptext.html">删除</a></li> -->
							<!-- 							</ul> -->
							<!-- 							<ul> -->
							<!-- 								<li class="id"></li> -->
							<!-- 								<li class="article-title"></li> -->
							<!-- 								<li class="user"></li> -->
							<!-- 								<li class="click"></li> -->
							<!-- 								<li class="upload-time"></li> -->
							<!-- 								<li class="operate"><a class="change" href="uptext.html">修改</a><a -->
							<!-- 									class="view" href="uptext.html">查看</a> <a class="remove" -->
							<!-- 									href="uptext.html">删除</a></li> -->
							<!-- 							</ul> -->
						</tr>
					</table>
					<div class="pagedown">
						<a href="text-list.html">首页</a><a href="text-list.html">上一页</a> <a
							href="text-list.html">1</a> <a href="text-list.html">下一页</a><a
							href="text-list.html">末页</a>


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