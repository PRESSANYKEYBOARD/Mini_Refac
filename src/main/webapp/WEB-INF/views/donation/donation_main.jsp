<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>   
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Donation_main</title>
    
     <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
    
    <script src="https://use.fontawesome.com/releases/v6.4.0/js/all.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
        integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous">
    </script>
	
	<link rel="reset" href="/Hangeulum/css/styleReset.css" />
    <link rel="stylesheet" href="/Hangeulum/css/donation_main.css" />
    
	<style>
		/*a tag 전역 설정*/
		a {text-decoration: none;}
	</style>    
</head>

<body>

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
                    <img src="/Hangeulum/image/enlargement.png" alt="enlargement.png">
                </a>
            </div>
        </div>
    </div>
</div>

<%--End Header--%>

<%--For Header Height--%>
<div style="padding-top: 70px;"></div>

<%--Start SubHeader--%>

<!-- 메뉴바2 -->
<div class="headerSub">
	<a href="/Hangeulum/donation/donation_ing" class="headerSubSpan" style="color: #00ab33; font-weight: 700;">진행중 모금함</a>
	<a href="" class="headerSubSpan">모금 후기</a>
</div>

<div id="test11" style="background: green;"></div>

<!-- 카테고리 -->
<input type="hidden" id="childrenViewSearch" value="아동">
<input type="hidden" id="adultViewSearch" value="어르신">
<input type="hidden" id="disabledViewSearch" value="장애인">

<!-- 카테고리 -->
<div id="content2">
  <div class="container">
    <div class="category">
      <ul>
      	<li>
      	  <a class="category-link-total" href="#">
      	    <span id="category-1"></span>
      	    <div class="icon-bg icon-bg-total">
      	      <i class="fas fa-heart fa-3x"></i>
      	    </div>
      	    <p class="testPtag">전체 보기</p>
      	  </a>
      	 </li>
      	 <li>
      	  <a class="category-link-child" href="#" data-category="2">
      	    <span id="category-2"></span>
      	    <div class="icon-bg icon-bg-child">
      	      <i class="fas fa-child fa-3x"></i>
      	    </div>
      	    <p class="child">아동</p>
      	  </a>
      	 </li>
      	 <li>
      	  <a class="category-link-adult" href="#" data-category="3">
      	    <span id="category-3"></span>
      	    <div class="icon-bg icon-bg-adult">
      	      <i class="fa-solid fa-person-cane fa-3x"></i>
      	    </div>
      	    <p class="adult">어르신</p>
      	  </a>
      	 </li>
      	 <li>
      	  <a class="category-link-disabled" href="#" data-category="4">
      	    <span id="category-4"></span>
      	    <div class="icon-bg icon-bg-disabled">
      	      <i class="fa-solid fa-wheelchair-move fa-3x"></i>
      	    </div>
      	    <p class="disabled">장애인</p>
      	  </a>
      	</li>
      </ul>
    </div>
  </div>
</div>

<!-- 오늘의 모금함  -->

<div id="apply">
    <div class="container">
        <div class="left_cont">
            <span class="smallbox">TODAY</span>
            <h2>오늘 함께한 기부금</h2>
        </div>
        <div class="right_cont">
            <div class="donation_line">
                <p class="donation-item">
		          <span class="people">10,678<small class="unit">명이</small></span>
		        </p>
		        <p class="donation-item">
		          <span class="amount">58,009,000<small class="unit">원을</small></span>
                </p>
                <p class="donation-item">기부하였습니다.</p>
            </div>
        </div>
    </div>
</div>

<!-- 진행 중 모금함 -->
<div role="main" id="main_content" class="main_content">
  <div class="content_header"> <!-- 추가: content_header 클래스 -->
    <h4 class="content_category">
      모금함
      <span class=collection_box_cnt id="donacount"></span>
      개
    </h4>
    
	<div class="dropdown">
	  <label for="selectbox"></label>
	  <select id="selectbox">
	    <option value="option">추천 순</option>
	    <option value="option">최신 순</option>
	    <option value="option">모금액 많은 순</option>
	    <option value="option">모금액 적은 순</option>
	    <option value="option">모금률 높은 순</option>
	    <option value="option">종료 임박 순</option>
	  </select>
	</div>
	<button id="donae_writeButton" class="write-btn">글쓰기</button> <!-- 글쓰기 버튼 추가 -->
  </div> <!-- content_header 끝 -->

	<div class="container-card">
	  <div class="card-container">
	    <!-- 카드 예시 -->
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
	</div>

