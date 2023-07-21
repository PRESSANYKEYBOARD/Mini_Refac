<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinForm</title>

 <link rel="icon" href="./images/images2/favicon.png">
    <link rel="stylesheet" href="./css/join.css">
</head>
<body>
    
    <div class="member">
        <!-- 1. 로고 -->
        <img width="350" height="130" class="logo" src="./images/한걸음로고.png">

        <!-- 2. 필드 -->
        <div class="field">
            <b>아이디</b>
            <span class="placehold-text"><input type="text"></span>
        </div>
        <div class="field">
            <b>비밀번호</b>
            <input class="userpw" type="password">
        </div>
        <div class="field">
            <b>비밀번호 재확인</b>
            <input class="userpw-confirm" type="password">
        </div>
        
         <div class="field">
         	<b>휴대번호</b>
            <input type="text"/>
        </div>
        
         
        
        <div class="field">
            <b>이름</b>
            <input type="text">
        </div>

        <!-- 3. 필드(생년월일) -->
        <div class="field birth">
            <b>생년월일</b>
            <div>
                <input type="number" placeholder="년(4자)">                
                <select>
                    <option value="">월</option>
                    <option value="">1월</option>
                    <option value="">2월</option>
                    <option value="">3월</option>
                    <option value="">4월</option>
                    <option value="">5월</option>
                    <option value="">6월</option>
                    <option value="">7월</option>
                    <option value="">8월</option>
                    <option value="">9월</option>
                    <option value="">10월</option>
                    <option value="">11월</option>
                    <option value="">12월</option>
                </select>
                <input type="number" placeholder="일">
            </div>
        </div>

        <!-- 4. 필드(성별) -->
        <div class="field gender">
            <b>성별</b>
            <div>
                <select>
                    <option value="">남자</option>
                    <option value="">여자</option>
                    <option value="">선택안함</option>
                  
                </select>
            </div>
        </div>

        <!-- 5. 이메일_전화번호 -->
        <div class="field">
            <b>본인 확인 이메일<small>(선택)</small></b>
            <input type="email" placeholder="선택입력">
        </div>
        
        
        <!-- 6. 가입하기 버튼 -->
        <input type="button" value="가입하기" onclick="join()">

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

<script type="text/javascript">
function join(){
	
	location.href="./loginForm.jsp";
}

</script>

</body>
</html>