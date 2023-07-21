<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findIdForm</title>

<style type="text/css">
.logo{
	
	text-align:center;
	padding-top:100px;
}

.logo p{
	font-weight:bold;
	font-size:20px;
}

.menu p{
	text-align:center;

}



.footer{
	opacity: 0.4;
	padding-top:40px;
	text-align:center;
}
.menu button{
	border-radius:10px 10px 10px 10px;
	width:500px;
	height:60px;
	font-size:20px;
	background-color:white;
}

</style>

</head>
<body>


<div class="logo">
	<img width="350" height="100" src="./images/한걸음로고.png"></img>
	<p>찾으려는 아이디를 선택해주세요.</p>
</div>

<div class="menu">
	<p><button onclick="naverId()">네이버아이디</button></p>
	<p><button onclick="groupId()">단체아이디</button></p>
</div>

<div class="footer">
<p>한걸음 | 회원정보 고객센터</p>
</div>

<script>
function naverId(){
	location.href="./findIdForm2.jsp";
}

function groupId(){
	location.href="./group.jsp";
}
</script>

</body>
</html>