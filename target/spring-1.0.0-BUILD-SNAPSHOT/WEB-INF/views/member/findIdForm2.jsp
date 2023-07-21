<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="./css/findIdForm2.css"/>
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
		<div class="find-id">
		<p>아이디 찾기</p>
		<hr/>
		</div>
		<div class="find-id-right">
			<span>01.아이디입력>02.본인 확인>03.비밀번호 재설정</span>
		
		<hr/>
		</div>
	
	</div>


	<div class="box">
	<span>아이디 찾는 방법을 선택해 주세요.</span>
	</div>
	




 <div class="email">
<span>회원정보에 등록한 이메일로 인증</span>
<br><br>
<p>본인확인 이메일 주소와 입력한 이메일 주소가 같아야, 인증번호를 받을 수 있습니다.</p>

<strong class="name">이름</strong>
<input type="text" class="name_text"/>

<br><br>
<strong class="email_addr">이메일 주소</strong>
<input type="text" class="email_addr_text">
<button class="email_addr_button">인증번호 받기</button>
<br><br>

<strong class="email_number">인증번호</strong>
<input type="text" class="email_number_text">

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
	location.href="./findIdComplete.jsp";
}
</script>
</body>
</html>