<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findpasswordcomplete</title>
 
<style type="text/css">

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
	display:flex;
	border:1px solid gray;
	font-size:14px;
	font-weight:bold;
	padding-top:20px;
	padding-bottom:20px;
	
}

.email-left{
	flex:40%;
	
}
.email-right{
	flex:80%;
}
.email li{
	padding-bottom:7px;
	
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
	opacity:0.5;
}
.bottom a{
	color:gray;
	padding-left:5px;
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
<a href="./findIdForm.jsp"><span>아이디찾기</span></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="./findpasswordForm2.jsp"><span>비밀번호 찾기</span></a>

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
			<span></span>
		
		<hr/>
		</div>
	
	</div>


	<div class="box">
	<span>고객님의 정보와 일치하는 아이디 목록입니다.</span>
	</div>
	



 <div class="email">
 
 
 <div class="email-left">

 </div>
 
 <div class="email-right">
 <ul>
<li><input type="radio" name="chk_info" value="HTML"><span>cicilie</span><span>가입:2013.09.29</span></li>
<li><input type="radio" name="chk_info" value="HTML"><span>wjdwnswks</span><span>가입:2013.02.15</span></li>
</ul>

</div>


 </div>


	<div class="next">
		<button onclick="nextBtn()" class="nextBtn">다음</button>
	</div>
	
	
	<div class="bottom">
		<p>아이디 찾기에 어려움이 있으신가요? <a href="#">도움말펼치기</a></p>
		<br>
		<p>아이디 찾기 시 문제가 있나요?<a href="#">바로가기</a></p>
	</div>



	
	
	<div class="box2"></div>

</div>

</div>  <!-- box-rigtht -->

</div>
<script>
function nextBtn(){
	location.href="./loginForm.jsp";
}
</script>


</body>
</html>