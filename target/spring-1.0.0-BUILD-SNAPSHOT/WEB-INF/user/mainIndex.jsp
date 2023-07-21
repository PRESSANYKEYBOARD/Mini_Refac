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

    <link rel="stylesheet" href="/Hangeulum/user/css/maintest2.css">
</head>
<body>

<input type="hidden" value="${userid}" id="kakao_email" name="kakao_email"/>

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
    
            <div class="header-r" id="header-r" name ="header-r">
                <a href="/Hangeulum/user/loginForm" class="login_btn">로그인</a>
                <span class="header-bar"></span>
                <a href="#" class="search_btn">
                    <img src="/Hangeulum/image/enlargement.png" alt="enlargement.png">
                </a>
            </div>
            
            <!-- 테스트 -->
            <div class="header-r" id="header-r-2" name ="header-r-2">
                ${userid}님 로그인
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
      <img class="slide1" src="./images/exam10.jpg"  alt="..." >
    </div>

    <div class="carousel-item">
      <img class="slide1" src="./images/exam11.jpg" alt="...">
    </div>

    <div class="carousel-item">
      <img class="slide1" src="./images/exam12.jpg"  alt="...">
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
        <div class="row">
          <div class="col-md-4 col-sm-6" > <!--  중간크기 화면까지는 제대로 3개씩 보여줌 보이다가 더 작은 화면에서는 사진이 1개로 보여짐 //모든 div를 이거로 바꿔줘야함//화면의 너비에 따라 바꿔주면 됨 -->
            <div onclick="cardclick()" class="card" style="width: 18rem;">
           <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
              <div class="card-body">
                <h5 class="card-title">123</h5>
                <p class="card-text">bfojpindjopenjdfopjfenbopjfjnboprjfngrbjp</p>
                   <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:27%;"></span>
                  </div>
                  
                  <strong class="donation_percent">
                  	34
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  
                  <!--  -->
                 </div>
            </div>
            </div>
          <!-- *************************  -->
          <div class="col-md-4 col-sm-6">
           <div class="card" style="width: 18rem;">
        <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
           <div class="card-body">
             <h5 class="card-title">제목</h5>
             <p class="card-text">내용</p>
                <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:27%;"></span>
                  </div>
                  
                  <strong class="donation_percent">
                  	34
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  
                  <!--  -->
              </div>
         </div>
         </div>
          <!-- *************************   반응형으로 크기에 따라 사진이 자동 조절되어서 보임--> 
          <div class="col-md-4 col-sm-6"> 
           <div class="card" style="width: 18rem;">
        <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
           <div class="card-body">
             <h5 class="card-title">제목</h5>
             <p class="card-text">내용</p>
               <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:27%;"></span>
                  </div>
                  
                  <strong class="donation_percent">
                  	34
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  
                  <!--  -->
           </div>

         </div>
         </div>
		
		

		<!-- 펀딩텍스트 -->
		<div class="fundingtext">
		
		<a href="#"><p>소셜벤처를 먼저 만나는 펀딩></p></a>
	
		</div>
	
	
	<!-- test -->
		 <div class="container text-center">
		<div class="row">
	
          <!-- *************************  -->
          <div class="col-md-4 col-sm-6">
            <div class="card" style="width: 18rem;">
         <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
            <div class="card-body">
              <h5 class="card-title">제목</h5>
              <p class="card-text">내용</p>
                <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:27%;"></span>
                  </div>
                  
                  <strong class="donation_percent">
                  	34
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  
                  <!--  -->
               </div>
          </div>
          </div>
          
             <!-- *************************  -->
             <div class="col-md-4 col-sm-6">
                <div class="card" style="width: 18rem;">
             <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
                <div class="card-body">
                  <h5 class="card-title">제목</h5>
                  <p class="card-text">내용</p>
                    <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:27%;"></span>
                  </div>
                  
                  <strong class="donation_percent">
                  	34
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  
                  <!--  -->
                   </div>
              </div>
              </div>

                 <!-- *************************  -->
          <div class="col-md-4 col-sm-6">
           <div class="card" style="width: 18rem;">
         <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
           <div class="card-body">
              <h5 class="card-title">제목</h5>
              <p class="card-text">123</p>
                  <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:27%;"></span>
                  </div>
                  
                  <strong class="donation_percent">
                  	34
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  
                  <!--  -->
                
               </div>
               
          </div>
          </div>

</div>
</div>	



             <!-- *************************  -->
             <div class="col-md-4 col-sm-6">
                <div class="card" style="width: 18rem;">
                
             
             <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
               
                <div class="card-body">
                  <h5 class="card-title">123456</h5>
                  <p class="card-text"></p>
                     <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:80%;"></span>
                  </div>
                  
                
                  <strong class="donation_percent">
                  	50
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  </div>
                  <!--  -->
                   
              </div>
              </div>

                 <!-- *************************  -->
          <div class="col-md-4 col-sm-6">
            <div class="card" style="width: 18rem;">
         <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
            <div class="card-body">
              <h5 class="card-title">제목</h5>
              <p class="card-text">내용</p>
                 <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:27%;"></span>
                  </div>
                  
                  <strong class="donation_percent">
                  	34
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  
                  <!--  -->
               </div>
          </div>
          </div>

             <!-- *************************  -->
             <div class="col-md-4 col-sm-6">
                <div class="card" style="width: 18rem;">
             <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
                <div class="card-body">
                  <h5 class="card-title">제목</h5>
                  <p class="card-text">내용</p>
                     <!--progress-->
                  <div class="progress" aria-label="모금률">
                  	<span class="progress_bar" style="width:27%;"></span>
                  </div>
                  
                  <strong class="donation_percent">
                  	34
                 	%
                  </strong>
                  
                  <strong class="donationcard_text">
                   2,725,000원
                  </strong>
                  
                  <!--  -->
                   </div>
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
					<span class="donation-status-point">
						<span>4,981,000</span>
					</span>
					"원"
				</dd>
			
			
			</div>
			<div class="donation-status-item-1">
				<dt class="donation-status-term">펀딩 참여</dt>
					<dd class="donation-status-data">
					<span class="donation-status-point">
						<span>22</span>
					</span>
					"명"
				</dd>
				
			
			</div>
			<div class="donation-status-item-1">
			
			<dt class="donation-status-term">참여 금액</dt>
					<dd class="donation-status-data">
					<span class="donation-status-point">
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
                    <br/>
                    <small class="footer_info_notice">(재)한걸음은 프로젝트의 당사자가 아니므로, 프로젝트 진행 및 거래 등에 대한 책임은 해당 프로젝트의 개설자에게 있습니다.</small>
                    <div class="footer_info_copyright"><a href="/Hangeulum/" class="footer_info_naver"><img src="/Hangeulum/image/logo1.png" width="70" height="45" alt="한걸음"></a> Copyright &copy; StepWithUs Corp. All Rights Reserved.</div>
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

function cardclick(){
	location.href="loginForm.jsp";
}

</script>


</body>
</html>