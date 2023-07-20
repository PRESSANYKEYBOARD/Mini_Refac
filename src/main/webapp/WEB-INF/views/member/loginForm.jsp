<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>네이버 로그인</title>
	<link rel="stylesheet" href="./css/style.css">
	<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="main-container">
		<div class="main-wrap">
		<header>
			
			<div class="logo-wrap">
				<a href="./maintest2.jsp"><img width="1050" height="130" class="logo" src="./images/한걸음로고.png"></a>
			</div>
		</header>
		<section class="login-input-section-wrap">
			<div class="login-input-wrap">	
				<input placeholder="Username" type="text"></input>
			</div>
			<div class="login-input-wrap password-wrap">	
				<input placeholder="Password" type="password"></input>
			</div>
			<div class="login-button-wrap">
				<button onclick="login()">로그인</button>
			</div>
			<div class="login-stay-sign-in">
				<i class="far fa-check-circle"></i>
				<span>로그인 상태 유지</span>
			</div>
		</section>
		<section class="Easy-sgin-in-wrap">
			
			<ul class="sign-button-list">

				<a href="#"><img width="470" height="50" src="./images/카카오로그인버튼.png"/></a>
			</ul>
			<p class="forget-msg">Forgot your<a href="./findIdForm.jsp">Username</a> or <a href="./findpasswordForm.jsp">Password?</a> | <a href="./joinForm.jsp">Sign up</a></p>
		</section>
		<footer>
			<div class="copyright-wrap">
			<span>	<img src="img/logo.png"> Copyright © NAVER Corp. All Rights Reserved.</span>
			</div>
		</footer>
		</div>
	</div>
	
<script>
function login(){
	
	location.href="maintest2.jsp";
}

</script>	

	
</body>


</html>