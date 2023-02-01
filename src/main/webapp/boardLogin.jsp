<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="asset/main.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<style>
body {
	background-image: url('asset/img/bg.jpg');
	font-family: 'Do Hyeon', sans-serif;
	font-size: 30px;
	text-align : center;
}
#check{
	font-size : 20px;
	color : red;
}
#loginform{
	margin-top : 250px;
}
</style>
</head>
<body>
	<div class="wrapper fadeInDown">
		<div id="formContent">

			<!-- Login Form -->
			<form action="LoginCon" method="post" id="loginform">
				<input type="text" class="fadeIn second" name="id" placeholder="id" style="margin-top: 30px"> 
				<input type="password" class="fadeIn third" name="pw" placeholder="password" > 
				<p id="check"></p>
				<input type="submit" class="fadeIn fourth" value="Log In">
			</form>

		</div>
	</div>

</body>
</html>