<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"
        integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
        integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous">
    </script>

    <link rel="stylesheet" href="/Hangeulum/css/maintest2.css">
</head>
<body>

<input type="hidden" value="${userid}" id="kakao_email" name="kakao_email"/>

<!--Header Start-->
<div>
    <div id="header">
        <div class="headerContent">
            <div class="logo"><a href ="#"></a></div>
            <img src="/Hangeulum/image/한걸음로고.png" alt="로고" width="250" height="60">
            <div class="menu">
                <ul>
                    <li><a href="/Hangeulum/donation/dona_main">기부</a></li>
                    <li><a href="/Hangeulum/funding/fun_main">펀딩</a></li>
                    <li><a href="">고객센터</a></li>
                </ul>
            </div>
    
            <div class="header-r" id="header-r" name ="header-r">
                <a href="/Hangeulum/user/loginForm" class="login_btn">로그인</a>
                <span class="header-bar"></span>
                <a href="#" class="search_btn">
                    <img src="/Hangeulum/image/funmain_image/enlargement.png" alt="enlargement.jpg">
                </a>
            </div>
            
            <!-- 테스트 -->
            <div class="header-r" id="header-r-2" name ="header-r-2">
                <a href="/Hangeulum/user/mypageIndex">${userid}님 로그인</a>
                <span class="header-bar"></span>
             		
                    <img src="${kakao_profile}" width="30" height="30">
               		<br>
               		<a href="/Hangeulum/user/logOut">로그아웃</a>
            </div>
            
            
            
        </div>
    </div>
</div>
<!--Header End-->



<!-- 이미지 슬라이드 -->



<div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
 
 
  <div class="carousel-inner">
  
  	<div class="tmp_for_bg">
    <div class="carousel-item active">
      <img class="slide1" src="/Hangeulum/image/exam10.jpg"  alt="..." >
    </div>
    

   
    <div class="carousel-item">
      <img class="slide1" src="/Hangeulum/image/exam11.jpg" alt="...">
    </div>
    
   
    
   
    <div class="carousel-item">
      <img class="slide1" src="/Hangeulum/image/exam12.jpg"  alt="...">
    </div>
    
    </div>
  </div>
 
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden"></span>
  </button>
</div>





<div id="content2">
    <div class="container">
        <div class="category">
            <ul>    
                <li>
                   <button>#4월의 한걸음</button>
                </li>

                <li>
                   <button>#강릉산불</button>
                </li>
                <li>
                   <button>#기업이랑 기부</button>
                </li>
            
            </ul>
        </div>
    </div>
</div>

<!--donation text -->
<div class="donationtext">
<div class="container">
<p><a href="#">100% 전달하는 기부></a></p>
</div>
</div>


<!-- Grid start  -->
      <!-- Grid는 총 컬럼의 개수가 12개이다 -->
      <div class="container text-center">
      <div class="donation">
        <div class="row">
          
         </div>
         </div>
		</div>
		
		<br><br>

		<!-- 펀딩텍스트 -->
		<div class="fundingtext">
		<div class="container">
		<p><a href="#">소셜벤처를 먼저 만나는 펀딩></a></p>
		</div>
		
	
	
	<!-- test -->
		 <div class="container text-center">
		 <div class="fundingtext">
		<div class="row">
	
          <!-- *************************  -->
         
                
               </div>
               
          </div>
          </div>
</div>

	<br><br>
      <!-- Grid end  -->



	  <!-- status-->

<div class="status-wrap">
	<div class="status-inner">
		<h3 class="status-title">오늘의 참여현황</h3>
		<span class="donation-title">여러분의 응원이 이만큼 모였어요</span>
	
		<dl class="donation-status-list">
			<div class="donation-status-item-1">
				<dt class="donation-status-term">기부참여</dt>
				<dd class="donation-status-data">
					<span class="donation-status-point">
						<span>1,539</span>
					</span>
					"명"
				</dd>
				
			</div>
			<div class="donation-status-item-1">
					<dt class="donation-status-term">기부금액</dt>
					<dd class="donation-status-data">
					<span class="donation-status-money">
						<span>4,981,000</span>
					</span>
					"원"
				</dd>
			
			
			</div>
			<div class="donation-status-item-1">
				<dt class="donation-status-term">펀딩 참여</dt>
					<dd class="donation-status-data">
					<span class="funding-status-point">
						<span>22</span>
					</span>
					"명"
				</dd>
				
			
			</div>
			<div class="donation-status-item-1">
			
			<dt class="donation-status-term">참여 금액</dt>
					<dd class="donation-status-data">
					<span class="funding-status-money">
						<span>1,062,300</span>
					</span>
					"원"
				</dd>
			
			
			
			</div>
		
		</dl>
	
	</div>


</div>

	

<div class="more_btn">
    <div class="container"></div>
</div>







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
                    <br>
                    <small class="footer_info_notice">(재)한걸음은 프로젝트의 당사자가 아니므로, 프로젝트 진행 및 거래 등에 대한 책임은 해당 프로젝트의 개설자에게 있습니다.</small>
                    <div class="footer_info_copyright"><a href="https://www.naver.com/" class="footer_info_naver"><img src="../img/logo1.png" width="70" height="45" alt="한걸음"></a> Copyright &copy; StepWithUs Corp. All Rights Reserved.</div>
                </ul>
            </div>
        </div>
    </div>
</div>


<!--Footer End-->





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="/Hangeulum/js/mainIndex.js"></script>


<script>
$(function(){
	$('#header-r-2').hide();
	
	if($('#kakao_email').val()){
		$('#header-r').hide();
		$('#header-r-2').show();
	}
	else{
		$('#header-r').show();
	}
	
}); 



</script>


</body>
</html>