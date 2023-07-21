<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>joinForm</title>

 <link rel="icon" href="./images/images2/favicon.png">
    <link rel="stylesheet" href="./css/termspage.css">
</head>
<body>
    
    <div class="member">
        <!-- 1. 로고 -->
        <img width="350" height="130" class="logo" src="./images/한걸음로고.png">

        <!-- 2. 필드 -->
        <div class="field">
            <p>네이버 이용약관, 개인정보 수집 및 이용, 위치기반서비스 이용약관(선택),프로모션 정보 수신(선택)에 모두 동의합니다.</p>
           
        </div>
        <br>
        <div class="field">
        	
            <span>네이버 이용약관 동의</span>
            <b>(필수)</b>
            <textarea rows="5" cols="47">  
			JavaTpoint textarea tag example with rows and columns.  
			</textarea>  
        </div>
        <div class="field">
            <span>개인정보 수집 및 이용 동의</span>
            <b>(필수)</b>
           <textarea rows="5" cols="47">  
			JavaTpoint textarea tag example with rows and columns.  
			</textarea> 
        </div>
        <div class="field">
            <span>위치기반서비스 이용약관 동의</span>
            <b>(선택)</b>
            <textarea rows="5" cols="47">  
			JavaTpoint textarea tag example with rows and columns.  
			</textarea>
        </div>
        
        <div class="field">
            <span>프로모션 정보 수신 동의</span>
            <b>(선택)</b>
          
        </div>
        
        
        <div class="field">
            <b>네이버 서비스 및 제휴 이벤트・혜택 등의 정보를 휴대전화(네이버앱 알림 또는 문자), 이메일로 받을 수 있습니다. 일부 서비스(별개의 회원 체계 운영, 네이버 가입 후 추가 가입하는 서비스 등)의 경우, 수신에 대해 별도로 안내드리며 동의를 구합니다.
            </b>
            
        </div>

        <!-- 3. 필드(생년월일) -->
        <div class="field birth">
            <button style="padding-right:40px;">취소</button>
            <button style="background-color:#21CE55;">확인</button>
        </div>

        <!-- 6. 가입하기 버튼 --  

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