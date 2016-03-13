<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>管理员登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/public.css">
<link rel="stylesheet" href="css/login.css">

<script type="text/javascript">
	function changeValidateCode(obj) {
		/*** 
		 *   获取当前的时间作为参数，无具体意义    
		 *   每次请求需要一个不同的参数，否则可能会返回同样的验证码     
		 *   这和浏览器的缓存机制有关系，也可以把页面设置为不缓存，这样就不用这个参数了。   
		 */
		var timenow = new Date().getTime();

		obj.src = "randImage?id=" + timenow;
	}
</script>
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
						<input type="text" class="idcode" placeholder="验证码" maxlength="4"> <img
							src="randImage" alt="" onclick="changeValidateCode(this)">
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
