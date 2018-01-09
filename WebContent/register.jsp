<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
<link href="style/restyle.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	
	
	
	addEventListener("load", function() { 
		setTimeout(hideURLbar, 0); 
	}, false); 
	function hideURLbar(){ 
		window.scrollTo(0,1); 
	}



</script>
<link
	href='http://fonts.googleapis.com/css?family=Lobster|Pacifico:400,700,300|Roboto:400,100,100italic,300,300italic,400italic,500italic,500'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Raleway:400,100,500,600,700,300'
	rel='stylesheet' type='text/css'>
</head>
<body>
	<!--start-login-form-->
	<div class="main">
		<div class="login-head">
			<h1>Elegant Login and Register forms</h1>
		</div>
		<div class="wrap">
			<div class="Regisration">
				<div class="Regisration-head">
					<h2>
						<span></span>Register
					</h2>
				</div>
				<form action="register" method="post">
					<input type="text" name="loginUser.userName" placeholder="请输入用户名">
					<input type="password" name="loginUser.userPassword"
						placeholder="请输入密码"> <input type="text"
						name="loginUser.sex" placeholder="请输入性别"> <input
						type="text" name="loginUser.phone" placeholder="请输入电话"> <input
						type="text" name="loginUser.email" placeholder="请输入邮箱"> <input
						type="password" name="loginUser.payPassword" placeholder="请输入支付密码">
					<div class="submit">
						<input type="submit" value="注册">
					</div>
				</form>
			</div>
		</div>
		<!--//End-login-form-->
		<div class="copy-right">
			<p>Template by 凡人有限公司</p>
		</div>
	</div>
</body>
</html>