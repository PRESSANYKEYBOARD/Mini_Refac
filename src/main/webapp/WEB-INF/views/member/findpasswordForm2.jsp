<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>passwordfindForm</title>

<style type="text/css">
.logo{
	text-align:center;
	padding-top:100px;
	
}
.logo p{
	font-weight:bold;
	font-size:20px;
}

.nextbtn{
	border-radius:10px 10px 10px 10px;
	width:500px;
	height:60px;

}


.logo input{
	border-radius:10px 10px 10px 10px;
	width:500px;
	height:50px;
	font-size:20px;
}

.findId{
	padding-top:10px;
	text-align:center;
	
}

.findId p{
	opacity: 0.4;
}
.findId a{
	color:green;
	opacity: 0.9;
	text-decoration:none;
}


.footer{
	opacity: 0.4;
	padding-top:40px;
	text-align:center;
}



</style>

</head>
<body>


<div class="logo">
	<a href="./maintest2.jsp"><img height="150" src="./images/한걸음로고.png"></img></a>
	<p>비밀번호를 찾고자하는 아이디를 입력해주세요.</p>
	<br>
	<input type="text" placeholder="네이버 아이디 또는 단체아이디"/>
	<p><a href="./findpasswordcomplete.jsp"><img class="nextbtn" src="./images/다음버튼.png"></img></a></p>
</div>

<div class="findId">
<p>아이디가 기억나지 않는다면?  <a href="#">아이디 찾기</a></p>
</div>

<div class="footer">
<p>NAVER | 회원정보 고객센터</p>
</div>

</body>
</html>