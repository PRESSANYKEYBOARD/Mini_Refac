<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinForm</title>

 <link rel="icon" href="/Hangeulum/image/한걸음로고.png">
    <link rel="stylesheet" href="/Hangeulum/user/css/join.css">
</head>
<style type="text/css">
#joinForm div{
	color:blue;
	font-size:12px;
	font-weight:bold;
}
</style>

<body>
    
    <div class="member">
        <!-- 1. 로고 -->
        <a href="/Hangeulum/"><img width="350" height="130" class="logo" src="/Hangeulum/image/한걸음로고.png"></a>

<form id="joinForm" name="joinForm">
     
        <!-- 2. 필드 -->
        
            <b>아이디</b>
            <span class="placehold-text"><input type="text" id="userid" name="userid"></span>
      	    <div id="idDiv" name="idDiv"> </div>
       
            <b>비밀번호</b>
            <input id="userpassword" name="userpassword" class="userpw" type="password">
       		 <div id="pwdDiv" name="pwdDiv"> </div>
       
       
        
            <b>비밀번호 재확인</b>
            <input id="userpassword2" name="userpassword2" type="password">
       		 <div id="pwdDiv2" name="pwdDiv2"></div>
        
        
         	<b>휴대번호</b>
            <input id="userphone" name="userphone" type="text"/>
       		 <div id="phoneDiv" name="phoneDiv"></div>
        
         
        
       
            <b>이름</b>
            <input id="username" name="username" type="text">
       		 <div id="nameDiv" name="nameDiv"></div>

        <!-- 3. 필드(생년월일) -->
        
            <b>생년월일</b>
			<input id="userbirth" name="userbirth" type="text">
       	 <div id="birthDiv" name="birthDiv"></div>

        <!-- 4. 필드(성별) -->
       
            <b>성별</b>
            <div>
                <select name="gender" id="gender">
                    <option value="남자">남자</option>
                    <option value="여자">여자</option>
                    <option value="">선택안함</option>
                  
                </select>
            </div>
        	 <div id= "genderDiv" name="genderDiv"></div>

        <!-- 5. 이메일_전화번호 -->
        
            <b>본인 확인 이메일<small>(선택)</small></b>
            <input id="useremail" name="useremail" type="email" placeholder="선택입력">
      		  <div id="emailDiv" name="emailDiv"></div>
        
        
        <!-- 6. 가입하기 버튼 -->
        <input type="button" value="가입하기" id="joinBtn" name="joinBtn">
        
</form>

        <!-- 7. 푸터 -->
        <div class="member-footer">
            <div>
                <a href="#none">이용약관</a>
                <a href="#none">개인정보처리방침</a>
                <a href="#none">책임의 한계와 법적고지</a>
                <a href="#none">회원정보 고객센터</a>
            </div>
            <span><a href="#none">한걸음 Corp.</a></span>
        </div>
    </div>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="../js/userjoin.js"></script>



</body>
</html>