<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>




<a href="/Hangeulum/user/joinForm">test로</a>
<a href="/Hangeulum/user/loginForm">로그인폼으로</a>
<a href="/Hangeulum/user/logOut">로그아웃</a>
id=${sessionScope.userid}
email=${sessionScope.kakao_email2}
image=${kakao_profile}

<img width="30" height="30" src="${kakao_profile}"/>


</body>
</html>
