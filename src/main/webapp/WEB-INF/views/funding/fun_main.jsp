<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>

<script src="https://use.fontawesome.com/releases/v6.4.0/js/all.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<link rel="reset" href="/Hangeulum/css/styleReset.css" />
<link rel="stylesheet" href="/Hangeulum/css/fun_main.css">

<meta charset="UTF-8">
<title>펀딩 메인 페이지</title>

<style>
	/*a tag 전역 설정*/
	a {text-decoration: none;}
</style>
</head>
<body>
<!--Header Start-->
<div>
    <div id="header">
        <div class="headerContent">
            <a href="/Hangeulum/"><img src="/Hangeulum/image/logo.png" alt="로고" width="250" height="60"></a>
            <div class="menu">
                <ul>
                    <li><a href="/Hangeulum/donation/donation_main">기부</a></li>
                    <li><a href="/Hangeulum/funding/fun_main">펀딩</a></li>
                    <li><a href="/Hangeulum/support/noticeList">고객센터</a></li>
                </ul>
            </div>
    
            <div class="header-r">
                <a href="#" class="login_btn">로그인</a>
                <span class="header-bar"></span>
                <a href="#" class="search_btn">
                    <img src="/Hangeulum/image/enlargement.png" alt="enlargement.jpg">
                </a>
            </div>
        </div>
	</div> <!-- header1 끝 -->
	
	<%--End Header--%>

	<%--For Header Height--%>
	<div style="padding-top: 70px;"></div>
	
	<%--Start SubHeader--%>
	
	<div class="headerSub">
		<a href="/Hangeulum/funding/fun_main" class="headerSubSpan" style="color: #00ab33; font-weight: 700;">전체 펀딩</a></li>
        <a href="/Hangeulum/funding/fun_after2" class="headerSubSpan">펀딩 후기</a>
	</div> <!-- container 끝 -->
	
	<!-- 슬라이드 -->
	<div class="custom-carousel-container"> <!-- custom-carousel-container 시작 -->
		<div id="carouselExampleIndicators" class="carousel slide"
			data-bs-ride="carousel">
			<ol class="carousel-indicators">
				<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
					class="active"></li>
				<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
				<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="/Hangeulum/image/funmain_image/main1.png"
						class="d-block w-100" width="1800" height="300" alt="...">
				</div>
				<div class="carousel-item">
					<img src="/Hangeulum/image/funmain_image/main2.png"
						class="d-block w-100" width="1800" height="300" alt="...">
				</div>
				<div class="carousel-item">
					<img src="/Hangeulum/image/funmain_image/main3.png"
						class="d-block w-100" width="1800" height="300" alt="...">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-bs-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-bs-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
			</a>
		</div> <!-- 슬라이드 끝 -->
	</div> <!-- custom-carousel-container 끝 -->
	
	<div role="main" id="main_content" class="main_content">
		<div class="category">
		  <div class="dropdown">
		    <label for="selectbox1"></label>
		    <select id="selectbox1">
		      <option value="option1">전체</option>
		      <option value="option2">진행중</option>
		      <option value="option3">종료</option>
		    </select>
		    <label for="selectbox2"></label>
		    <select id="selectbox2">
			    <option value="option1">최신 순</option>
			    <option value="option2">참여금액 순</option>
		      <option value="option3">종료임박 순</option>
		    </select>
		    <a href="/Hangeulum/funding/fun_writeForm" class="button">글쓰기</a>
		  </div>
		  <div>
		  </div>
		</div>
		 
<%-- 	<div class="container-card">
		  <div class="card-container">
		    카드 예시
		    <div class="card">
		      <img src="https://via.placeholder.com/150" alt="Image">
		      <div class="card-body">
		        <h2 class="card-title">카드 제목</h2>
		        <h4>부제목</h4>
		        <p class="card-content">카드 내용을 설명하는 텍스트입니다. 내용은 여기에 작성하십시오.</p>
		        <div class="progress">
		          <div class="progress_bar" style="width: 60%;"></div>
		        </div>
		        <p class="percent">60%</p>
		        <p class="price">₩10,000 / ₩20,000</p>
		      </div>
		    </div>
		  </div>
		</div> --%>
		
		<div class="container-card">
	      <div class="card-container">
	        <!-- 이 부분은 동적으로 카드가 생성됩니다. -->
	      </div>
	    </div>
	    <!-- 여기에 jQuery 및 기타 자바스크립트 파일 등록 -->	
	</div>
	
<%--Start Footer--%>
<div class="footer">
    <div class="footer_menu">
        <!--<div class="footer_menu_left"></div>-->
        <div class="footer_menu_right">
            <ul>
                <li style="font-weight: 700; color: #202020; padding-right: 25px;">한걸음 안내</li>
                <li><a href="/Hangeulum/support/noticeList">공지사항</a></li>|&nbsp;&nbsp;
                <li><a href="/Hangeulum/support/faqList">자주 묻는 질문</a></li>|&nbsp;&nbsp;
                <li><a href="/Hangeulum/support/consultForm">문의/신고</a></li>|&nbsp;&nbsp;
                <li><a href="/Hangeulum/support/termsUse">이용약관</a></li>
            </ul>
        </div>
    </div>

    <div class="footer_info_wrap">
        <div class="footer_info_inner">
            <!--<div class="footer_info_left"></div>-->
            <div class="footer_info_right">
                <ul class="footer_info_list">
                    <li class="footer_info_item">재단법인 한걸음</li>
                    <li class="footer_info_item">대표자: 이정규, 김지혜, 김현지, 엄태훈, 이소훈, 최도담</li>
                    <li class="footer_info_item">주소 : 서울시 강남구 역삼동 819-3 삼오빌딩 5-9층</li>
                    <li class="footer_info_item">대표전화 : 02-3486-9600</li>
                    <li class="footer_info_item">이메일 : bitcamp601@naver.com</li>
                    <li class="footer_info_item">사업자등록번호 : 220-12-34567</li>
                    <li class="footer_info_item">통신판매업신고 : 제2023-서울역삼-601호</li>
                    <br/>
                    <small class="footer_info_notice">(재)한걸음은 프로젝트의 당사자가 아니므로, 프로젝트 진행 및 거래 등에 대한 책임은 해당 프로젝트의 개설자에게 있습니다.</small>
                    <div class="footer_info_copyright"><a href="/Hangeulum/" class="footer_info_naver"><img src="/Hangeulum/image/logo1.png" width="70" height="45" alt="한걸음"></a> Copyright &copy; StepWithUs Corp. All Rights Reserved.</div>
                </ul>
            </div>
        </div>
    </div>
</div>
		
</div> <!-- 전체 영역 끝 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script type="text/javascript" src="/Hangeulum/js/fun_main.js"></script>
</body>
</html>