</div>

    <!-- 더보기 버튼  -->
    <div class="container">
        <div class="more_btn">더보기
        	<a href="#" id="load"></a>
        </div>
    </div>

	<script>
		    $(function(){
		  var cards = $("div.card"); // 모든 카드 요소를 가져옴
		  var numToShow = 2; // 한번에 보여줄 갯수
		  var numMore = 3; // 더 보여줄 갯수
		
		  // 초기 카드 요소를 보여줌
		  cards.slice(0, numToShow).show();
		
		  // 더보기 버튼 클릭시 실행될 함수
		  $("a#load").click(function(e){
		    e.preventDefault();
		
		    // 남아있는 카드 갯수가 더 보여줄 갯수보다 작을 경우, 모든 카드 요소를 보여줌
		    if(cards.filter(":hidden").length <= numMore){
		      cards.filter(":hidden").show();
		      $(this).remove(); // 더보기 버튼을 제거함
		    }
		    // 더 이상 보여줄 카드 요소가 없을 경우, 클릭 이벤트를 제거하고 알림창을 띄움
		    else if(cards.filter(":hidden").length == 0){
		      alert("게시물의 끝입니다.");
		      $(this).off("click");
		    }
		    else {
		      // 더 보여줄 카드 요소를 선택하고 보여줌
		      cards.filter(":hidden").slice(0, numMore).show();
		    }
		  });
		});
		    </script>
		    
		    
  
    
    
   <!--  <script type="text/javascript">
    $(function() {
    	  var cards = $('.card');
    	  var numToShow = 1; // 한번에 보여줄 갯수
    	  var numMore = 1; // 더 보여줄 갯수
    	  
    	  cards.slice(numToShow).hide();
    	  
    	  $('#load').click(function(e) {
    	    e.preventDefault();
    	    cards.filter(':hidden').slice(0, numMore).show();
    	    if (cards.filter(':hidden').length === 0) {
    	      $('#load').fadeOut('slow');
    	    }
    	  });
    	});
    </script> -->
 
 
 
<!--     <script>

/*     var numShownCards = 0;
    var numHiddenCards = numTotalCards - numShownCards;
 */
        $(function(){
            $("div.card").slice(0, 6).show(); // 초기갯수
            $("#load").click(function(e){ // 클릭시 more
                e.preventDefault();
                $("div.card:hidden").slice(0, 3).show(); // 클릭시 more 갯수 지정
                    if($("div.card:hidden").length <= 0){ // 컨텐츠 남아있는지 확인
                    alert("게시물의 끝입니다."); // 컨텐츠 없을시 alert 창 띄우기 
                }
            });
        });
        </script> -->

     <!--Footer-->
<div class="footer">
    <div class="footer_menu">
        <!--<div class="footer_menu_left"></div>-->
        <div class="footer_menu_right">
            <ul>
                <li style="font-weight: 700; color: #202020; padding-right: 25px;">한걸음 안내</a></li>
                <li><a href="">공지사항</a></li>|&nbsp;&nbsp;
                <li><a href="">이용약관</a></li>|&nbsp;&nbsp;
                <li><a href="">고객센터</a></li>|&nbsp;&nbsp;
                <li><a href="">기업제휴 문의</a></li>|&nbsp;&nbsp;
                <li><a href="">FAQ</a></li>
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


<!--Footer End-->

 <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
 <script type="text/javascript" src="/Hangeulum/js/donation_main.js"></script> <!-- -->
  <script type="text/javascript" src="/Hangeulum/js/donation_main_cate.js"></script>




</body>
</html>