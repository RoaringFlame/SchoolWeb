<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>管理员登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/public.css">
<link rel="stylesheet" href="css/login.css">
</head>

<body>
	<div class="login">
		<div class="login-main">
			<div class="main-title">
				<h2>网站后台管理系统</h2>
			</div>
			<div class="main">
				<form action="login" method="post" name="login">
<!-- 					<p class="warning">验证码错误!</p> -->
					<div class="line">
						<input type="text" class="username" name="username" placeholder="请输入用户名">
					</div>
					<div class="line">
						<input type="password" class="password" name= "password" placeholder="请输入密码">
					</div>
					<div class="line-idcode">
						<input type="text" class="idcode" placeholder="验证码"> <img
							src="" alt=""><a href="" class="other">换一张</a>
					</div>
					<div class="buttons">
						<input class="button-left" type="submit" value="登录"> <input
							class="button-right" type="reset" value="重置">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
