<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
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
					<div class="page-title">当前所在：修改密码</div>
					<div class="add-table">
						<div class="table-main">
							<div class="table-title">
								<h3>用户信息</h3>
								<p>
									<s:actionerror cssClass="warning" />
								</p>
							</div>
							<div class="table-content-2">
								<form action="changePassword" method="post" name="resetpwd">
									<p class="tablecon">
										用户名:&nbsp;&nbsp;
										<s:property value="#session.user.userName" />
									</p>
									<p class="tablecon">
										用户真实姓名:&nbsp;&nbsp;
										<s:property value="#session.user.realName" />
									</p>
									<p class="tablecon">用户原密码:</p>
									<p class="tablecon">
										<input class="te" type="password" name="fpassword">
									</p>
									<p class="tablecon">用户新密码:</p>
									<p class="tablecon">
										<input class="te" type="password" name="npassword">
									</p>
									<p class="tablecon">再次确认密码:</p>
									<p class="tablecon">
										<input class="te" type="password" name="rpassword">
									</p>
									<div class="buttons-adduser">
										<input type="submit" class="button-adduser" value="提交">
										<input type="reset" class="button-adduser" value="重置">
									</div>

								</form>
							</div>
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
			$(".leftsidebar_box dt").hover(
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