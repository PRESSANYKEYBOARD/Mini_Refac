<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 
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


html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
form, label,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}

input[type="text"] {
  font-size: 16px;
  color: #333;
  border: 2px solid #ccc;
  border-radius: 4px;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
  padding: 8px;
  width: 200px;
  height:5px;
}

.email p{
	font-size:12px;
	opacity:0.5;
	padding-bottom:30px;
}

.email .name{
	padding-right:45px;
}

.email .email_addr{
	padding-right:1px;
}

.email .email_number{
	padding-right:20px;
}





ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}




.container-find{
	display:flex;
}
.find-pwd{
	flex:15%;
	padding-top:20px;
	
}

.find-pwd hr{
	border: 0;
    height: 2px;
    background: black;
}

.find-pwd span{
	font-weight:bold;
	font-size:14px;
	
}

.find-pwd-right{
	flex:85%;
	padding-top:20px;
	
}

.find-pwd-right span{
	padding-left:300px;
	font-size:12px;
}


.find-pwd-right hr{
	 opacity:0.4; 
	 background:#E5E5E5;
	
}

.find-pwd p{
	font-size:16px;
	font-weight:bold;
}

.email{
	font-size:14px;
	font-weight:bold;
	padding-top:20px;
	padding-bottom:20px;

		height: 600x;
		
		padding: 30px;
		border: 1px solid gray;
	
}


.email_addr_button{
background-color: #fff;
color: #000;
font-weight: bold;
font-size: 12px;
padding: 3px 9px;
border: 1px solid #ccc; /* 테두리 색상을 아주연한 회색으로 설정 */
border-radius: 4px;
cursor: pointer;
}


.next{
	text-align:center;
	padding-top:20px;
	padding-bottom:20px;
	
}



.nextBtn {
  width: 60px;
  height: 30px;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 3px;
  font-size: 14px;
  font-weight: bold;
  transition: all 0.2s ease-in-out;
}

.bottom p{
	font-size:12px;
}




.box{
	font-size:14px;
	opacity:0.6;
	padding-bottom:20px;
}

.box-left{
	flex:3;
	
}
.box-right{
	flex:7;
	
	
}

.box-right-in{
	
	width:700px;
	height:100%;
	
}

.box span{
	font-size:12px;
}


.logo{
	display:flex;
	background-color:#5BB91B;
	height:50px;
	width:100%;
}

.logo-left{
	flex:3;	
	
}


.logo-right{
	flex:7;
}

.logo-right .idBtn{
	padding-right:40px;
	
}

.container{
	display:flex;
}
.container2{
	display:flex;
}


.middle-left{
	flex:1;
	
}
.middle-center{
	flex:2;
	
}

.middle-right{
	flex:3;
	
}

.logo-right .idBtn2{
	padding-top:10px;
}

.logo-right span{
			display:inline-block;
			padding: 10px 20px;
			background-color:#5BB91B;
			color:white;
			font-weight:bold;
			font-size: 16px;
			text-align: center;
			border-radius: 5px;
			transition: all 0.2s ease-in-out;
}

.logo-right span:hover {
			background-color: #689F38;
			transform: scale(1.05);
			cursor: pointer;
		}

		
.certification{
	padding-top:40px;
}

</style>

</head>
<body>


<div class="logo">

<div class="logo-left"></div>
<div class="logo-right">
<a href="/Hangeulum/user/findIdForm"><span>아이디찾기</span></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="/Hangeulum/user/findpasswordForm"><span>비밀번호 찾기</span></a>

</div>


</div>

<div class="container">

<div class="box-left">

</div>


<div class="box-right">
	<div class="box-right-in">
	
	<div class="container-find">
		<div class="find-pwd">
		<p>비밀번호 찾기</p>
		<hr/>
		</div>
		<div class="find-pwd-right">
			<span>01.아이디입력>02.본인 확인>03.비밀번호 재설정</span>
		
		<hr/>
		</div>
	
	</div>


	<div class="box">
	<span>비밀번호를 찾을 방법을 선택해 주세요!!!</span>
	</div>
	

 <div class="email">
<span>회원정보에 등록한 이메일로 인증</span>
<br><br>
<p>본인확인 이메일 주소와 입력한 이메일 주소가 같아야, 인증번호를 받을 수 있습니다.</p>
<form>
<strong class="name">이름</strong>
<input id="username" name="username"  type="text" class="name_text"/>
<div id="nameDiv"></div>

<br><br>
<strong class="email_addr">이메일 주소</strong>
<input type="text" class="useremail" id="useremail" name="useremail">
<button type="button" class="email_addr_button" id="mail-check-Btn" name="mail-check-Btn">인증번호 받기</button>
<br><br>

<strong class="email_number">인증번호</strong>
<input id="email_number" name="email_number" type="text" class="email_number_text" placeholder="인증번호 6자리를 입력해주세요!"/>
<div id="numberDiv"></div>
</div>
</form>

<span id="mail-check-warn"></span>


	<div class="next">
		<button id="nextBtn" name="nextBtn" type="button" class="nextBtn">다음</button>
	</div>
	
	
	<div class="bottom">
		<p>비밀번호 찾기 시 문제가 있나요? <a href="#">바로가기</a></p>
	</div>

	
	<div class="box2"></div>

</div>

</div>  <!-- box-rigtht -->

</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="../js/findpassword.js"></script>


</body>
</html>