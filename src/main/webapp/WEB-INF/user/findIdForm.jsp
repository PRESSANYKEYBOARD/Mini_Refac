<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findIdForm</title>

<style type="text/css">
@font-face {
    font-family: 'NanumBarunGothic';
    font-style: normal;
    font-weight: 400;
    src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot');
    src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype');
   }
   
   @font-face {
    font-family: 'NanumBarunGothic';
    font-style: normal;
    font-weight: 700;
    src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.eot');
    src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebBold.ttf') format('truetype')
   }
   
   @font-face {
    font-family: 'NanumBarunGothic';
    font-style: normal;
    font-weight: 300;
    src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.eot');
    src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWebLight.ttf') format('truetype');
   }
   
   .nanumbarungothic * {
    font-family: 'NanumBarunGothic', sans-serif;
   }

   * {
    font-family: 'NanumBarunGothic', sans-serif;
   }



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
	<img width="350" height="100" src="/Hangeulum/image/한걸음로고.png"></img>
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