<%@ page isELIgnored="false" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/Registerstyle.css" rel='stylesheet' type='text/css' />
<script type="text/javascript" src="${pageContext.request.contextPath}/script/regcheckdata.js"></script>
<title>用户注册</title>
</head>
<body>
	
	<div class="main">
		<!-----start-main---->
		<div class="inset">
			<div class="social-icons">
				<div class="span">
					<a href="#"><img src="img/fb.png" alt="" /><i>Connect
							with Facebook </i>
						<div class="clear"></div></a>
				</div>
				<div class="span1">
					<a href="#"><img src="img/t-bird.png" alt="" /> <i>Connect
							with Twitter</i>
						<div class="clear"></div> </a>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<h2>sign up</h2>
		<form name="form" action="servlet/RegisterTo" method="get"
			onSubmit="return checkdata()">
			<!-- input标签区别是链接跳转还是提交跳转 -->
			<!-- <input type="hidden" name="action value= "register" /> -->
			<div class="lable">
				<p class="qz">用户名：</p>
				<input type="text" class="text" name="username" id="active">
			</div>
			<div class="clear"></div>
			<div class="lable-2">
				<!--  
				<p class="qz">邮箱：</p>
				<input type="text" class="text" name="email">
				-->
				<div class="clear"></div>
				<p class="qz">密码：</p>
				<input type="password" class="text" name="pwd">
				<div class="clear"></div>
				<p class="qz">确认密码：</p>
				<input type="password" class="text" name="pwd2">
				<div class="clear"></div>
				<p class="qz">手机号：</p>
				<input type="text" class="text" name="phone">
				<div class="clear"></div>
				<p class="qz">地址：</p>
				<input type="text" class="text" name="addr">
			</div>
			<div class="clear"></div>
			<h3>
				<span>By creating an account, you agree to our </span><span><a
					href="#">Terms & Conditions</a> </span>
			</h3>
			<div class="submit">
				<input type="submit" value="Create account">
			</div>
			<div class="clear"></div>
		</form>
		<!-----//end-main---->
	</div>
	<!-----start-copyright---->
	<div class="copy-right">
		<p>
			HDW <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">FOOTER</a>
		</p>
	</div>
	<!-----//end-copyright---->

</body>
</body>
</html>